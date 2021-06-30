/* member ->mb*/

drop table member;
drop SEQUENCE member_sequence;
create SEQUENCE member_sequence increment by 1 MINVALUE 0 MAXVALUE 9999 NOCACHE;

CREATE TABLE member (
	mb_seq number(10,0),
	mb_id VARCHAR2(20) NOT NULL,
	mb_pw VARCHAR2(30) NOT NULL,
	mb_name VARCHAR2(14) NOT NULL,
	mb_nickname VARCHAR2(14),
	mb_phone VARCHAR2(30) NOT NULL,
	mb_gender VARCHAR2(10) NOT NULL,
	mb_email VARCHAR2(100) NOT NULL,
	mb_zipcode VARCHAR2(50) NOT NULL,
	mb_addr VARCHAR2(500) NOT NULL,
	mb_detailAddr VARCHAR2(500) NOT NULL,
	mb_notes VARCHAR2(1000),
	mb_point INT DEFAULT 0 NOT NULL,
	mb_grade VARCHAR2(10) DEFAULT '뉴비' NOT NULL,
	mb_eventNum INT DEFAULT 0 NOT NULL,
	mb_joinDate date DEFAULT sysdate NOT NULL,
    constraint pk_member primary key (mb_seq)
);

insert into member 
values(
member_sequence.nextval,
'hong1234',
'rlfehd777@',
'홍길동',
'길동',
'01012345678',
'여',
'hong1234@naver.com',
'123-456',
'서울 성동구 성수동',
'성수빌딩 10층',
'' ,
DEFAULT,
DEFAULT,
DEFAULT,
DEFAULT);

insert into member 
values(
member_sequence.nextval,
'lim1234',
'dla777@',
'임꺽정',
'꺽정',
'01011112222',
'여',
'lim1234@naver.com',
'123-456',
'서울 강남구 삼성동',
'삼성힐스테이트 201동',
'' ,
DEFAULT,
DEFAULT,
DEFAULT,
DEFAULT);

insert into member 
values(
member_sequence.nextval,
'hongi5678',
'ghong777@',
'홍꺽정',
'홍꺽정',
'01077778888',
'여',
'hong12@naver.com',
'123-456',
'서울 강남구 학동로609',
'청담삼익아파트 11동',
'' ,
DEFAULT,
DEFAULT,
DEFAULT,
DEFAULT);

insert into member 
values(
member_sequence.nextval,
'jang567',
'jangg777@',
'장길산',
'jan',
'01045671324',
'남',
'jang12@naver.com',
'123-456',
'부산 해운대구 우동',
'해운대아이파크',
'' ,
DEFAULT,
DEFAULT,
DEFAULT,
DEFAULT);

insert into member(mb_seq,mb_id,mb_pw,mb_name,mb_nickname,mb_phone,mb_gender,mb_email,mb_zipcode,mb_addr,mb_detailAddr,mb_notes,mb_point,mb_grade,mb_eventNum,mb_joinDate)
select member_sequence.nextval,mb_id,mb_pw,mb_name,mb_nickname,mb_phone,mb_gender,mb_email,mb_zipcode,mb_addr,mb_detailAddr,mb_notes,mb_point,mb_grade,mb_eventNum,mb_joinDate 
from member;


select * from member;










commit;