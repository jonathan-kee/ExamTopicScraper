WITH relative_path_answers as (
        SELECT
            number,
            question_number,
            question_exam,
            regexp_replace(
        text,
        'https?://[^/\s'']+/[^\s'']+/([^\s'']+\.[^\s'']+)',
        '
![](../../images/\1)
		',
        'g'
    ) as text,
            is_correct
        from {{source('exam_topic sources','answers')}}
        where question_exam = '1z0-071'
),
clean_assets as (
    SELECT
            number,
            question_number,
            question_exam,
            regexp_replace(
        text,
        '/assets/media/[^ ]+/([^ /]+\.(?:png|jpg|jpeg|gif))',
        '
![](../../images/\1)
		',
        'g'
    ) as text,
    is_correct
        from relative_path_answers
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
        from clean_assets
)
select * from clean_dirty_relative_path_answers