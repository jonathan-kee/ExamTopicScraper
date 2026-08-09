CREATE OR REPLACE TABLE file_missing_answers_link AS
select * from stg_findMissingAnswersLink
order by number; 