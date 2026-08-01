--
-- PostgreSQL database dump
--

\restrict ka6vJgzLVvLiXFMwlGpsacmHSmFXVTuu7zffrOWIRx7XKSePf8P5BhpoqjDeoI1

-- Dumped from database version 18.4 (Debian 18.4-1.pgdg13+1)
-- Dumped by pg_dump version 18.4 (Debian 18.4-1.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: questionslink; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY scrape.questionslink (number, exam, link) FROM stdin;
1	1z0-071	https://www.examtopics.com/discussions/oracle/view/79888-exam-1z0-071-topic-1-question-1-discussion/
2	1z0-071	https://www.examtopics.com/discussions/oracle/view/79530-exam-1z0-071-topic-1-question-2-discussion/
3	1z0-071	https://www.examtopics.com/discussions/oracle/view/82940-exam-1z0-071-topic-1-question-3-discussion/
5	1z0-071	https://www.examtopics.com/discussions/oracle/view/79891-exam-1z0-071-topic-1-question-5-discussion/
6	1z0-071	https://www.examtopics.com/discussions/oracle/view/80096-exam-1z0-071-topic-1-question-6-discussion/
7	1z0-071	https://www.examtopics.com/discussions/oracle/view/85690-exam-1z0-071-topic-1-question-7-discussion/
4	1z0-071	https://www.examtopics.com/discussions/oracle/view/79642-exam-1z0-071-topic-1-question-4-discussion/
8	1z0-071	https://www.examtopics.com/discussions/oracle/view/82816-exam-1z0-071-topic-1-question-8-discussion/
9	1z0-071	https://www.examtopics.com/discussions/oracle/view/79955-exam-1z0-071-topic-1-question-9-discussion/
10	1z0-071	https://www.examtopics.com/discussions/oracle/view/84145-exam-1z0-071-topic-1-question-10-discussion/
11	1z0-071	https://www.examtopics.com/discussions/oracle/view/79964-exam-1z0-071-topic-1-question-11-discussion/
12	1z0-071	https://www.examtopics.com/discussions/oracle/view/94379-exam-1z0-071-topic-1-question-12-discussion/
13	1z0-071	https://www.examtopics.com/discussions/oracle/view/85728-exam-1z0-071-topic-1-question-13-discussion/
14	1z0-071	https://www.examtopics.com/discussions/oracle/view/85230-exam-1z0-071-topic-1-question-14-discussion/
15	1z0-071	https://www.examtopics.com/discussions/oracle/view/116310-exam-1z0-071-topic-1-question-15-discussion/
16	1z0-071	https://www.examtopics.com/discussions/oracle/view/82975-exam-1z0-071-topic-1-question-16-discussion/
17	1z0-071	https://www.examtopics.com/discussions/oracle/view/79980-exam-1z0-071-topic-1-question-17-discussion/
18	1z0-071	https://www.examtopics.com/discussions/oracle/view/82978-exam-1z0-071-topic-1-question-18-discussion/
19	1z0-071	https://www.examtopics.com/discussions/oracle/view/89169-exam-1z0-071-topic-1-question-19-discussion/
20	1z0-071	https://www.examtopics.com/discussions/oracle/view/106362-exam-1z0-071-topic-1-question-20-discussion/
21	1z0-071	https://www.examtopics.com/discussions/oracle/view/96807-exam-1z0-071-topic-1-question-21-discussion/
22	1z0-071	https://www.examtopics.com/discussions/oracle/view/81121-exam-1z0-071-topic-1-question-22-discussion/
23	1z0-071	https://www.examtopics.com/discussions/oracle/view/83008-exam-1z0-071-topic-1-question-23-discussion/
24	1z0-071	https://www.examtopics.com/discussions/oracle/view/92435-exam-1z0-071-topic-1-question-24-discussion/
25	1z0-071	https://www.examtopics.com/discussions/oracle/view/96827-exam-1z0-071-topic-1-question-25-discussion/
26	1z0-071	https://www.examtopics.com/discussions/oracle/view/83010-exam-1z0-071-topic-1-question-26-discussion/
27	1z0-071	https://www.examtopics.com/discussions/oracle/view/83015-exam-1z0-071-topic-1-question-27-discussion/
28	1z0-071	https://www.examtopics.com/discussions/oracle/view/80004-exam-1z0-071-topic-1-question-28-discussion/
29	1z0-071	https://www.examtopics.com/discussions/oracle/view/86448-exam-1z0-071-topic-1-question-29-discussion/
30	1z0-071	https://www.examtopics.com/discussions/oracle/view/108917-exam-1z0-071-topic-1-question-30-discussion/
31	1z0-071	https://www.examtopics.com/discussions/oracle/view/82835-exam-1z0-071-topic-1-question-31-discussion/
32	1z0-071	https://www.examtopics.com/discussions/oracle/view/80842-exam-1z0-071-topic-1-question-32-discussion/
33	1z0-071	https://www.examtopics.com/discussions/oracle/view/82839-exam-1z0-071-topic-1-question-33-discussion/
34	1z0-071	https://www.examtopics.com/discussions/oracle/view/108706-exam-1z0-071-topic-1-question-34-discussion/
35	1z0-071	https://www.examtopics.com/discussions/oracle/view/84521-exam-1z0-071-topic-1-question-35-discussion/
36	1z0-071	https://www.examtopics.com/discussions/oracle/view/106465-exam-1z0-071-topic-1-question-36-discussion/
37	1z0-071	https://www.examtopics.com/discussions/oracle/view/117009-exam-1z0-071-topic-1-question-37-discussion/
38	1z0-071	https://www.examtopics.com/discussions/oracle/view/106467-exam-1z0-071-topic-1-question-38-discussion/
39	1z0-071	https://www.examtopics.com/discussions/oracle/view/86179-exam-1z0-071-topic-1-question-39-discussion/
40	1z0-071	https://www.examtopics.com/discussions/oracle/view/94583-exam-1z0-071-topic-1-question-40-discussion/
74	1z0-071	https://www.examtopics.com/discussions/oracle/view/80069-exam-1z0-071-topic-1-question-74-discussion/
75	1z0-071	https://www.examtopics.com/discussions/oracle/view/110748-exam-1z0-071-topic-1-question-75-discussion/
76	1z0-071	https://www.examtopics.com/discussions/oracle/view/80072-exam-1z0-071-topic-1-question-76-discussion/
77	1z0-071	https://www.examtopics.com/discussions/oracle/view/110366-exam-1z0-071-topic-1-question-77-discussion/
78	1z0-071	https://www.examtopics.com/discussions/oracle/view/111879-exam-1z0-071-topic-1-question-78-discussion/
79	1z0-071	https://www.examtopics.com/discussions/oracle/view/93006-exam-1z0-071-topic-1-question-79-discussion/
80	1z0-071	https://www.examtopics.com/discussions/oracle/view/90051-exam-1z0-071-topic-1-question-80-discussion/
81	1z0-071	https://www.examtopics.com/discussions/oracle/view/106918-exam-1z0-071-topic-1-question-81-discussion/
82	1z0-071	https://www.examtopics.com/discussions/oracle/view/106926-exam-1z0-071-topic-1-question-82-discussion/
83	1z0-071	https://www.examtopics.com/discussions/oracle/view/90052-exam-1z0-071-topic-1-question-83-discussion/
84	1z0-071	https://www.examtopics.com/discussions/oracle/view/90063-exam-1z0-071-topic-1-question-84-discussion/
85	1z0-071	https://www.examtopics.com/discussions/oracle/view/129415-exam-1z0-071-topic-1-question-85-discussion/
86	1z0-071	https://www.examtopics.com/discussions/oracle/view/127882-exam-1z0-071-topic-1-question-86-discussion/
87	1z0-071	https://www.examtopics.com/discussions/oracle/view/131302-exam-1z0-071-topic-1-question-87-discussion/
88	1z0-071	https://www.examtopics.com/discussions/oracle/view/93007-exam-1z0-071-topic-1-question-88-discussion/
89	1z0-071	https://www.examtopics.com/discussions/oracle/view/105341-exam-1z0-071-topic-1-question-89-discussion/
90	1z0-071	https://www.examtopics.com/discussions/oracle/view/90058-exam-1z0-071-topic-1-question-90-discussion/
91	1z0-071	https://www.examtopics.com/discussions/oracle/view/90071-exam-1z0-071-topic-1-question-91-discussion/
92	1z0-071	https://www.examtopics.com/discussions/oracle/view/116900-exam-1z0-071-topic-1-question-92-discussion/
93	1z0-071	https://www.examtopics.com/discussions/oracle/view/117947-exam-1z0-071-topic-1-question-93-discussion/
94	1z0-071	https://www.examtopics.com/discussions/oracle/view/104079-exam-1z0-071-topic-1-question-94-discussion/
95	1z0-071	https://www.examtopics.com/discussions/oracle/view/89220-exam-1z0-071-topic-1-question-95-discussion/
96	1z0-071	https://www.examtopics.com/discussions/oracle/view/110310-exam-1z0-071-topic-1-question-96-discussion/
97	1z0-071	https://www.examtopics.com/discussions/oracle/view/90078-exam-1z0-071-topic-1-question-97-discussion/
98	1z0-071	https://www.examtopics.com/discussions/oracle/view/90079-exam-1z0-071-topic-1-question-98-discussion/
99	1z0-071	https://www.examtopics.com/discussions/oracle/view/110794-exam-1z0-071-topic-1-question-99-discussion/
100	1z0-071	https://www.examtopics.com/discussions/oracle/view/110382-exam-1z0-071-topic-1-question-100-discussion/
101	1z0-071	https://www.examtopics.com/discussions/oracle/view/94747-exam-1z0-071-topic-1-question-101-discussion/
102	1z0-071	https://www.examtopics.com/discussions/oracle/view/100357-exam-1z0-071-topic-1-question-102-discussion/
103	1z0-071	https://www.examtopics.com/discussions/oracle/view/90081-exam-1z0-071-topic-1-question-103-discussion/
104	1z0-071	https://www.examtopics.com/discussions/oracle/view/90082-exam-1z0-071-topic-1-question-104-discussion/
105	1z0-071	https://www.examtopics.com/discussions/oracle/view/101744-exam-1z0-071-topic-1-question-105-discussion/
106	1z0-071	https://www.examtopics.com/discussions/oracle/view/101688-exam-1z0-071-topic-1-question-106-discussion/
107	1z0-071	https://www.examtopics.com/discussions/oracle/view/117081-exam-1z0-071-topic-1-question-107-discussion/
108	1z0-071	https://www.examtopics.com/discussions/oracle/view/102475-exam-1z0-071-topic-1-question-108-discussion/
109	1z0-071	https://www.examtopics.com/discussions/oracle/view/93055-exam-1z0-071-topic-1-question-109-discussion/
110	1z0-071	https://www.examtopics.com/discussions/oracle/view/126129-exam-1z0-071-topic-1-question-110-discussion/
111	1z0-071	https://www.examtopics.com/discussions/oracle/view/119640-exam-1z0-071-topic-1-question-111-discussion/
112	1z0-071	https://www.examtopics.com/discussions/oracle/view/94847-exam-1z0-071-topic-1-question-112-discussion/
113	1z0-071	https://www.examtopics.com/discussions/oracle/view/104197-exam-1z0-071-topic-1-question-113-discussion/
114	1z0-071	https://www.examtopics.com/discussions/oracle/view/136983-exam-1z0-071-topic-1-question-114-discussion/
115	1z0-071	https://www.examtopics.com/discussions/oracle/view/90622-exam-1z0-071-topic-1-question-115-discussion/
116	1z0-071	https://www.examtopics.com/discussions/oracle/view/91209-exam-1z0-071-topic-1-question-116-discussion/
117	1z0-071	https://www.examtopics.com/discussions/oracle/view/126132-exam-1z0-071-topic-1-question-117-discussion/
118	1z0-071	https://www.examtopics.com/discussions/oracle/view/114488-exam-1z0-071-topic-1-question-118-discussion/
119	1z0-071	https://www.examtopics.com/discussions/oracle/view/134130-exam-1z0-071-topic-1-question-119-discussion/
120	1z0-071	https://www.examtopics.com/discussions/oracle/view/91138-exam-1z0-071-topic-1-question-120-discussion/
121	1z0-071	https://www.examtopics.com/discussions/oracle/view/113166-exam-1z0-071-topic-1-question-121-discussion/
122	1z0-071	https://www.examtopics.com/discussions/oracle/view/147819-exam-1z0-071-topic-1-question-122-discussion/
123	1z0-071	https://www.examtopics.com/discussions/oracle/view/95045-exam-1z0-071-topic-1-question-123-discussion/
124	1z0-071	https://www.examtopics.com/discussions/oracle/view/126136-exam-1z0-071-topic-1-question-124-discussion/
125	1z0-071	https://www.examtopics.com/discussions/oracle/view/107164-exam-1z0-071-topic-1-question-125-discussion/
126	1z0-071	https://www.examtopics.com/discussions/oracle/view/149837-exam-1z0-071-topic-1-question-126-discussion/
127	1z0-071	https://www.examtopics.com/discussions/oracle/view/100554-exam-1z0-071-topic-1-question-127-discussion/
128	1z0-071	https://www.examtopics.com/discussions/oracle/view/96939-exam-1z0-071-topic-1-question-128-discussion/
129	1z0-071	https://www.examtopics.com/discussions/oracle/view/100566-exam-1z0-071-topic-1-question-129-discussion/
130	1z0-071	https://www.examtopics.com/discussions/oracle/view/93118-exam-1z0-071-topic-1-question-130-discussion/
131	1z0-071	https://www.examtopics.com/discussions/oracle/view/100572-exam-1z0-071-topic-1-question-131-discussion/
132	1z0-071	https://www.examtopics.com/discussions/oracle/view/100573-exam-1z0-071-topic-1-question-132-discussion/
133	1z0-071	https://www.examtopics.com/discussions/oracle/view/90219-exam-1z0-071-topic-1-question-133-discussion/
134	1z0-071	https://www.examtopics.com/discussions/oracle/view/149671-exam-1z0-071-topic-1-question-134-discussion/
135	1z0-071	https://www.examtopics.com/discussions/oracle/view/136992-exam-1z0-071-topic-1-question-135-discussion/
136	1z0-071	https://www.examtopics.com/discussions/oracle/view/100574-exam-1z0-071-topic-1-question-136-discussion/
137	1z0-071	https://www.examtopics.com/discussions/oracle/view/100575-exam-1z0-071-topic-1-question-137-discussion/
138	1z0-071	https://www.examtopics.com/discussions/oracle/view/100578-exam-1z0-071-topic-1-question-138-discussion/
139	1z0-071	https://www.examtopics.com/discussions/oracle/view/139689-exam-1z0-071-topic-1-question-139-discussion/
140	1z0-071	https://www.examtopics.com/discussions/oracle/view/90220-exam-1z0-071-topic-1-question-140-discussion/
141	1z0-071	https://www.examtopics.com/discussions/oracle/view/100581-exam-1z0-071-topic-1-question-141-discussion/
142	1z0-071	https://www.examtopics.com/discussions/oracle/view/99298-exam-1z0-071-topic-1-question-142-discussion/
143	1z0-071	https://www.examtopics.com/discussions/oracle/view/100583-exam-1z0-071-topic-1-question-143-discussion/
144	1z0-071	https://www.examtopics.com/discussions/oracle/view/99299-exam-1z0-071-topic-1-question-144-discussion/
145	1z0-071	https://www.examtopics.com/discussions/oracle/view/100586-exam-1z0-071-topic-1-question-145-discussion/
146	1z0-071	https://www.examtopics.com/discussions/oracle/view/99300-exam-1z0-071-topic-1-question-146-discussion/
147	1z0-071	https://www.examtopics.com/discussions/oracle/view/100588-exam-1z0-071-topic-1-question-147-discussion/
148	1z0-071	https://www.examtopics.com/discussions/oracle/view/104317-exam-1z0-071-topic-1-question-148-discussion/
149	1z0-071	https://www.examtopics.com/discussions/oracle/view/100669-exam-1z0-071-topic-1-question-149-discussion/
150	1z0-071	https://www.examtopics.com/discussions/oracle/view/100978-exam-1z0-071-topic-1-question-150-discussion/
151	1z0-071	https://www.examtopics.com/discussions/oracle/view/100190-exam-1z0-071-topic-1-question-151-discussion/
152	1z0-071	https://www.examtopics.com/discussions/oracle/view/100139-exam-1z0-071-topic-1-question-152-discussion/
153	1z0-071	https://www.examtopics.com/discussions/oracle/view/104422-exam-1z0-071-topic-1-question-153-discussion/
154	1z0-071	https://www.examtopics.com/discussions/oracle/view/101416-exam-1z0-071-topic-1-question-154-discussion/
155	1z0-071	https://www.examtopics.com/discussions/oracle/view/148643-exam-1z0-071-topic-1-question-155-discussion/
156	1z0-071	https://www.examtopics.com/discussions/oracle/view/99875-exam-1z0-071-topic-1-question-156-discussion/
157	1z0-071	https://www.examtopics.com/discussions/oracle/view/100077-exam-1z0-071-topic-1-question-157-discussion/
158	1z0-071	https://www.examtopics.com/discussions/oracle/view/102300-exam-1z0-071-topic-1-question-158-discussion/
159	1z0-071	https://www.examtopics.com/discussions/oracle/view/99897-exam-1z0-071-topic-1-question-159-discussion/
160	1z0-071	https://www.examtopics.com/discussions/oracle/view/149732-exam-1z0-071-topic-1-question-160-discussion/
161	1z0-071	https://www.examtopics.com/discussions/oracle/view/150397-exam-1z0-071-topic-1-question-161-discussion/
162	1z0-071	https://www.examtopics.com/discussions/oracle/view/102298-exam-1z0-071-topic-1-question-162-discussion/
163	1z0-071	https://www.examtopics.com/discussions/oracle/view/99878-exam-1z0-071-topic-1-question-163-discussion/
164	1z0-071	https://www.examtopics.com/discussions/oracle/view/99898-exam-1z0-071-topic-1-question-164-discussion/
165	1z0-071	https://www.examtopics.com/discussions/oracle/view/104351-exam-1z0-071-topic-1-question-165-discussion/
166	1z0-071	https://www.examtopics.com/discussions/oracle/view/101413-exam-1z0-071-topic-1-question-166-discussion/
167	1z0-071	https://www.examtopics.com/discussions/oracle/view/149735-exam-1z0-071-topic-1-question-167-discussion/
168	1z0-071	https://www.examtopics.com/discussions/oracle/view/99435-exam-1z0-071-topic-1-question-168-discussion/
169	1z0-071	https://www.examtopics.com/discussions/oracle/view/117509-exam-1z0-071-topic-1-question-169-discussion/
170	1z0-071	https://www.examtopics.com/discussions/oracle/view/104356-exam-1z0-071-topic-1-question-170-discussion/
171	1z0-071	https://www.examtopics.com/discussions/oracle/view/99882-exam-1z0-071-topic-1-question-171-discussion/
172	1z0-071	https://www.examtopics.com/discussions/oracle/view/104641-exam-1z0-071-topic-1-question-172-discussion/
173	1z0-071	https://www.examtopics.com/discussions/oracle/view/106598-exam-1z0-071-topic-1-question-173-discussion/
174	1z0-071	https://www.examtopics.com/discussions/oracle/view/100170-exam-1z0-071-topic-1-question-174-discussion/
175	1z0-071	https://www.examtopics.com/discussions/oracle/view/117493-exam-1z0-071-topic-1-question-175-discussion/
176	1z0-071	https://www.examtopics.com/discussions/oracle/view/100786-exam-1z0-071-topic-1-question-176-discussion/
177	1z0-071	https://www.examtopics.com/discussions/oracle/view/99886-exam-1z0-071-topic-1-question-177-discussion/
178	1z0-071	https://www.examtopics.com/discussions/oracle/view/125602-exam-1z0-071-topic-1-question-178-discussion/
179	1z0-071	https://www.examtopics.com/discussions/oracle/view/99888-exam-1z0-071-topic-1-question-179-discussion/
180	1z0-071	https://www.examtopics.com/discussions/oracle/view/113231-exam-1z0-071-topic-1-question-180-discussion/
181	1z0-071	https://www.examtopics.com/discussions/oracle/view/126342-exam-1z0-071-topic-1-question-181-discussion/
182	1z0-071	https://www.examtopics.com/discussions/oracle/view/100765-exam-1z0-071-topic-1-question-182-discussion/
183	1z0-071	https://www.examtopics.com/discussions/oracle/view/100805-exam-1z0-071-topic-1-question-183-discussion/
184	1z0-071	https://www.examtopics.com/discussions/oracle/view/101805-exam-1z0-071-topic-1-question-184-discussion/
185	1z0-071	https://www.examtopics.com/discussions/oracle/view/99890-exam-1z0-071-topic-1-question-185-discussion/
186	1z0-071	https://www.examtopics.com/discussions/oracle/view/149809-exam-1z0-071-topic-1-question-186-discussion/
187	1z0-071	https://www.examtopics.com/discussions/oracle/view/113394-exam-1z0-071-topic-1-question-187-discussion/
188	1z0-071	https://www.examtopics.com/discussions/oracle/view/107303-exam-1z0-071-topic-1-question-188-discussion/
189	1z0-071	https://www.examtopics.com/discussions/oracle/view/99430-exam-1z0-071-topic-1-question-189-discussion/
190	1z0-071	https://www.examtopics.com/discussions/oracle/view/99431-exam-1z0-071-topic-1-question-190-discussion/
191	1z0-071	https://www.examtopics.com/discussions/oracle/view/99432-exam-1z0-071-topic-1-question-191-discussion/
192	1z0-071	https://www.examtopics.com/discussions/oracle/view/99434-exam-1z0-071-topic-1-question-192-discussion/
193	1z0-071	https://www.examtopics.com/discussions/oracle/view/99894-exam-1z0-071-topic-1-question-193-discussion/
194	1z0-071	https://www.examtopics.com/discussions/oracle/view/110354-exam-1z0-071-topic-1-question-194-discussion/
195	1z0-071	https://www.examtopics.com/discussions/oracle/view/100969-exam-1z0-071-topic-1-question-195-discussion/
196	1z0-071	https://www.examtopics.com/discussions/oracle/view/99427-exam-1z0-071-topic-1-question-196-discussion/
197	1z0-071	https://www.examtopics.com/discussions/oracle/view/149810-exam-1z0-071-topic-1-question-197-discussion/
198	1z0-071	https://www.examtopics.com/discussions/oracle/view/131989-exam-1z0-071-topic-1-question-198-discussion/
199	1z0-071	https://www.examtopics.com/discussions/oracle/view/99425-exam-1z0-071-topic-1-question-199-discussion/
200	1z0-071	https://www.examtopics.com/discussions/oracle/view/99423-exam-1z0-071-topic-1-question-200-discussion/
201	1z0-071	https://www.examtopics.com/discussions/oracle/view/99418-exam-1z0-071-topic-1-question-201-discussion/
202	1z0-071	https://www.examtopics.com/discussions/oracle/view/101808-exam-1z0-071-topic-1-question-202-discussion/
203	1z0-071	https://www.examtopics.com/discussions/oracle/view/99912-exam-1z0-071-topic-1-question-203-discussion/
204	1z0-071	https://www.examtopics.com/discussions/oracle/view/99307-exam-1z0-071-topic-1-question-204-discussion/
205	1z0-071	https://www.examtopics.com/discussions/oracle/view/99416-exam-1z0-071-topic-1-question-205-discussion/
206	1z0-071	https://www.examtopics.com/discussions/oracle/view/126316-exam-1z0-071-topic-1-question-206-discussion/
207	1z0-071	https://www.examtopics.com/discussions/oracle/view/99415-exam-1z0-071-topic-1-question-207-discussion/
208	1z0-071	https://www.examtopics.com/discussions/oracle/view/99413-exam-1z0-071-topic-1-question-208-discussion/
209	1z0-071	https://www.examtopics.com/discussions/oracle/view/99412-exam-1z0-071-topic-1-question-209-discussion/
210	1z0-071	https://www.examtopics.com/discussions/oracle/view/99409-exam-1z0-071-topic-1-question-210-discussion/
211	1z0-071	https://www.examtopics.com/discussions/oracle/view/100973-exam-1z0-071-topic-1-question-211-discussion/
212	1z0-071	https://www.examtopics.com/discussions/oracle/view/100902-exam-1z0-071-topic-1-question-212-discussion/
213	1z0-071	https://www.examtopics.com/discussions/oracle/view/126317-exam-1z0-071-topic-1-question-213-discussion/
214	1z0-071	https://www.examtopics.com/discussions/oracle/view/104488-exam-1z0-071-topic-1-question-214-discussion/
215	1z0-071	https://www.examtopics.com/discussions/oracle/view/126318-exam-1z0-071-topic-1-question-215-discussion/
216	1z0-071	https://www.examtopics.com/discussions/oracle/view/132045-exam-1z0-071-topic-1-question-216-discussion/
217	1z0-071	https://www.examtopics.com/discussions/oracle/view/104492-exam-1z0-071-topic-1-question-217-discussion/
218	1z0-071	https://www.examtopics.com/discussions/oracle/view/126321-exam-1z0-071-topic-1-question-218-discussion/
219	1z0-071	https://www.examtopics.com/discussions/oracle/view/126322-exam-1z0-071-topic-1-question-219-discussion/
220	1z0-071	https://www.examtopics.com/discussions/oracle/view/115822-exam-1z0-071-topic-1-question-220-discussion/
221	1z0-071	https://www.examtopics.com/discussions/oracle/view/100976-exam-1z0-071-topic-1-question-221-discussion/
222	1z0-071	https://www.examtopics.com/discussions/oracle/view/117019-exam-1z0-071-topic-1-question-222-discussion/
223	1z0-071	https://www.examtopics.com/discussions/oracle/view/114941-exam-1z0-071-topic-1-question-223-discussion/
224	1z0-071	https://www.examtopics.com/discussions/oracle/view/114106-exam-1z0-071-topic-1-question-224-discussion/
225	1z0-071	https://www.examtopics.com/discussions/oracle/view/126324-exam-1z0-071-topic-1-question-225-discussion/
226	1z0-071	https://www.examtopics.com/discussions/oracle/view/114936-exam-1z0-071-topic-1-question-226-discussion/
227	1z0-071	https://www.examtopics.com/discussions/oracle/view/121476-exam-1z0-071-topic-1-question-227-discussion/
228	1z0-071	https://www.examtopics.com/discussions/oracle/view/127596-exam-1z0-071-topic-1-question-228-discussion/
229	1z0-071	https://www.examtopics.com/discussions/oracle/view/110619-exam-1z0-071-topic-1-question-229-discussion/
230	1z0-071	https://www.examtopics.com/discussions/oracle/view/114107-exam-1z0-071-topic-1-question-230-discussion/
231	1z0-071	https://www.examtopics.com/discussions/oracle/view/110646-exam-1z0-071-topic-1-question-231-discussion/
232	1z0-071	https://www.examtopics.com/discussions/oracle/view/110655-exam-1z0-071-topic-1-question-232-discussion/
233	1z0-071	https://www.examtopics.com/discussions/oracle/view/110676-exam-1z0-071-topic-1-question-233-discussion/
234	1z0-071	https://www.examtopics.com/discussions/oracle/view/114004-exam-1z0-071-topic-1-question-234-discussion/
235	1z0-071	https://www.examtopics.com/discussions/oracle/view/114061-exam-1z0-071-topic-1-question-235-discussion/
236	1z0-071	https://www.examtopics.com/discussions/oracle/view/110749-exam-1z0-071-topic-1-question-236-discussion/
237	1z0-071	https://www.examtopics.com/discussions/oracle/view/134647-exam-1z0-071-topic-1-question-237-discussion/
238	1z0-071	https://www.examtopics.com/discussions/oracle/view/140237-exam-1z0-071-topic-1-question-238-discussion/
239	1z0-071	https://www.examtopics.com/discussions/oracle/view/150346-exam-1z0-071-topic-1-question-239-discussion/
240	1z0-071	https://www.examtopics.com/discussions/oracle/view/150347-exam-1z0-071-topic-1-question-240-discussion/
241	1z0-071	https://www.examtopics.com/discussions/oracle/view/150054-exam-1z0-071-topic-1-question-241-discussion/
242	1z0-071	https://www.examtopics.com/discussions/oracle/view/134809-exam-1z0-071-topic-1-question-242-discussion/
243	1z0-071	https://www.examtopics.com/discussions/oracle/view/150893-exam-1z0-071-topic-1-question-243-discussion/
244	1z0-071	https://www.examtopics.com/discussions/oracle/view/134821-exam-1z0-071-topic-1-question-244-discussion/
245	1z0-071	https://www.examtopics.com/discussions/oracle/view/137516-exam-1z0-071-topic-1-question-245-discussion/
246	1z0-071	https://www.examtopics.com/discussions/oracle/view/137517-exam-1z0-071-topic-1-question-246-discussion/
247	1z0-071	https://www.examtopics.com/discussions/oracle/view/137519-exam-1z0-071-topic-1-question-247-discussion/
248	1z0-071	https://www.examtopics.com/discussions/oracle/view/140061-exam-1z0-071-topic-1-question-248-discussion/
249	1z0-071	https://www.examtopics.com/discussions/oracle/view/137528-exam-1z0-071-topic-1-question-249-discussion/
250	1z0-071	https://www.examtopics.com/discussions/oracle/view/137529-exam-1z0-071-topic-1-question-250-discussion/
251	1z0-071	https://www.examtopics.com/discussions/oracle/view/134934-exam-1z0-071-topic-1-question-251-discussion/
252	1z0-071	https://www.examtopics.com/discussions/oracle/view/139188-exam-1z0-071-topic-1-question-252-discussion/
253	1z0-071	https://www.examtopics.com/discussions/oracle/view/138947-exam-1z0-071-topic-1-question-253-discussion/
254	1z0-071	https://www.examtopics.com/discussions/oracle/view/141750-exam-1z0-071-topic-1-question-254-discussion/
255	1z0-071	https://www.examtopics.com/discussions/oracle/view/137534-exam-1z0-071-topic-1-question-255-discussion/
256	1z0-071	https://www.examtopics.com/discussions/oracle/view/150351-exam-1z0-071-topic-1-question-256-discussion/
257	1z0-071	https://www.examtopics.com/discussions/oracle/view/137535-exam-1z0-071-topic-1-question-257-discussion/
258	1z0-071	https://www.examtopics.com/discussions/oracle/view/153906-exam-1z0-071-topic-1-question-258-discussion/
259	1z0-071	https://www.examtopics.com/discussions/oracle/view/137536-exam-1z0-071-topic-1-question-259-discussion/
260	1z0-071	https://www.examtopics.com/discussions/oracle/view/308965-exam-1z0-071-topic-1-question-260-discussion/
261	1z0-071	https://www.examtopics.com/discussions/oracle/view/150937-exam-1z0-071-topic-1-question-261-discussion/
262	1z0-071	https://www.examtopics.com/discussions/oracle/view/308966-exam-1z0-071-topic-1-question-262-discussion/
263	1z0-071	https://www.examtopics.com/discussions/oracle/view/150980-exam-1z0-071-topic-1-question-263-discussion/
264	1z0-071	https://www.examtopics.com/discussions/oracle/view/308967-exam-1z0-071-topic-1-question-264-discussion/
265	1z0-071	https://www.examtopics.com/discussions/oracle/view/153611-exam-1z0-071-topic-1-question-265-discussion/
266	1z0-071	https://www.examtopics.com/discussions/oracle/view/153613-exam-1z0-071-topic-1-question-266-discussion/
267	1z0-071	https://www.examtopics.com/discussions/oracle/view/308968-exam-1z0-071-topic-1-question-267-discussion/
268	1z0-071	https://www.examtopics.com/discussions/oracle/view/151000-exam-1z0-071-topic-1-question-268-discussion/
269	1z0-071	https://www.examtopics.com/discussions/oracle/view/152050-exam-1z0-071-topic-1-question-269-discussion/
270	1z0-071	https://www.examtopics.com/discussions/oracle/view/151001-exam-1z0-071-topic-1-question-270-discussion/
271	1z0-071	https://www.examtopics.com/discussions/oracle/view/308969-exam-1z0-071-topic-1-question-271-discussion/
272	1z0-071	https://www.examtopics.com/discussions/oracle/view/157775-exam-1z0-071-topic-1-question-272-discussion/
273	1z0-071	https://www.examtopics.com/discussions/oracle/view/116558-exam-1z0-071-topic-1-question-41-discussion/
41	1z0-071	https://www.examtopics.com/discussions/oracle/view/116558-exam-1z0-071-topic-1-question-41-discussion/
42	1z0-071	https://www.examtopics.com/discussions/oracle/view/94986-exam-1z0-071-topic-1-question-42-discussion/
43	1z0-071	https://www.examtopics.com/discussions/oracle/view/117014-exam-1z0-071-topic-1-question-43-discussion/
44	1z0-071	https://www.examtopics.com/discussions/oracle/view/80185-exam-1z0-071-topic-1-question-44-discussion/
45	1z0-071	https://www.examtopics.com/discussions/oracle/view/86188-exam-1z0-071-topic-1-question-45-discussion/
46	1z0-071	https://www.examtopics.com/discussions/oracle/view/117016-exam-1z0-071-topic-1-question-46-discussion/
47	1z0-071	https://www.examtopics.com/discussions/oracle/view/80905-exam-1z0-071-topic-1-question-47-discussion/
48	1z0-071	https://www.examtopics.com/discussions/oracle/view/117017-exam-1z0-071-topic-1-question-48-discussion/
49	1z0-071	https://www.examtopics.com/discussions/oracle/view/80024-exam-1z0-071-topic-1-question-49-discussion/
50	1z0-071	https://www.examtopics.com/discussions/oracle/view/92373-exam-1z0-071-topic-1-question-50-discussion/
51	1z0-071	https://www.examtopics.com/discussions/oracle/view/80187-exam-1z0-071-topic-1-question-51-discussion/
52	1z0-071	https://www.examtopics.com/discussions/oracle/view/117167-exam-1z0-071-topic-1-question-52-discussion/
53	1z0-071	https://www.examtopics.com/discussions/oracle/view/79499-exam-1z0-071-topic-1-question-53-discussion/
54	1z0-071	https://www.examtopics.com/discussions/oracle/view/80033-exam-1z0-071-topic-1-question-54-discussion/
55	1z0-071	https://www.examtopics.com/discussions/oracle/view/83123-exam-1z0-071-topic-1-question-55-discussion/
56	1z0-071	https://www.examtopics.com/discussions/oracle/view/104877-exam-1z0-071-topic-1-question-56-discussion/
57	1z0-071	https://www.examtopics.com/discussions/oracle/view/107573-exam-1z0-071-topic-1-question-57-discussion/
58	1z0-071	https://www.examtopics.com/discussions/oracle/view/101850-exam-1z0-071-topic-1-question-58-discussion/
59	1z0-071	https://www.examtopics.com/discussions/oracle/view/80037-exam-1z0-071-topic-1-question-59-discussion/
60	1z0-071	https://www.examtopics.com/discussions/oracle/view/106847-exam-1z0-071-topic-1-question-60-discussion/
61	1z0-071	https://www.examtopics.com/discussions/oracle/view/101743-exam-1z0-071-topic-1-question-61-discussion/
62	1z0-071	https://www.examtopics.com/discussions/oracle/view/92912-exam-1z0-071-topic-1-question-62-discussion/
63	1z0-071	https://www.examtopics.com/discussions/oracle/view/101900-exam-1z0-071-topic-1-question-63-discussion/
64	1z0-071	https://www.examtopics.com/discussions/oracle/view/83128-exam-1z0-071-topic-1-question-64-discussion/
65	1z0-071	https://www.examtopics.com/discussions/oracle/view/96167-exam-1z0-071-topic-1-question-65-discussion/
66	1z0-071	https://www.examtopics.com/discussions/oracle/view/90038-exam-1z0-071-topic-1-question-66-discussion/
67	1z0-071	https://www.examtopics.com/discussions/oracle/view/99408-exam-1z0-071-topic-1-question-67-discussion/
68	1z0-071	https://www.examtopics.com/discussions/oracle/view/102004-exam-1z0-071-topic-1-question-68-discussion/
69	1z0-071	https://www.examtopics.com/discussions/oracle/view/83359-exam-1z0-071-topic-1-question-69-discussion/
70	1z0-071	https://www.examtopics.com/discussions/oracle/view/90867-exam-1z0-071-topic-1-question-70-discussion/
71	1z0-071	https://www.examtopics.com/discussions/oracle/view/126003-exam-1z0-071-topic-1-question-71-discussion/
72	1z0-071	https://www.examtopics.com/discussions/oracle/view/111993-exam-1z0-071-topic-1-question-72-discussion/
73	1z0-071	https://www.examtopics.com/discussions/oracle/view/110362-exam-1z0-071-topic-1-question-73-discussion/
1	PSM I	https://www.examtopics.com/discussions/scrum/view/17519-exam-psm-i-topic-1-question-1-discussion/
2	PSM I	https://www.examtopics.com/discussions/scrum/view/113253-exam-psm-i-topic-1-question-2-discussion/
3	PSM I	https://www.examtopics.com/discussions/scrum/view/19354-exam-psm-i-topic-1-question-3-discussion/
4	PSM I	https://www.examtopics.com/exams/scrum/psm-i/view/
5	PSM I	https://www.examtopics.com/discussions/scrum/view/121405-exam-psm-i-topic-1-question-5-discussion/
6	PSM I	https://www.examtopics.com/discussions/scrum/view/116796-exam-psm-i-topic-1-question-6-discussion/
7	PSM I	https://www.examtopics.com/discussions/scrum/view/113925-exam-psm-i-topic-1-question-7-discussion/
8	PSM I	https://www.examtopics.com/discussions/scrum/view/19691-exam-psm-i-topic-1-question-8-discussion/
9	PSM I	https://www.examtopics.com/discussions/scrum/view/119071-exam-psm-i-topic-1-question-9-discussion/
10	PSM I	https://www.examtopics.com/discussions/scrum/view/116797-exam-psm-i-topic-1-question-10-discussion/
11	PSM I	https://www.examtopics.com/discussions/scrum/view/46641-exam-psm-i-topic-1-question-11-discussion/
12	PSM I	https://www.examtopics.com/discussions/scrum/view/116798-exam-psm-i-topic-1-question-12-discussion/
13	PSM I	https://www.examtopics.com/discussions/scrum/view/32004-exam-psm-i-topic-1-question-13-discussion/
14	PSM I	https://www.examtopics.com/discussions/scrum/view/116800-exam-psm-i-topic-1-question-14-discussion/
15	PSM I	https://www.examtopics.com/discussions/scrum/view/110641-exam-psm-i-topic-1-question-15-discussion/
16	PSM I	https://www.examtopics.com/discussions/scrum/view/116804-exam-psm-i-topic-1-question-16-discussion/
17	PSM I	https://www.examtopics.com/discussions/scrum/view/110643-exam-psm-i-topic-1-question-17-discussion/
18	PSM I	https://www.examtopics.com/discussions/scrum/view/81558-exam-psm-i-topic-1-question-18-discussion/
19	PSM I	https://www.examtopics.com/discussions/scrum/view/41745-exam-psm-i-topic-1-question-19-discussion/
20	PSM I	https://www.examtopics.com/discussions/scrum/view/36947-exam-psm-i-topic-1-question-20-discussion/
21	PSM I	https://www.examtopics.com/discussions/scrum/view/2868-exam-psm-i-topic-1-question-21-discussion/
22	PSM I	https://www.examtopics.com/discussions/scrum/view/119072-exam-psm-i-topic-1-question-22-discussion/
23	PSM I	https://www.examtopics.com/discussions/scrum/view/119073-exam-psm-i-topic-1-question-23-discussion/
24	PSM I	https://www.examtopics.com/discussions/scrum/view/112125-exam-psm-i-topic-1-question-24-discussion/
25	PSM I	https://www.examtopics.com/discussions/scrum/view/7762-exam-psm-i-topic-1-question-25-discussion/
26	PSM I	https://www.examtopics.com/discussions/scrum/view/119075-exam-psm-i-topic-1-question-26-discussion/
27	PSM I	https://www.examtopics.com/discussions/scrum/view/41748-exam-psm-i-topic-1-question-27-discussion/
28	PSM I	https://www.examtopics.com/discussions/scrum/view/117714-exam-psm-i-topic-1-question-28-discussion/
29	PSM I	https://www.examtopics.com/discussions/scrum/view/14951-exam-psm-i-topic-1-question-29-discussion/
30	PSM I	https://www.examtopics.com/discussions/scrum/view/32023-exam-psm-i-topic-1-question-30-discussion/
31	PSM I	https://www.examtopics.com/discussions/scrum/view/18463-exam-psm-i-topic-1-question-31-discussion/
32	PSM I	https://www.examtopics.com/discussions/scrum/view/116413-exam-psm-i-topic-1-question-32-discussion/
33	PSM I	https://www.examtopics.com/discussions/scrum/view/44664-exam-psm-i-topic-1-question-33-discussion/
34	PSM I	https://www.examtopics.com/discussions/scrum/view/36589-exam-psm-i-topic-1-question-34-discussion/
35	PSM I	https://www.examtopics.com/discussions/scrum/view/49501-exam-psm-i-topic-1-question-35-discussion/
36	PSM I	https://www.examtopics.com/discussions/scrum/view/117716-exam-psm-i-topic-1-question-36-discussion/
37	PSM I	https://www.examtopics.com/discussions/scrum/view/109754-exam-psm-i-topic-1-question-37-discussion/
38	PSM I	https://www.examtopics.com/discussions/scrum/view/39150-exam-psm-i-topic-1-question-38-discussion/
39	PSM I	https://www.examtopics.com/discussions/scrum/view/121461-exam-psm-i-topic-1-question-39-discussion/
40	PSM I	https://www.examtopics.com/discussions/scrum/view/15028-exam-psm-i-topic-1-question-40-discussion/
41	PSM I	https://www.examtopics.com/discussions/scrum/view/73868-exam-psm-i-topic-1-question-41-discussion/
42	PSM I	https://www.examtopics.com/discussions/scrum/view/117717-exam-psm-i-topic-1-question-42-discussion/
43	PSM I	https://www.examtopics.com/discussions/scrum/view/44739-exam-psm-i-topic-1-question-43-discussion/
44	PSM I	https://www.examtopics.com/discussions/scrum/view/2865-exam-psm-i-topic-1-question-44-discussion/
45	PSM I	https://www.examtopics.com/discussions/scrum/view/44668-exam-psm-i-topic-1-question-45-discussion/
46	PSM I	https://www.examtopics.com/discussions/scrum/view/73389-exam-psm-i-topic-1-question-46-discussion/
47	PSM I	https://www.examtopics.com/discussions/scrum/view/40955-exam-psm-i-topic-1-question-47-discussion/
48	PSM I	https://www.examtopics.com/discussions/scrum/view/117718-exam-psm-i-topic-1-question-48-discussion/
49	PSM I	https://www.examtopics.com/discussions/scrum/view/107286-exam-psm-i-topic-1-question-49-discussion/
50	PSM I	https://www.examtopics.com/discussions/scrum/view/44673-exam-psm-i-topic-1-question-50-discussion/
51	PSM I	https://www.examtopics.com/discussions/scrum/view/44674-exam-psm-i-topic-1-question-51-discussion/
52	PSM I	https://www.examtopics.com/discussions/scrum/view/50784-exam-psm-i-topic-1-question-52-discussion/
53	PSM I	https://www.examtopics.com/discussions/scrum/view/37490-exam-psm-i-topic-1-question-53-discussion/
54	PSM I	https://www.examtopics.com/discussions/scrum/view/117721-exam-psm-i-topic-1-question-54-discussion/
55	PSM I	https://www.examtopics.com/discussions/scrum/view/11955-exam-psm-i-topic-1-question-55-discussion/
56	PSM I	https://www.examtopics.com/discussions/scrum/view/117723-exam-psm-i-topic-1-question-56-discussion/
57	PSM I	https://www.examtopics.com/discussions/scrum/view/106138-exam-psm-i-topic-1-question-57-discussion/
58	PSM I	https://www.examtopics.com/discussions/scrum/view/37494-exam-psm-i-topic-1-question-58-discussion/
59	PSM I	https://www.examtopics.com/discussions/scrum/view/117725-exam-psm-i-topic-1-question-59-discussion/
60	PSM I	https://www.examtopics.com/discussions/scrum/view/11589-exam-psm-i-topic-1-question-60-discussion/
61	PSM I	https://www.examtopics.com/discussions/scrum/view/44690-exam-psm-i-topic-1-question-61-discussion/
62	PSM I	https://www.examtopics.com/discussions/scrum/view/269591-exam-psm-i-topic-1-question-62-discussion/
63	PSM I	https://www.examtopics.com/discussions/scrum/view/117728-exam-psm-i-topic-1-question-63-discussion/
64	PSM I	https://www.examtopics.com/discussions/scrum/view/19465-exam-psm-i-topic-1-question-64-discussion/
65	PSM I	https://www.examtopics.com/discussions/scrum/view/21532-exam-psm-i-topic-1-question-65-discussion/
66	PSM I	https://www.examtopics.com/discussions/scrum/view/45637-exam-psm-i-topic-1-question-66-discussion/
67	PSM I	https://www.examtopics.com/discussions/scrum/view/2867-exam-psm-i-topic-1-question-67-discussion/
68	PSM I	https://www.examtopics.com/discussions/scrum/view/117732-exam-psm-i-topic-1-question-68-discussion/
69	PSM I	https://www.examtopics.com/discussions/scrum/view/105496-exam-psm-i-topic-1-question-69-discussion/
70	PSM I	https://www.examtopics.com/discussions/scrum/view/51031-exam-psm-i-topic-1-question-70-discussion/
\.


--
-- PostgreSQL database dump complete
--

\unrestrict ka6vJgzLVvLiXFMwlGpsacmHSmFXVTuu7zffrOWIRx7XKSePf8P5BhpoqjDeoI1

