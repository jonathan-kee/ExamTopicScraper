WITH image_url_questions AS (
	SELECT regexp_matches(
		text,
		'https?://[^/\s'']+/[^\s'']+\.[^\s'']+',
		'g'
	) AS url
	FROM {{source('exam_topic sources','questions')}}
),
image_url_answers as (
	SELECT regexp_matches(
		text,
		'https?://[^/\s'']+/[^\s'']+\.[^\s'']+',
		'g'
	) AS url
	FROM {{source('exam_topic sources','answers')}}
),
all_image_url as (
	select unnest(url) from image_url_questions
	union
	select unnest(url) from image_url_answers
	order by unnest
)
SELECT 
	DENSE_RANK() OVER (ORDER BY unnest) as number,
	unnest as url
FROM all_image_url
ORDER BY unnest