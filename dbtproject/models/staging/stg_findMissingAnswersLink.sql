WITH missing_answers_link as (
	select distinct question_number
	from {{source('exam_topic sources','answers')}}
	where length(text) = 0
),
missing_answers as (
	select *
	from {{source('exam_topic sources','questionslink')}}
	where number in (
		select * from missing_answers_link
	)
)
select * from missing_answers
where exam = '{{ var("exam") }}'
order by number