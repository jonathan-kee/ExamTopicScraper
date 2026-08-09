select 
    number, 
    exam, 
    concat('file:///Users/jonathankee/examTopicScraper/static_page/src/main/resources/tmp/document', number, '.html') as link
from {{ ref('stg_findMissingAnswersLink') }}