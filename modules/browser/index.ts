import puppeteer, { Browser, Page, PuppeteerError, TimeoutError } from 'puppeteer';
import * as db from '../db/index.js'
import * as schema from '../schema/index.js'

// Documentation around puppeteer errors 
// https://puppeteer.guide/errors/
// https://puppeteer.guide/posts/handling-navigation-errors/

function randomDelay(min: number, max: number) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

// Todo 
export class BrowserManager {
    /** Single source of truth for browser operations */
    static async manageBrowserAndPage(browserURL: string, lastSequenceNumber: number, genericQuestionNumber: number, scrapeDataLambda: (page: Page, questionNumber: number) => Promise<void>) {
        let browser;
        let page;
        try {
            // One Browser Session
            browser = await puppeteer.connect({ browserURL });
            // One Page Session
            page = await browser.newPage();
            await BrowserManager.reusePage(page, lastSequenceNumber, genericQuestionNumber, scrapeDataLambda);

        } catch (generalError) {
            // handle the error

        } finally {
            // close the page if it was opened
            if (page) {
                await page.close();
            }
            // close the browser if it was opened
            if (browser) {
                await browser.close();
            }
        }
    }

    static async manageBrowserAndPageOverload(browserURL: string, questionsLink: string, questionNumber: number, scrapeDataLambda: (page: Page, questionNumber: number) => Promise<void>) {
        let browser;
        let page;
        try {
            // One Browser Session
            browser = await puppeteer.connect({ browserURL });
            // One Page Session
            page = await browser.newPage();
            await BrowserManager.reusePageOverload(page, questionsLink, questionNumber, scrapeDataLambda);

        } catch (generalError) {
            // handle the error

        } finally {
            // close the page if it was opened
            if (page) {
                await page.close();
            }
            // close the browser if it was opened
            if (browser) {
                // await browser.close();
            }
        }
        return browser;
    }

    static async reusePage(page: Page, lastSequenceNumber: number, genericQuestionNumber:number, scrapeDataLambda: (page: Page, questionNumber: number) => Promise<void>) {
        // Reuse Page Session
        // 272 is not reusable, you get number with max count
        // 272 should be part of the lambda scope since it's the implementation
        for (let i = lastSequenceNumber; i <= genericQuestionNumber;) {
            const questionslinkResult = await db.DatabaseManager.executeQuery(`SELECT link FROM questionslink where number = ${i};`)
            const questionslink: string = questionslinkResult.rows[0].link;

            await BrowserManager.errorHandlingBoilerPlate(page, questionslink);

            // now you can try to perform your actions
            await scrapeDataLambda(page, i);

            // Increment 
            const result = await db.DatabaseManager.executeQuery("SELECT nextval('seq_questions') as next_value;")
            let sequenceLastValue: number = result.rows[0].next_value;
            i = sequenceLastValue;

            // Wait random time between 1min–1min30s
            const delay = randomDelay(33000, 60000);
            console.log(`Waiting ${delay / 1000}s...`)
            await new Promise(resolve => setTimeout(resolve, delay));
        }
    }

    // This function lacks 
    // I will have to properly learn overloading in the future
    static async reusePageOverload(page: Page, questionsLink: string, questionNumber: number, scrapeDataLambda: (page: Page, questionNumber: number) => Promise<void>) {
        await BrowserManager.errorHandlingBoilerPlate(page, questionsLink);

        console.log(`🚀 [SCRAPE START] Processing Question #${questionNumber}...`);
        const startTime = Date.now();

        try {
            await scrapeDataLambda(page, questionNumber);
            const duration = ((Date.now() - startTime) / 1000).toFixed(2);
            console.log(`⏱️ [SCRAPE SUCCESS] Question #${questionNumber} finished in ${duration}s`);
        } catch (error) {
            const duration = ((Date.now() - startTime) / 1000).toFixed(2);
            console.error(`💥 [SCRAPE FAILED] Question #${questionNumber} threw an error after ${duration}s:`, error);
            throw error;
        }
    }


    static async errorHandlingBoilerPlate(page: Page, questionslink: string): Promise<boolean> {
    const startTime = Date.now();
    const TIMEOUT_MS = 5000;

    console.log(`[START] Navigating to: ${questionslink}`);

    let response;
    try {
        response = await page.goto(questionslink, {
            timeout: TIMEOUT_MS,
            waitUntil: "domcontentloaded",
        });
    } catch (error: any) {
        const duration = ((Date.now() - startTime) / 1000).toFixed(2);

        // Check if error is specifically a Puppeteer TimeoutError
        if (error instanceof TimeoutError || error.name === 'TimeoutError') {
            console.warn(`⚠️ [TIMEOUT] Exceeded ${TIMEOUT_MS / 1000}s threshold (took ${duration}s) on: ${questionslink}`);
            return false;
        } 
        
        if (error.message && error.message.includes("net::ERR")) {
            console.error(`❌ [NETWORK ERROR] (${duration}s) - ${error.message} on: ${questionslink}`);
            return false;
        }

        console.error(`💥 [UNEXPECTED ERROR] (${duration}s) on: ${questionslink}`, error);
        throw error;
    }

    const duration = ((Date.now() - startTime) / 1000).toFixed(2);

    // HTTP Status check
    if (response) {
        const status = response.status();
        if (status >= 400) {
            console.warn(`⚠️ [HTTP ${status}] Loaded in ${duration}s (Error status) for: ${questionslink}`);
            return false;
        }
    }

    // Browser Error Page check
    if (page.url().startsWith("chrome-error://")) {
        console.warn(`⚠️ [CHROME ERROR PAGE] Loaded in ${duration}s on: ${questionslink}`);
        return false;
    }

    console.log(`✅ [SUCCESS] Loaded in ${duration}s (HTTP ${response?.status() || 200}): ${questionslink}`);
    return true;
}

    // What is the order of the SQL Files loaded?
    // 1) lambda()'s       result                         uses docker_pg_seq_schema.sql
    // 2) lambda()'s       Question, Answers, Answers     uses docker_pg_schema.sql
    // 3) reusepage()'s    questionslink                  uses docker_pg_scraper.sql
    // 4) reusepage()'s    increment                      uses docker_pg_seq_schema.sql

    // There are dependencies for this function, need to run SQL in this order
    // 1) docker_pg_scraper.sql
    // 2) docker_pg_seq_scraper.sql
    // 3) Scrape the questions link first.
    // 4) docker_pg_schema.sql
    // 5) docker_pg_seq_schema.sql
    // 6) Run lambda()

    static async lambda() {
        const scrapeDataLambda = async (page: Page, i: number) => {
            try {
                console.log("Page loaded");
                await page.locator('.popup-overlay.show').wait();
                console.log("Popup detected");

                // Apparently page.evaluate is like opening up console
                await page.evaluate(() => {
                    const el = document.querySelector('.popup-overlay.show');
                    if (el) {
                        el.className = 'popup-overla show';
                    }
                });
            } catch (error) {
                console.log("Popup not detected");
            }

            try {
                await page.locator('.load-full-discussion-button').wait();
                console.log("Load Discussions button detected");
                await page.locator('.load-full-discussion-button').click();
                console.log("clicked load Discussions button");
                // Wait for load discussion to finish
                await new Promise(resolve => setTimeout(resolve, 5000));
            } catch (error) {
                console.log("Load Discussions button not detected");
            }

            // Question
            let question = await schema.Question.create(page, i, '1z0-071');
            console.log(question);
            await schema.Question.insert(question);

            // Answers
            let answers = []
            try {
                answers = await schema.Answer.create(page, i, '1z0-071');
            } catch (error) {
                console.log("cannot find answers")
                answers = await schema.Answer.newCreate(page, i, '1z0-071');
            }

            for (let i = 0; i < answers.length; i++) {
                console.log(answers[i]);
                await schema.Answer.insert(answers[i]);
            }

            // Discussions
            let discussions = await schema.Discussion.create(page, i, '1z0-071');
            for (let i = 0; i < discussions.length; i++) {
                console.log(discussions[i]);
                await schema.Discussion.insert(discussions[i]);
            }
        }

        const result = await db.DatabaseManager.executeQuery("SELECT last_value FROM seq_questions;");
        let sequenceLastValue: number = result.rows[0].last_value;
        await BrowserManager.manageBrowserAndPage("http://127.0.0.1:9222", sequenceLastValue, 272, scrapeDataLambda);
    }

}