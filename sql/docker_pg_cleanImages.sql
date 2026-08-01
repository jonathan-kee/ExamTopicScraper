CREATE OR REPLACE VIEW relative_path_questions AS
with relative_path_questions as (
        SELECT
            number,
            exam,
            regexp_replace(
        text,
        'https?://[^/\s'']+/[^\s'']+/([^\s'']+\.[^\s'']+)',
        '
![](../images/\1)
		',
        'g'
    ) as text
        from questions
)
select * from relative_path_questions;

CREATE OR REPLACE VIEW relative_path_answers AS
with relative_path_answers as (
        SELECT
            number,
            question_number,
            question_exam,
            regexp_replace(
        text,
        'https?://[^/\s'']+/[^\s'']+/([^\s'']+\.[^\s'']+)',
        '
![](../images/\1)
		',
        'g'
    ) as text,
            is_correct
        from answers
),
clean_dirty_relative_path_answers as (
        SELECT
            number,
            question_number,
            question_exam,
            CASE 
    WHEN text LIKE '%pngMost%' THEN 
      REPLACE(REPLACE(text, 'pngMost', 'png'), 'Voted', '')
    ELSE 
      text
  END AS text,
            is_correct
        from relative_path_answers
)
select * from clean_dirty_relative_path_answers;