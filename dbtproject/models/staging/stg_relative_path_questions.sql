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
        where exam = '{{ var("exam") }}'
), 
clean_assets as (
    SELECT
            number,
            exam,
            regexp_replace(
        text,
        '/assets/media/[^ ]+/([^ /]+\.(?:png|jpg|jpeg|gif))',
        '
![](../../images/\1)
		',
        'g'
    ) as text
        from relative_path_questions
)
select * from clean_assets
