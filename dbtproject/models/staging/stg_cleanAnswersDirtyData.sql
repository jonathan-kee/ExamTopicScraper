select *
from {{source('exam_topic sources','answers')}}
where length(text) <> 0