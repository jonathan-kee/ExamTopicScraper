WITH image_url_questions AS (
	SELECT regexp_matches(
		text,
		'https?://[^/\s'']+/[^\s'']+\.[^\s'']+',
		'g'
	) AS url
	FROM {{source('exam_topic sources','questions')}}
    WHERE exam = '1z0-071'
),
image_asset_questions AS (
	SELECT regexp_matches(
		text,
		'/assets/media/[^ ]+/([^ /]+\.(?:png|jpg|jpeg|gif))',
		'g'
	) AS url
	FROM {{source('exam_topic sources','questions')}}
    WHERE exam = '1z0-071'
),
image_url_answers as (
	SELECT regexp_matches(
		text,
		'https?://[^/\s'']+/[^\s'']+\.[^\s'']+',
		'g'
	) AS url
	FROM {{source('exam_topic sources','answers')}}
    WHERE question_exam = '1z0-071'
),
image_asset_answers AS (
	SELECT 
	regexp_matches(
		text,
		'/assets/media/[^ ]+/([^ /]+\.(?:png|jpg|jpeg|gif))',
		'g'
	) AS url
	FROM {{source('exam_topic sources','answers')}}
    WHERE question_exam = '1z0-071'
),
all_image_url as (
	select unnest(url) from image_url_questions
	union
	select 'https://www.examtopics.com/assets/media/exam-media/04351/' || unnest(url) from image_asset_questions
	union
	select unnest(url) from image_url_answers
	union
	select 'https://www.examtopics.com/assets/media/exam-media/04351/' || unnest(url) from image_asset_answers
	order by unnest
)
SELECT 
	DENSE_RANK() OVER (ORDER BY unnest) as number,
	unnest as url
FROM all_image_url
ORDER BY unnest