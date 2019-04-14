create database bookcrossing123;
use bookcrossing;
create table if not exists users
(user_id INT,
location STRING,
age INT)
COMMENT 'Book Crossing users cleaned'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\073'
STORED AS TEXTFILE;
LOAD DATA LOCAL INPATH 'BX-Users-Prepro.txt' OVERWRITE INTO TABLE users;
