#!/bin/sh

# 8629

# 테이블 스페이스 이름 : tbspace01
# 테이블 스페이스 위치 : /home/tibero/Tibero/tibero5/database/tibero/tbspace01.dtf
# 테이블 스페이스 크기 : 1G

# 유저 이름 : ysh8361
# 비밀번호 : ysh8361

# 참고 : https://m.blog.naver.com/PostView.nhn?blogId=dlqorgod&logNo=220232348533&proxyReferer=https:%2F%2Fwww.google.com%2F

CREATE TABLESPACE tbspace01 DATAFILE '/home/tibero/Tibero/tibero5/database/tibero/tbspace01.dtf' SIZE 1G;

CREATE USER ysh8361 IDENTIFIED BY ysh8361 DEFAULT TABLESPACE tbspace01;


GRANT CONNECT TO ysh8361;
GRANT RESOURCE TO ysh8361;
GRANT DBA TO ysh8361;


tbsql ysh8361/ysh8361@tibero


CREATE TABLE tutorial5(
    person_id NUMBER ,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    PRIMARY KEY(person_id)
);

INSERT INTO tutorial5 (person_id, first_name, last_name) VALUES(5, 'a', 'b');