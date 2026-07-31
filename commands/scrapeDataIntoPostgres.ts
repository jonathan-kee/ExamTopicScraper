import * as schema from '../modules/schema/index.js'
import * as browser from '../modules/browser/index.js'
import * as db from '../modules/db/index.js'
import { Page } from 'puppeteer';

// What is the order of the SQL Files loaded?
// 1) scrapeDataIntoPostgres()'s       result                         uses docker_pg_seq_schema.sql
// 2) scrapeDataIntoPostgres()'s       Question, Answers, Answers     uses docker_pg_schema.sql
// 3) reusepage()'s                    questionslink                  uses docker_pg_scraper.sql
// 4) reusepage()'s                    increment                      uses docker_pg_seq_schema.sql

// There are dependencies for this function, need to run SQL in this order
// 1) docker_pg_scraper.sql
// 2) docker_pg_seq_scraper.sql
// 3) Scrape the questions link first.
// 4) docker_pg_schema.sql
// 5) docker_pg_seq_schema.sql
let scrapeDataIntoPostgres = async () => {
    console.log("Starting test");

    let genericExam = process.argv[2] // '1z0-071'

    // same lambda()
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
        let question = await schema.Question.create(page, i, genericExam);
        console.log(question);
        await schema.Question.insert(question);

        // Answers
        let answers = []
        try {
            answers = await schema.Answer.create(page, i, genericExam);
        } catch (error) {
            console.log("cannot find answers")
            answers = await schema.Answer.newCreate(page, i, genericExam);
        }

        for (let i = 0; i < answers.length; i++) {
            console.log(answers[i]);
            await schema.Answer.insert(answers[i]);
        }

        // Discussions
        let discussions = await schema.Discussion.create(page, i, genericExam);
        for (let i = 0; i < discussions.length; i++) {
            console.log(discussions[i]);
            await schema.Discussion.insert(discussions[i]);
        }
    }

    // same lambda()
    const result = await db.DatabaseManager.executeQuery("SELECT last_value FROM seq_questions;")
    let sequenceLastValue: number = result.rows[0].last_value;
    await browser.BrowserManager.manageBrowserAndPage("http://127.0.0.1:9222", sequenceLastValue, scrapeDataLambda);
}

scrapeDataIntoPostgres()