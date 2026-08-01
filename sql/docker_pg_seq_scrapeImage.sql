CREATE SEQUENCE seq_imagesLink START WITH 1 INCREMENT BY 1;
SELECT last_value FROM seq_imagesLink;
SELECT nextval('seq_imagesLink') as next_value;