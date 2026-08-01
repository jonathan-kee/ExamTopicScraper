CREATE DATABASE exam_topic OWNER postgres;

SELECT current_database();
CREATE SCHEMA IF NOT EXISTS scrape;

CREATE TABLE scrape.questionsLink (
    number INT,
    exam TEXT NOT NULL,
    link TEXT,
    CONSTRAINT question_pk PRIMARY KEY (number, exam)
);

CREATE SEQUENCE scrape.seq_questionsLink START WITH 1 INCREMENT BY 1;
SELECT last_value FROM scrape.seq_questionsLink;
SELECT nextval('scrape.seq_questionsLink') as next_value;


-- Run this first before docker_pg_seq_schema.sql --

CREATE TABLE scrape.companies
(
    name TEXT,
    CONSTRAINT company_pk PRIMARY KEY (name)
);

INSERT INTO scrape.companies (name) VALUES ('Oracle');

CREATE TABLE scrape.exams
(
    name TEXT,
    company TEXT NOT NULL,
    CONSTRAINT exam_pk PRIMARY KEY (name),
    CONSTRAINT exam_company_fk FOREIGN KEY (company) REFERENCES scrape.companies(name) ON DELETE CASCADE
);

INSERT INTO scrape.exams (name, company) VALUES ('1z0-071', 'Oracle');

CREATE TABLE scrape.questions
(
    number INT,
    exam TEXT NOT NULL,
    text TEXT,
    CONSTRAINT question2_pk PRIMARY KEY (number, exam),
    CONSTRAINT question2_exam_fk FOREIGN KEY (exam) REFERENCES scrape.exams(name) ON DELETE CASCADE
);

CREATE TABLE scrape.answers
(
    number INT,
    question_number INT NOT NULL,
    question_exam TEXT NOT NULL,
    text TEXT,
    is_correct BOOLEAN,
    CONSTRAINT answer_pk PRIMARY KEY (number, question_number, question_exam),
    CONSTRAINT answer_question_fk FOREIGN KEY (question_number, question_exam)
        REFERENCES scrape.questions(number, exam) ON DELETE CASCADE
);

CREATE TABLE scrape.discussions
(
    number INT,
    question_number INT NOT NULL,
    question_exam TEXT NOT NULL,
    selected_answer TEXT,
    text TEXT,
    upvote INT,
    CONSTRAINT discussion_pk PRIMARY KEY (number, question_number, question_exam),
    CONSTRAINT discussion_question_fk FOREIGN KEY (question_number, question_exam)
        REFERENCES scrape.questions(number, exam) ON DELETE CASCADE
);

-- Run this after docker_pg_schema.sql --

CREATE SEQUENCE scrape.seq_questions START WITH 1 INCREMENT BY 1;
SELECT last_value FROM scrape.seq_questions;
SELECT nextval('scrape.seq_questions') as next_value;


CREATE SEQUENCE scrape.seq_imagesLink START WITH 1 INCREMENT BY 1;
SELECT last_value FROM scrape.seq_imagesLink;
SELECT nextval('scrape.seq_imagesLink') as next_value;