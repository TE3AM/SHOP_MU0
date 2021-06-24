create user mu identified by mu
default tablespace users
temporary tablespace temp
quota unlimited on users;

grant connect, resource, dba to mu;


create table mu_item(
    it_number number(20) not null primary key,
    it_category1 char(1),
    it_category2 varchar2(20),
    it_img1 varchar2(100),
    it_img2 varchar2(100),
    it_img3 varchar2(100),
    it_name varchar2(30),
    it_baseprice number(30),
    it_saleprice number(30),
    it_option1 varchar2(20), --일반 의류 옵션 1,2 //색상
    it_option2 number(20), --사이즈 
    it_option3 varchar2(20), --beauty 상품 옵션 3,4
    it_option4 varchar2(20),
    it_content varchar2(2000), --상품 설명
    it_sale number(5),
    it_remainCount number(5),
    it_saleCount number(30),
    it_regDate date default sysdate
);

create sequence mu_item_seq
increment by 1
start with 1;

insert into mu_item(it_number, it_saleprice, it_baseprice)
values(mu_item_seq.nextval, 1000, 1000);