use myhome;
drop table if exists team;
create table team(
	teamno		int					NOT NULL AUTO_INCREMENT COMMENT '팀 일련 번호',
	tname		VARCHAR(20)         NOT NULL COMMENT '이름',
	skills		varchar(100)		NOT NULL COMMENT 'java, jsp, spring',
	phone		VARCHAR (100)		NOT NULL COMMENT '전화번호',
	address		VARCHAR (100)		NULL COMMENT '주소',
    zipcode		VARCHAR (100)		NULL COMMENT '우편번호',
    gender		VARCHAR (20)		NULL COMMENT '성별',
	rdate		DATETIME			NOT NULL COMMENT '등록일',
	PRIMARY KEY (teamno)  
);

-- create(5건)
insert into team(tname, skills, phone, address, zipcode, gender, rdate)
values('정푸름1', 'java', '010-1111-1111', 'gimje', '111-111', '여' ,NOW());

insert into team(tname, skills, phone, address, zipcode, gender, rdate)
values('정푸름2', 'java', '010-2222-2222', 'kunsan', '222-222', '여' ,NOW());

insert into team(tname, skills, phone, address, zipcode, gender, rdate)
values('정푸름3', 'java', '010-3333-3333', 'seoul', '333-333', '남' ,NOW());

insert into team(tname, skills, phone, address, zipcode, gender, rdate)
values('정푸름4', 'java, jsp, spring', '010-4444-4444', 'iksan', '444-444', '여' ,NOW());

-- read(1건 : 전체-*)
select teamno, tname, skills, phone, address, zipcode, gender, rdate
from team
where teamno=1;

-- update
update team
set tname = '최푸름', skills = 'java, jsp', phone = '010-5555-5555'
where teamno = 3;
-- delete
delete from team
where teamno = 5;

-- list(검색, 페이징)
select * from team;