-- sql ������ ��ҹ��ڸ� �������� ����
-- hr  ������� ��й�ȣ ����

ALTER USER hr IDENTIFIED BY hr
    ACCOUNT UNLOCK;

-- ����Ŭ �����ͺ��̽� Ư¡
-- ���̺�, �ε���, ��... �������� ��ü�� ����ں��� �����ǰ� ����
-- ����� == ��Ű��(�����ͺ��̽� ���� ����)

-- ����� ����
-- create user ���̵� IDENTIFIED BY ��й�ȣ;

create user test1 IDENTIFIED BY 12345;

-- ���� �ο�
-- grant create ���Ѹ� to �����;

-- user TEST1 lacks CREATE SESSION privilege; logon denied -> sql command ���� �����Ϸ��� �����߻�.(���� �ο� �����ʾҴٴ� ����)
grant create session to test1;
-- table ���� ���� �ο�
grant create table to test1;

-- ��(�������ѵ��� ������� ����)
-- resource : ������, table, trigger.. ��ü ������ �� �ִ� ������ �� ����
-- connect : create session �� ��� ����
grant resource,connect to test1;        -- ���� �ֱ�


-- ����� ��й�ȣ ����
alter user test1 IDENTIFIED BY 54321;

-- ����� ����
drop user test1 cascade;

-- ������ ����� ������
create user javadb IDENTIFIED BY 12345;
grant resource,connect to javadb;


-- scott���� view ���� ���� �ο�
grant create view to scott;























