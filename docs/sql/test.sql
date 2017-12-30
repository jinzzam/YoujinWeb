#db관련
create database mydb; #db제작
use mydb; #db사용
drop database mydb; #db삭제

create table member(   # 테이블을 생성하고 열의 이름과 변수종류와 변수크기와 nn여부를 결정해줌
	name varchar(30) not null,
    birthday date not null,
    gender varchar(1) not null,
    id varchar(30) primary key,
    password varchar(30) not null,
    yourword text 
);

drop table member;  #테이블 삭제

insert into member (name, birthday, gender, id, password, yourword)
values ('박유진', date('1997-11-19'), 'f', 'youjin', 'pass', '김태정=왑최고미남');	#열의 종류를 나열한 뒤에 값을 대입해줌

insert into member 
values ('김태정', date('1993-01-05'), 'm', 'kukaro', 'kukuku', '박유진=왑최고귀요미');

update member set password = 'kakaka', gender = 'f' where id = 'kukaro';
select * from member;	#member table을 조회

show tables;  #테이블이 뭐 있는지 보여줌 (테이블 목록)
desc member;  #그 테이블의 자세한 정보를 알려줌

#status : 콘솔에서만 실행가능, 인코딩 확인 가능

show variables where variable_name LIKE"%dir";	#mysql 설정파일 위치 찾기

alter database mydb default character set utf8;	#database character set 설정
show full columns from member;	#테이블 열 정보 표시
alter table member convert to character set utf8;	# table character set 설정


