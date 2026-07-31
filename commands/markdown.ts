import * as db from '../modules/db/index.js'
import * as presentation from '../modules/presentation/index.js'
// There are dependencies for this function, need to run SQL in this order:
// 1) docker_pg_cleanImages.sql (Creates relative_path_questions, relative_path_answers)
// 2) docker_pg_seq_format_markdown.sql

let markdown = async () => {
    let genericExam:string = process.argv[2]; // '1z0-071'
    let genericNumberOfQuestion:number = Number.parseInt(process.argv[3]); // '272'
    
    const result = await db.DatabaseManager.executeQuery("SELECT last_value FROM seq_markdown;")
    let sequenceLastValue: number = result.rows[0].last_value;

    for (let i = sequenceLastValue; i <= genericNumberOfQuestion;) {
        const questionResult = await db.DatabaseManager.executeQuery(`select questions.number , questions.text
from relative_path_questions as questions
where questions.number = ${i}
and questions.exam = '${genericExam}';`);
        const question: string = questionResult.rows[0].text;

        const answerResult = await db.DatabaseManager.executeQuery(`select REPLACE(answers.text, 'Most Voted', '') as text, answers.is_correct
from relative_path_questions as questions
join relative_path_answers as answers 
on answers.question_number = questions.number and
answers.question_exam = questions.exam
where questions.number = ${i}
and questions.exam = '${genericExam}'
order by text`);
        let answerCount = answerResult.rowCount;
        let answers: string[] = [];
        for (let i = 0; i < (answerCount ?? 0); i++) {
            let answer = answerResult.rows[i].text;
            answers.push(answer);
        }

        const discussionResult = await db.DatabaseManager.executeQuery(`select discussions.selected_answer, discussions.text, discussions.upvote
from relative_path_questions as questions
join discussions
on discussions.question_number = questions.number and
discussions.question_exam = questions.exam
where questions.number = ${i}
and questions.exam = '${genericExam}'
order by upvote desc
limit 5;`);

        let discussionCount = discussionResult.rowCount;
        let discussions: string[] = [];
        for (let i = 0; i < (discussionCount ?? 0); i++) {
            let discussion = discussionResult.rows[i].selected_answer;
            discussions.push(discussion);
        }

        let markdown = new presentation.Markdown(genericExam, i, question, answers, discussions);
        markdown.toFile();

        // Increment 
        const result = await db.DatabaseManager.executeQuery("SELECT nextval('seq_markdown') as next_value;")
        let sequenceLastValue: number = result.rows[0].next_value;
        i = sequenceLastValue;
    }

}
markdown()