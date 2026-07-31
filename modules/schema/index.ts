import puppeteer, {  Page, PuppeteerError, TimeoutError } from 'puppeteer';
import * as db from '../db/index.js'

export class Question {
    private _number: number
    private _exam: string
    private _text: string
    private constructor(number: number, exam: string, text: string) {
        this._number = number;
        this._exam = exam;
        this._text = text;
    }

    public get number(): number {
        return this._number;
    }

    public get exam(): string {
        return this._exam;
    }

    public get text(): string {
        return this._text;
    }

    public static async create(page: Page, number: number, exam: string): Promise<Question> {
        const element = await page.waitForSelector('::-p-xpath(/html/body/div[2]/div/div[4]/div/div[1]/div[2]/p)');
        let arrayOfText = await element?.evaluate(el => {
            let answer = [];
            for (let i = 0; i < el.childNodes.length; i++) {
                // @ts-ignore
                if (el.childNodes[i].nodeName === 'IMG') answer.push(el.childNodes[i].src);
                else answer.push(el.childNodes[i].textContent?.trim());
            }
            return answer;
        });
        const result = arrayOfText?.filter(str => str !== '').join('\n');
        console.log(result);
        return new Question(number, exam, result ?? 'null');
    }

    public static async insert(question: Question) {
        console.log("Inserting Question")

        const query = `
INSERT INTO questions
    (number, exam, text)
VALUES ($1, $2, $3);
`;

        const values = [
            question.number,
            question.exam,
            question.text
        ];

        let result = null;
        try {
            result = await db.DatabaseManager.executeQuery(query, values);
        } catch {
            console.log("Missing exams insertion data")
            throw Error("Missing exams insertion data");
        }

        console.log(result);
    }
}

export class Answer {
    private _number: number
    private _questionNumber: number
    private _questionExam: string
    private _text: string
    private _isCorrect: boolean
    private constructor(number: number, questionNumber: number, questionExam: string, text: string, isCorrect: boolean) {
        this._number = number;
        this._questionNumber = questionNumber;
        this._questionExam = questionExam;
        this._text = text;
        this._isCorrect = isCorrect;
    }

    public get number(): number {
        return this._number;
    }

    public get questionNumber(): number {
        return this._questionNumber;
    }

    public get questionExam(): string {
        return this._questionExam;
    }

    public get text(): string {
        return this._text;
    }

    public get isCorrect(): boolean {
        return this._isCorrect;
    }

    public static async create(page: Page, questionNumber: number, questionExam: string): Promise<Answer[]> {
        let list: Answer[] = [];
        const questionsElement = await page.waitForSelector('::-p-xpath(/html/body/div[2]/div/div[4]/div/div[1]/div[2]/div[2]/ul)')
        const questionsChildNodesLength = await questionsElement?.evaluate(el => el.childElementCount);
        if (questionsChildNodesLength !== undefined) {
            for (let i = 1; i <= questionsChildNodesLength; i++) {
                const element = await page.waitForSelector('::-p-xpath(/html/body/div[2]/div/div[4]/div/div[1]/div[2]/div[2]/ul/li[' + i + '])');
                let answer = await element?.evaluate(el => {
                    let answer = '';
                    for (let i = 0; i < el.childNodes.length; i++) {
                        if (el.childNodes[i].nodeName === 'IMG') {
                            // @ts-ignore
                            answer += el.childNodes[i].src;
                        } else {
                            answer += el.childNodes[i].textContent?.trim()
                        }
                    }
                    return answer;
                });
                console.log(answer);

                let answerObj = new Answer(i, questionNumber, questionExam, answer ?? 'null', answer?.includes("Most Voted") ?? false);
                list.push(answerObj);
            }
        }
        return list;
    }

    public static async newCreate(page: Page, questionNumber: number, questionExam: string): Promise<Answer[]> {
        const element = await page.waitForSelector('::-p-xpath(/html/body/div[2]/div/div[4]/div/div[1]/div[2]/p)');
        let arrayOfText = await element?.evaluate(el => {
            let answer = [];
            for (let i = 0; i < el.childNodes.length; i++) {
                // @ts-ignore
                if (el.childNodes[i].nodeName === 'IMG') answer.push(el.childNodes[i].src);
                else answer.push(el.childNodes[i].textContent?.trim());
            }
            return answer;
        });

        // Check A, B, C, D
        let answerList: Answer[] = [];
        const resultList = arrayOfText?.filter(str => str !== '');
        if (resultList !== undefined) {
            for (let i = 0; i < resultList.length; i++) {
                let element: string = resultList[i]
                console.log(element);
                switch (element) {
                    case 'A.': {
                        let answer = 'A. ' + resultList[i + 1];
                        console.log(answer);
                        let answerObj = new Answer(i, questionNumber, questionExam, answer ?? 'null', answer?.includes("Most Voted") ?? false);
                        answerList.push(answerObj);
                        i++;
                        continue;
                    }
                    case 'B.': {
                        let answer = 'B. ' + resultList[i + 1];
                        console.log(answer);
                        let answerObj = new Answer(i, questionNumber, questionExam, answer ?? 'null', answer?.includes("Most Voted") ?? false);
                        answerList.push(answerObj);
                        i++;
                        continue;;
                    }
                    case 'C.': {
                        let answer = 'C. ' + resultList[i + 1];
                        console.log(answer);
                        let answerObj = new Answer(i, questionNumber, questionExam, answer ?? 'null', answer?.includes("Most Voted") ?? false);
                        answerList.push(answerObj);
                        i++;
                        continue;;
                    }
                    case 'D.': {
                        let answer = 'D. ' + resultList[i + 1];
                        console.log(answer);
                        let answerObj = new Answer(i, questionNumber, questionExam, answer ?? 'null', answer?.includes("Most Voted") ?? false);
                        answerList.push(answerObj);
                        i++;
                        continue;
                    }
                    default: continue;
                }
            }
        }
        return answerList;
    }

    public static async insert(answer: Answer) {
        console.log("Inserting Answer")

        const query = `
INSERT INTO answers
    (number, question_number, question_exam, text, is_correct)
VALUES ($1, $2, $3, $4, $5);
`;

        const values = [
            answer.number,
            answer.questionNumber,
            answer.questionExam,
            answer.text,
            answer.isCorrect
        ];

        let result = null;
        try {
            result = await db.DatabaseManager.executeQuery(query, values);
        } catch {
            console.log("Missing questions insertion data")
            throw Error("Missing questions insertion data");
        }
        console.log(result);
    }

    public static async merge(answer: Answer) {
        console.log("merge Answer")

        const oldQuery = `
MERGE INTO answers
USING (
SELECT CAST($1 AS integer) AS number, CAST($2 AS integer) AS question_number, CAST($3 AS text) AS question_exam, CAST($4 AS text) AS text, CAST($5 AS boolean) AS is_correct
) AS src
ON answers.number = src.number AND answers.question_number = src.question_number AND answers.question_exam = src.question_exam 
WHEN MATCHED THEN
    UPDATE SET text = src.text, is_correct = src.is_correct
WHEN NOT MATCHED THEN
    INSERT (number, question_number, question_exam, text, is_correct) VALUES (src.number, src.question_number, src.question_exam, src.text, src.is_correct); 
        `

        const newQuery = `
MERGE INTO answers AS dst
USING (
    SELECT 
        $1::integer AS number, 
        $2::integer AS question_number, 
        $3::text    AS question_exam, 
        $4::text    AS text, 
        $5::boolean AS is_correct
) AS src
ON dst.number = src.number 
   AND dst.question_number = src.question_number 
   AND dst.question_exam = src.question_exam 
WHEN MATCHED THEN
    UPDATE SET 
        text = src.text, 
        is_correct = src.is_correct
WHEN NOT MATCHED THEN
    INSERT (number, question_number, question_exam, text, is_correct) 
    VALUES (src.number, src.question_number, src.question_exam, src.text, src.is_correct);
    `;

        const values = [
            answer.number,  // The number is completely wrong
            answer.questionNumber,
            answer.questionExam,
            answer.text,
            answer.isCorrect
        ];

        let result = null;
        try {
            result = await db.DatabaseManager.executeQuery(newQuery, values);
            console.log("Merge result:", result);
        } catch (error) {
            console.error("Failed to merge answer:", error);
            throw error;
        }
        console.log(result);
    }
}

export class Discussion {
    private _number: number
    private _questionNumber: number
    private _questionExam: string
    private _selectedAnswer: string
    private _text: string
    private _upvote: number
    private constructor(number: number, questionNumber: number, questionExam: string, selectedAnswer: string, text: string, upvote: number) {
        this._number = number;
        this._questionNumber = questionNumber;
        this._questionExam = questionExam;
        this._selectedAnswer = selectedAnswer;
        this._text = text;
        this._upvote = upvote;
    }

    public get number(): number {
        return this._number;
    }

    public get questionNumber(): number {
        return this._questionNumber;
    }

    public get questionExam(): string {
        return this._questionExam;
    }

    public get selectedAnswer(): string {
        return this._selectedAnswer;
    }

    public get text(): string {
        return this._text;
    }

    public get upvote(): number {
        return this._upvote;
    }

    // Builder Pattern (Not used)
    static Builder = class {
        private _selectedAnswer: string
        private _text: string
        private _upvote: number

        constructor() {
            this._selectedAnswer = 'null';
            this._text = 'null';
            this._upvote = -1;
        }

        public set selectedAnswer(selectedAnswer: string) {
            this._selectedAnswer = selectedAnswer;
        }

        public set text(text: string) {
            this._text = text;
        }

        public set upvote(upvote: number) {
            this._upvote = upvote;
        }

        build(number: number, questionNumber: number, questionExam: string): Discussion {
            return new Discussion(number, questionNumber, questionExam, this._selectedAnswer, this._text, this._upvote);
        }

    }

    public static async create(page: Page, questionNumber: number, questionExam: string): Promise<Discussion[]> {
        let list: Discussion[] = [];
        const discussionsElement = await page.waitForSelector('::-p-xpath(/html/body/div[2]/div/div[4]/div/div[2]/div[2]/div/div/div[2])')
        const discussionsChildNodesLength = await discussionsElement?.evaluate(el => el.childElementCount);
        if (discussionsChildNodesLength !== undefined) {
            for (let i = 1; i <= discussionsChildNodesLength; i++) {
                const discusstionElement = await page.waitForSelector('::-p-xpath(/html/body/div[2]/div/div[4]/div/div[2]/div[2]/div/div/div[2]/div[' + i + ']/div/div[2])');
                const obj = await discusstionElement?.evaluate(async el => {
                    async function nodeRecursion(el: Element | ChildNode, object: any) {
                        // @ts-ignore
                        if (el.className !== 'comment-replies' && el.hasChildNodes()) {
                            for (let i = 0; i < el.childNodes.length; i++) {
                                await nodeRecursion(el.childNodes[i], object);
                            }
                        }
                        // @ts-ignore
                        if (el.className === 'comment-selected-answers badge badge-warning') {
                            // console.log(el.textContent?.trim());
                            // array.push(el.textContent?.trim());
                            object.selectedAnswer = el.textContent?.trim() ?? 'null';
                        }
                        // @ts-ignore
                        else if (el.className === 'comment-content') {
                            // console.log(el.textContent?.trim());
                            // array.push(el.textContent?.trim());
                            object.text = el.textContent?.trim() ?? 'null';
                        }
                        // @ts-ignore
                        else if (el.className === 'ml-2 upvote-text') {
                            // console.log(el.textContent?.trim());
                            // array.push(el.textContent?.trim());
                            let upvoteText = el.textContent?.trim();
                            let upvote = Number(upvoteText?.split(' ')[1]);
                            object.upvote = upvote;
                        }
                    }

                    let object = {
                        selectedAnswer: 'null',
                        text: 'null',
                        upvote: -1
                    };

                    await nodeRecursion(el, object);
                    return object;
                });
                // console.log(obj);
                let discussion = new Discussion(i, questionNumber, questionExam, obj?.selectedAnswer ?? 'null', obj?.text ?? 'null', obj?.upvote ?? -1);
                list.push(discussion);
            }
        }
        return list;
    }

    public static async insert(discussion: Discussion) {
        console.log("Inserting Discussion")

        const query = `
INSERT INTO discussions
    (number, question_number, question_exam, selected_answer, text, upvote)
VALUES ($1, $2, $3, $4, $5, $6);
`;

        const values = [
            discussion.number,
            discussion.questionNumber,
            discussion.questionExam,
            discussion.selectedAnswer,
            discussion.text,
            discussion.upvote
        ];

        let result = null;
        try {
            result = await db.DatabaseManager.executeQuery(query, values);
        } catch {
            console.log("Missing questions insertion data")
            throw Error("Missing questions insertion data");
        }

        console.log(result);
    }
}