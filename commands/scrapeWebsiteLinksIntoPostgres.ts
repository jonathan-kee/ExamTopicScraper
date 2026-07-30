import {Page} from 'puppeteer';
import * as browser from '../modules/browser/index.js'
import * as db from '../modules/db/index.js'

function randomDelay(min: number, max: number) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

// What is the order of the SQL Files loaded?
// 1) scrapeWebsiteLinksIntoPostgres()'s       result                         uses docker_pg_seq_scraper.sql
// 2) scrapeWebsiteLinksIntoPostgres()'s       insertResult                   uses docker_pg_scraper.sql

// There are dependencies for this function, need to run SQL in this order
// 1) docker_pg_scraper.sql
// 2) docker_pg_seq_scraper.sql
// 3) Run scrapeWebsiteLinksIntoPostgres()

let scrapeWebsiteLinksIntoPostgres = async () => {
    console.log("Start Scraping");
    
    // Need to restart sequence for docker_pg_seq_scraper for new exam
    // ALTER SEQUENCE seq_questionsLink RESTART WITH 1;
    // Label the generic data
    let genericSearch:string = process.argv[2]; // 'examtopics 1z0-"071" Exam question '
    let genericExam:string =  process.argv[3]; // '1z0-071'
    let genericNumberOfQuestions:number = Number(process.argv[4]); //272

    const scrapeDataLambda = async (page: Page, i: number) => {
        let googleSearch = genericSearch + i;
        await page.locator('.gLFyf').wait();
        console.log("Google search input detected");
        await page.locator('.gLFyf').fill(googleSearch);
        console.log("Input Google search input");

        page.keyboard.press('Enter');
        console.log("Clicked enter");

        const element = await page.waitForSelector('::-p-xpath(/html/body/div[3]/div/div[12]/div/div[2]/div[2]/div/div/div[1]/div/div/div/div[1]/div/div/span/a)');
        // @ts-ignore
        const link = await element?.evaluate(el => el.href);
        console.log(link);

        const insertResult = await db.DatabaseManager.executeQuery(`INSERT INTO questionsLink (number, exam, link) 
VALUES ((SELECT last_value FROM seq_questionsLink), '${genericExam}', '${link}');`);
        console.log(insertResult);
    }

    // Below is seq_questionsLink instead of seq_questions, this is fine
    const result = await db.DatabaseManager.executeQuery("SELECT last_value FROM seq_questionsLink;");
    let sequenceLastValue: number = result.rows[0].last_value;

    for (let i = sequenceLastValue; i <= genericNumberOfQuestions;) {
        // I will open and close the browser which is not what I wanted
        await browser.BrowserManager.manageBrowserAndPageOverload("http://127.0.0.1:9222", 'https://www.google.com/', i, scrapeDataLambda);

        // Increment
        // Below is seq_questionsLink instead of seq_questions, this is fine 
        const result = await db.DatabaseManager.executeQuery("SELECT nextval('seq_questionsLink') as next_value;");
        let sequenceLastValue: number = result.rows[0].next_value;
        i = sequenceLastValue;

        // Wait random time between 1min–1min30s
        const delay = randomDelay(61000, 65000);
        console.log(`Waiting ${delay / 1000}s...`)
        await new Promise(resolve => setTimeout(resolve, delay));
    }
}

scrapeWebsiteLinksIntoPostgres()