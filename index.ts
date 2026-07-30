import { Page } from 'puppeteer';
import * as db from './modules/db/index.js'
import * as s3 from './modules/s3/index.js'
import * as schema from './modules/schema/index.js'
import * as browser from './modules/browser/index.js'

// What is the order of the SQL Files loaded?
// 1) scrapeData()'s       Question, Answers, Answers     uses docker_pg_schema.sql

// I think no need to increment after using scrapeData(), because this function is mostly just to test a single page
// No need docker_pg_seq_schema.sql

// The function docker not involve scraper sql
// No need docker_pg_scraper.sql
// No need docker_pg_seq_scraper.sql 

// There are dependencies for this function, need to run SQL in this order
// 2) (This functions does need scraping the questions link first)
// 3) docker_pg_schema.sql
// 4) docker_pg_seq_schema.sql
// 5) Run scrapeData()

let scrapeData = async () => {
    console.log("Starting test");

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
        } catch (error) {
            console.log("Load Discussions button not detected");
        }

        console.log('\n');

        // Question
        let question = await schema.Question.create(page, i, '1z0-071');
        console.log(question);

        console.log('\n');

        // Answers
        let answers = await schema.Answer.create(page, i, '1z0-071');
        console.log(answers);

        console.log('\n');

        // Discussions
        // The xpath is dynamic, can only be determined by el.className
        // /html/body/div[2]/div/div[4]/div/div[2]/div[2]/div/div/div[2]/div[1]/div/div[2]/div[1]
        // /html/body/div[2]/div/div[4]/div/div[2]/div[2]/div/div/div[2]/div[1]/div/div[2]/div[2] 

        let discussions = await schema.Discussion.create(page, i, '1z0-071');
        console.log(discussions);

        console.log('\n');
    }

    await browser.BrowserManager.manageBrowserAndPageOverload("http://127.0.0.1:9222",
        'https://www.examtopics.com/discussions/oracle/view/79530-exam-1z0-071-topic-1-question-2-discussion/',
        1,
        scrapeDataLambda);

    console.log('Ending Test');
}

// 1)
// scrapeWebsiteLinksIntoPostgres()

// 2)
// Missing website links 41 to 73
// scrapeWebsiteLinksIntoPostgresHardcode()

// 3)
// scrapeDataIntoPostgres()

// 4)
// Need to run in DataGrip
// docker_pg_scrapeImageTable.sql
// docker_pg_seq_scrapeImage.sql
// scrapeImages()

// 5)
// markdown()

// s3.createBucket("bucket");
s3.uploadFile("bucket","question1","./document/TestDocument");