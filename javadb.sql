-- member ���̺� ����
-- id(����, 8) pk
-- name(�������ڿ�, 20) not null
-- addr(�������ڿ�, 50) not null
-- email(�������ڿ�, 30) not null
-- age number(3)
create table member(
    id number(8) primary key,
    name varchar2(20) not null,
    addr varchar2(50) not null,
    email varchar2(30) not null,
    age number(3));

desc member;
select * from member;

--- ------------------------------03.25------------------------------------
select * from member;

delete from member where age = 27;
commit;

create sequence member_seq;



