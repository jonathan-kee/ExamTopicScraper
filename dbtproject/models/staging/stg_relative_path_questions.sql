WITH relative_path_questions as (
        SELECT
            number,
            exam,
            regexp_replace(
        text,
        'https?://[^/\s'']+/[^\s'']+/([^\s'']+\.[^\s'']+)',
        '
![](../../images/\1)
		',
        'g'
    ) as text
        from {{source('exam_topic sources','questions')}}
        where exam = '1z0-071'
)
select * from relative_path_questions
