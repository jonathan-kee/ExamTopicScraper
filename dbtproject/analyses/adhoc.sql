CREATE TABLE scrape.file_missing_answers_link AS
select * from scrape."stg_findMissingAnswersLink"
order by number;