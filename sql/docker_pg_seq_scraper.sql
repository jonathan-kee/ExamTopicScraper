-- Run this after docker_pg_scraper.sql --

CREATE SEQUENCE seq_questionsLink START WITH 1 INCREMENT BY 1;
SELECT last_value FROM seq_questionsLink;
SELECT nextval('seq_questionsLink') as next_value;

-- INSERT INTO questionsLink (number, exam, link) 
-- VALUES ((SELECT last_value FROM seq_questionsLink), 'test exam', 'test link');