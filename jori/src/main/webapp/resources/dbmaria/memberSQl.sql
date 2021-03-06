

-- 테스트 회원테이블 생성
create TABLE tb_account(
  ID varchar(20) primary key not null,
  PASSWORD varchar(20) not null,
  NAME varchar(20),
  TEL int(15)
);

-- jori테이블 생성
create TABLE joriMem (
  JMemNo bigint(20) unsigned not null AUTO_INCREMENT,
  EMAIL varchar(30) not null,
  pwd varchar(40) not null,
  nick varchar(30),
  regdate datetime,
  RP bigint(20)unsigned not null default '0',
  JPhon int(20) unsigned,
  jZipcode int(10) unsigned ,
  jaddr varchar(80),
  jaddrDetail varchar(80),
  jCoin bigInt(20) unsigned not null default '0',
  primary key(JMemNo)
);

insert into joriMem(EMAIL, PWD, JORISLT) values('가utf-8@gmail.com', '가나1234', '트name23134ewrewr');

-- 보안 컬럼추가
alter table JORIMEM add joriSlt varchar(30) not null;

commit;

select * from joriMem;

select count(*) from joriMem
  where email = "가utf-8@gmail.com";


select * from tb_account;

-- 회원테이블 수정
-- id, pass, name utf8mb4로 수정
alter table tb_account modify name varchar(20) character set utf8mb4 not null;

-- 테스트 ㄱㅖ정입력 
insert into tb_account(id, password, NAME, TEL ) values('가utf-8', '1234', '트name', 12345679);
insert into tb_account(id, password, NAME, TEL ) values('u', 'u', '트name', 12345679);

-- 조회
select * FROM tb_account;

-- 캐릭터 셋 조회
show variables like 'c%';

set names utf8mb4;

show grants for 'jori_data'@'localhost';

-- 수정안됬던 database 캐릭터 셋 변경 (중요)
ALTER DATABASE jori_db CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- 레코드 삭ㅈㅔ
delete from tb_account where password = 1234



