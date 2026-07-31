import fs from "fs";

export class Markdown {
    private exam: string 
    private questionNumber: number
    private question: string
    private answers: string[]
    private discussions: string[]
    constructor(exam:string, questionNumber: number, question: string, answers: string[], discussions: string[]) {
        this.exam = exam;
        this.questionNumber = questionNumber;
        this.question = question; // string is immutable
        this.answers = Array.from(answers); // clone to prevent external modification
        this.discussions = Array.from(discussions); // clone to prevent external modification
    }

    public toString(): string {
        let discussionsString = "";
        for (let i = 0; i < this.discussions.length; i++) {
            discussionsString += "## Discussion " + (i + 1) + "\n" +
                this.discussions[i] + "\n\n";
        }

        return "# Question " + this.questionNumber + "\n" +
            this.question + "\n\n" +
            "# Answers\n" +
            this.answers.join("\n\n") + "\n\n" +
            "# Discussions\n" +
            discussionsString;
    }

    public toFile(): void {
        // Safely creates folder if it doesn't exist
        fs.mkdirSync("./markdowns2/"+ this.exam+ "/", { recursive: true });
        fs.writeFileSync("./markdowns2/"+ this.exam+ "/question" + this.questionNumber + ".md", this.toString());
        console.log("Question, Answers, Discussions saved as " + this.questionNumber + ".md");
    }
}