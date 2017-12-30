#db관련
create database mydb; #db제작
use mydb; #db사용
drop database mydb; #db삭제

create table member(
	name varchar(30) not null,
    birthday date not null,
    sex varchar(1) not null,
    id varchar(30) primary key,
    password varchar(30) not null,
    yourword text 
);

show tables;  #테이블이 뭐 있는지 보여줌 (테이블 목록)
desc member;  #그 테이블의 자세한 정보를 알려줌
