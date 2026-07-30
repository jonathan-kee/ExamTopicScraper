import * as schema from '../modules/schema/index.js'
import * as browser from '../modules/browser/index.js'
import * as db from '../modules/db/index.js'
import { Page } from 'puppeteer';

// There are dependencies for this function, need to run SQL in this order:
// 1) docker_pg_findMissingAnswers.sql
// 2) docker_pg_schema.sql
let rescrapeDataMissingAnswers = async () => {
    const scrapeDataLambda = async (page: Page, questionsnumber: number) => {
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

        // Answers
        let answers = []
        try {
            answers = await schema.Answer.create(page, questionsnumber, '1z0-071');
        } catch (error) {
            console.log("cannot find answers")
            answers = await schema.Answer.newCreate(page, questionsnumber, '1z0-071');
        }

        for (let i = 0; i < answers.length; i++) {
            console.log(answers[i]);
            await schema.Answer.merge(answers[i]);
        }
    }

    const result = await db.DatabaseManager.executeQuery("select number, link from missing_answers_link;")

    for (let i = 0; i < (result.rowCount ?? 0); i++) {
        const questionsNumber = result.rows[i].number
        const questionsLink = result.rows[i].link
        await browser.BrowserManager.manageBrowserAndPageOverload('http://127.0.0.1:9222', questionsLink, questionsNumber, scrapeDataLambda);
    }
}

rescrapeDataMissingAnswers()