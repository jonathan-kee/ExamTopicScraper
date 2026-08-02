# Question 163
Which two statements are true about CURRENT_TIMESTAMP? (Choose two.)

# Answers
A. The value varies depending on the setting of SESSIONTIMEZONE.

B. It returns a value of data type TIMESTAMP.

C. The date is in the time zone of DBTIMEZONE.

D. It returns the same date as CURRENT_TIME.

E. The time is in the time zone of DBTIMEZONE.

F. It always returns the same value as SYSTEMTIMESTAMP.

# Discussions
## Discussion 1
select tzname, tz_offset(tzname) from v$timezone_names; select tzname, tz_offset(tzname) from v$timezone_names where tzname = 'America/Anchorage'; alter session set time_zone='America/Anchorage'; select sessiontimezone, current_timestamp, dbtimezone, systimestamp from dual; select current_time from dual; A → OK. B → NOOK: Returns TIMESTAMP WITH TIME ZONE. C → NOOK: No, in the SESSIONTIMEZONE.. D → CURRENT_TIME doesn’t exist. E → NOOK: No, in the SESSIONTIMEZONE. F → NOOK. SYSTIMESTMP returns date based on DBSTIMEZONE.

## Discussion 2
AB should be the correct answer

## Discussion 3
A seems 100%. B is correct if you consider timestamp as the overarching data type of timestamp with time zone and timestamp with local time zone. However if D says current_date then I like AD over AB.

## Discussion 4
A & B are correct! C & E are incorrect because CURRENT_TIMESTAMP reflects the session time zone, not DBTIMEZONE

## Discussion 5
A - Is correct D - Should be either CURRENT_TIMESTAMP or CURRENT_DATE

