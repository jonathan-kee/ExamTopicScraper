import * as schema from '../modules/schema/index.js'
import * as browser from '../modules/browser/index.js'
import * as db from '../modules/db/index.js'
import { Page } from 'puppeteer';

// The number it input is wrong, but it might not matter
// There are dependencies for this function, need to run SQL in this order:
// 1) docker_pg_findMissingAnswers.sql
// 2) docker_pg_schema.sql
let rescrapeDataMissingAnswers = async () => {
    const scrapeDataLambda = async (page: Page, questionsnumber: number) => {
        // 2. Fast popup check (1.5s timeout instead of 30s)
        try {
            const popup = await page.waitForSelector('.popup-overlay.show', { timeout: 5000 });
            if (popup) {
                console.log("Popup detected");
                await page.evaluate(() => {
                    const el = document.querySelector('.popup-overlay.show');
                    if (el) {
                        el.className = 'popup-overla show';
                    }
                });
            }
        } catch {
            console.log("Popup not detected");
        }

        
        // Browserless not detected
        // try {
        //     await page.locator('.load-full-discussion-button').wait();
        //     console.log("Load Discussions button detected");
        //     await page.locator('.load-full-discussion-button').click();
        //     console.log("clicked load Discussions button");
        //     // Wait for load discussion to finish
        //     await new Promise(resolve => setTimeout(resolve, 5000));
        // } catch (error) {
        //     console.log("Load Discussions button not detected");
        // }

        let genericExam = process.argv[2]
        
        // Answers
        let answers = []
        try {
            answers = await schema.Answer.create(page, questionsnumber, genericExam);
        } catch (error) {
            console.log("cannot find answers")
            answers = await schema.Answer.newCreate(page, questionsnumber, genericExam);
        }

        for (let i = 0; i < answers.length; i++) {
            await schema.Answer.merge(answers[i]);
        }
    }

    let genericExam = process.argv[2] // '1z0-071'
    const result = await db.DatabaseManager.executeQuery(`select number, link from scrape."stg_findMissingAnswersLink" where exam = '` + genericExam + `';` )

    let browerToClose = null;
    for (let i = 0; i < (result.rowCount ?? 0); i++) {
        const questionsNumber = result.rows[i].number
        const questionsLink = result.rows[i].link
        browerToClose = await browser.BrowserManager.manageBrowserAndPageOverload('http://127.0.0.1:9222', questionsLink, questionsNumber, scrapeDataLambda);
    }
    
    // @ts-ignore
    browerToClose.close()
}

rescrapeDataMissingAnswers()