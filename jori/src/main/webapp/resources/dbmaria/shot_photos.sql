

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


-- shop phots 테이블생성
create TABLE products (
  gdNo bigint(20) unsigned not null AUTO_INCREMENT,
  gdcgNo int(20) unsigned not null default '0',    
  gdName varchar(30) not null,
  gdUrl varchar(80),  
  gdodrCnt bigInt(20) unsigned not null default '0',
  primary key(gdNo)
);

-- products에 순서번호 추가
alter table products add prodSort int(20) not null default '0';

-- products에 토탈판매카운트
alter table products add gdTotalCnt int(20) not null default '0';

--producs에 컬럼수정
alter table products modify gdInfo varchar(90);


-- 상품설명
alter table products add gdInfo varchar(40);

update products set prodSort = 2 where gdNo = 1;

-- 메뉴입력
insert into products(gdcgNo, gdName, gdUrl, gdodrCnt, gdprice )
  values(1, '소고기 된장찌개', 'jjbe1.jpg', 3, 14000);

insert into products(gdcgNo, gdName, gdUrl, gdodrCnt, gdprice )
  values(1, '우렁 된장찌개', 'jjur1.jpg', 3, 14000);

insert into products (gdcgNo, gdName, gdUrl, gdodrCnt, gdprice)
  values(4, '계란말이', 'eggmari.PNG', 3, 6000);
insert into products (gdcgNo, gdName, gdUrl, gdodrCnt, gdprice)
  values(4, '소시지+베이컨구이', 'bacon.jpg', 3, 5000);
  
insert into products (gdcgNo, gdName, gdUrl, gdodrCnt, gdprice )
  values(1, '우러 된장찌개2', 'jjooring2.jpg', 3, 14000);

insert into products (gdcgNo, gdName, gdUrl, gdodrCnt, gdprice )
  values(2, '매콤오삼 볶음', 'jjooring2.jpg', 3, 16000);

insert into products (gdcgNo, gdName, gdUrl, gdodrCnt, gdprice, prodSort, gdTotalCnt, gdInfo )
  values(3, '시래기 갈치조림', 'jokalchi.jpg', 3, 18000, 3, 6, '저희 갈치조림은 갖은 양념과 시레기를 듬뿍 넣어 비린내는 없애고, 갈치 특유의 담백한 맛을 볼 수 있습니다.' );

insert into products (gdcgNo, gdName, gdUrl, gdodrCnt, gdprice, prodSort, gdTotalCnt, gdInfo )
  values(3, '시래기 코다리조림', 'jokodari.jpg', 3, 18000, 3, 6, '코다리의 반건조된 통살에 진한 양념과 시래기가 어울어져 풍부한 맛과 식감을 맛볼 수 있습니다.' );  
  
-- 메뉴수정 설명
update products set gdInfo = '신선한 오징어를 매콤한 소스에 바로 조리해서 오징어 본연의 통통하고 쫄깃한 식감을 제대로 느끼실 수 있습니다.'
  where gdNo = 3;

-- 메뉴수정 이름
update products set gdodrCnt = 5
  where gdNo = 3;

-- 메뉴수정 가격
update products set gdcgNo= 2, gdprice = 16000, gdName='매콤 오징어 볶음'
  where gdNo = 3;

-- 메뉴조호ㅣ
select * from products;

select * from products
  order by gdodrCnt desc, prodSort asc;

SHOW PROCESSLIST;

insert into joriMem(EMAIL, PWD, JORISLT) values('가utf-8@gmail.com', '가나1234', '트name23134ewrewr');

-- 메뉴 가격 추가
alter table products add gdprice int(20) not null default '0';

select * from products
 order by gdodrCnt asc, gdcgNo asc, gdNo asc;
commit;

desc products;
