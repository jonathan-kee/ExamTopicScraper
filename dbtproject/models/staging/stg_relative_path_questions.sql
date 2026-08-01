WITH relative_path_questions as (
        SELECT
            number,
            exam,
            text,
            regexp_replace(
        text,
        '/assets/media/[^ ]+/([^ /]+)',
        '
![](../../images/\1)
		',
        'g'
    ) as text
        from {{source('exam_topic sources','questions')}}
        where exam = '1z0-071'
)
select * from relative_path_questions
