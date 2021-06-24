*****qna table(외래키는 임시)
create table mu_qna(
    qna_bno number(10) not null primary key,
    member_bno number(10) references mu_member(member_bno),
    order_bno number(10) references mu_order(order_bno),
    qna_type varchar2(50),
    qna_title varchar2(50),
    qna_content varchar2(1000),
    qna_img varchar2(100),
    qna_check char(1),
    qna_regdate date default sysdate
);

create table mu_member(
    member_bno number(10) not null primary key
);

create sequence mu_member_seq
increment by 1
start with 1;

create table  mu_order(
    order_bno number(10) not null primary key
);

create sequence mu_order_seq
increment by 1 
start with 1;