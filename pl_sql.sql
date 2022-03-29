-- PL/SQL
-- SQL �����δ� ������ ��ưų� ���� �Ұ����� �۾����� �����ϱ� ���ؼ�
-- �����ϴ� ���α׷��� ���

-- Ű����
-- DECLARE(�����) : ����,���,Ŀ�� ���� ����(����)
-- BEGIN(�����) : ���ǹ�,�ݺ���,SELECT,DML(U,D,I),�Լ� ���� ����(�ʼ�)
-- EXCEPTION(����ó����) : ����(���ܻ�Ȳ) �ذ�(����)

-- ���� ����� ȭ�鿡 ���
SET SERVEROUTPUT ON;

-- Hello ���
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello PL/SQL');
END;
/       -- > / ����� BEGIN END�� �����°�!

DECLARE
    -- ��������
    V_EMPNO NUMBER(4) := 7788;
    V_ENAME VARCHAR2(10);
BEGIN
    V_ENAME := 'SCOTT';
    DBMS_OUTPUT.PUT_LINE('V_EMPNO : ' || V_EMPNO);
    DBMS_OUTPUT.PUT_LINE('V_ENAME : ' || V_ENAME);
END;
/

DECLARE
    -- �������
    V_TAX CONSTANT NUMBER(1) := 3;
BEGIN
    DBMS_OUTPUT.PUT_LINE('V_TAX : ' || V_TAX);
END;
/


-- ������ �⺻�� ����
DECLARE
    V_DEPTNO NUMBER(2) DEFAULT 10;
BEGIN
    DBMS_OUTPUT.PUT_LINE('V_DEPTNO : ' || V_DEPTNO);
END;
/

-- NOT NULL ����
DECLARE
    V_DEPTNO NUMBER(2) NOT NULL := 10;      -- > NOT NULL�ε� NULL �ְԵǸ� �����߻�.
--    V_DEPTNO NUMBER(2) NOT NULL DEFAULT 20;
BEGIN
    DBMS_OUTPUT.PUT_LINE('V_DEPTNO : ' || V_DEPTNO);
END;
/

-- IF ���ǹ�
-- IF ~ THEN
-- IF ~ THEN ~ ELSE
-- IF ~ THEN ~ ELSIF


-- V_NUMBER ���� �����ϰ� 13 ���� �Ҵ��� �� �ش纯���� Ȧ,¦ ���
DECLARE
    V_NUMBER NUMBER := 13;
BEGIN
    IF MOD(V_NUMBER,2) = 1 THEN
        DBMS_OUTPUT.PUT_LINE('Ȧ��');
    END IF;
END;
/

DECLARE
    V_NUMBER NUMBER := 14;
BEGIN
    IF MOD(V_NUMBER,2) = 1 THEN
        DBMS_OUTPUT.PUT_LINE('Ȧ��');
    ELSE
        DBMS_OUTPUT.PUT_LINE('¦��');
    END IF;
END;
/


DECLARE
    V_NUMBER NUMBER := 87;
BEGIN
    IF V_NUMBER >= 90 THEN
        DBMS_OUTPUT.PUT_LINE('A ����');
    ELSIF V_NUMBER >= 80 THEN
        DBMS_OUTPUT.PUT_LINE('B ����');
    ELSIF V_NUMBER >= 70 THEN
        DBMS_OUTPUT.PUT_LINE('C ����');
    ELSIF V_NUMBER >= 60 THEN
        DBMS_OUTPUT.PUT_LINE('D ����');
    ELSE
        DBMS_OUTPUT.PUT_LINE('F ����');
    END IF;
END;
/


-- CASE ~ WITH
DECLARE
    V_SCORE NUMBER := 77;
BEGIN
    CASE TRUNC(V_SCORE/10)
        WHEN 10 THEN DBMS_OUTPUT.PUT_LINE('A ����');
        WHEN 9 THEN DBMS_OUTPUT.PUT_LINE('B ����');
        WHEN 8 THEN DBMS_OUTPUT.PUT_LINE('C ����');
        WHEN 7 THEN DBMS_OUTPUT.PUT_LINE('D ����');
        ELSE
            DBMS_OUTPUT.PUT_LINE('F ����');
    END CASE;
END;
/


-- �ݺ���
-- LOOP ~ END LOOP
-- WHILE LOOP ~ END LOOP
-- FOR LOOP
-- Cursor FOR LOOP

-- LOOP ~ END LOOP
DECLARE
    V_DEPTNO NUMBER(2) := 0;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE('���� V_DEPTNO : ' || V_DEPTNO);
        V_DEPTNO := V_DEPTNO + 1;
        EXIT WHEN V_DEPTNO > 4;         -- > LOOP ���߱� ���� ����.
    END LOOP;
END;
/


-- WHILE LOOP
DECLARE
    V_DEPTNO NUMBER(2) := 0;
BEGIN
    WHILE V_DEPTNO < 4 LOOP
        DBMS_OUTPUT.PUT_LINE('���� V_DEPTNO : ' || V_DEPTNO);
        V_DEPTNO := V_DEPTNO + 1;
    END LOOP;
END;
/


-- FOR LOOP
-- ���۰�..���ᰪ : �ݺ����� ���ؼ� ���۰� ~ ���ᰪ�� ���
BEGIN
    FOR i in 0..4 LOOP
        DBMS_OUTPUT.PUT_LINE('���� i : ' || i);
    END LOOP;
END;
/


-- REVERSE : �Ųٷ� ����
BEGIN
    FOR i in REVERSE 0..4 LOOP
        DBMS_OUTPUT.PUT_LINE('���� i : ' || i);
    END LOOP;
END;
/


-- ���� 1~10���� ���(Ȧ����)
BEGIN
    FOR i in 1..10 LOOP
        if mod(i,2) = 1 THEN
            DBMS_OUTPUT.PUT_LINE('���� i : '|| i);
        END IF;
    END LOOP;
END;


---------------------------------------------------




---------------------------------------------------
-- Ŀ��(\

-- SELECT,DELETE,UPDATE,INSERT SQL �� ����� �ش� SQL���� ó���ϴ� ������
-- ������ �޸� ����

-- SELECT INTO ��� : ������� �ϳ��� �� ��밡��
-- ������� �� ������ �� �� ���� ��� CURSOR ���

-- 1) ����� Ŀ��
-- declare : Ŀ�� ����
-- open : Ŀ�� ����
-- fetch : Ŀ������ �о�� ������ ���
-- close : Ŀ�� �ݱ�

DECLARE
    -- Ŀ�� �����͸� �Է��� ���� ����
    V_DEPT_ROW DEPT%ROWTYPE;
    -- ����� Ŀ�� ����
    CURSOR c1 IS
        SELECT DEPTNO,DNAME,LOC
        FROM DEPT
        WHERE DEPTNO=40;
BEGIN
    -- Ŀ�� ����
    OPEN C1;
    
    -- �о�� ������ ���
    FETCH c1 INTO V_DEPT_ROW;
    
    dbms_output.put_line('DEPTNO : ' || v_dept_row.deptno);
    dbms_output.put_line('DNAME : ' || v_dept_row.dname);
    dbms_output.put_line('LOC : ' || v_dept_row.loc);
    
    -- Ŀ�� �ݱ�
    CLOSE c1;
END;
/


-- ���� ���� ��ȸ�Ǵ� ���

DECLARE
    -- Ŀ�� �����͸� �Է��� ���� ����
    V_DEPT_ROW DEPT%ROWTYPE;
    -- ����� Ŀ�� ����
    CURSOR c1 IS
        SELECT DEPTNO,DNAME,LOC
        FROM DEPT;
BEGIN
    -- Ŀ�� ����
    OPEN C1;
    
    LOOP
        -- �о�� ������ ���
        FETCH c1 INTO V_DEPT_ROW;
        
        -- Ŀ������ ���̻� �о�� ���� ���� �� ����
        EXIT WHEN c1%NOTFOUND;
        
    
        dbms_output.put_line('DEPTNO : ' || v_dept_row.deptno);
        dbms_output.put_line('DNAME : ' || v_dept_row.dname);
        dbms_output.put_line('LOC : ' || v_dept_row.loc);
    END LOOP;
    -- Ŀ�� �ݱ�
    CLOSE c1;
END;
/


-- Cursor for ~ loop
DECLARE
    -- ����ڰ� �Է��� �μ� ��ȣ�� �����ϴ� ���� ����
    v_deptno DEPT.DEPTNO%TYPE;
    
    -- ����� Ŀ�� ����
    CURSOR c1 (p_deptno DEPT.DEPTNO%TYPE) IS
        SELECT DEPTNO,DNAME,LOC
        FROM DEPT
        WHERE deptno = p_deptno;
BEGIN
    -- input_deptno�� �μ���ȣ �Է¹ް� v_deptno�� ����
    v_deptno := $input_deptno;
    
    -- �ڵ� OPEN, FETCH, CLOSE
    FOR c1_rec IN c1(v_deptno) LOOP
        dbms_output.put_line('DEPTNO : ' || c1_rec.deptno
        || 'DNAME : ' || c1_rec.dname
        || 'LOC : ' || c1_rec.loc);
    END LOOP;
END;
/

-- ������ Ŀ�� : Ŀ�� ���� ���� ���
-- SELECT ~ INTO / DML(update/delete/insert)
-- SQL$ROWCOUNT : ������ Ŀ�� �ȿ� ����� ���� ������ ���� �� ���
-- SQL%FOUND : ������ Ŀ�� �ȿ� ����� ���� ������ TRUE, ������ FALSE
-- SQL%ISOPEN : �ڵ����� SQL���� ������ �� CLOSE �Ǳ� ������ �׻� FALSE
-- SQL%NOTFOUND : Ŀ�� �ȿ� ����� ���� ������ TRUE, ������ FALSE
BEGIN
    UPDATE dept_temp SET dname = 'DATABASE' WHERE deptno = 60;
    
    dbms_output.put_line('���ŵ� ���� �� : ' || SQL%ROWCOUNT);
    
    IF SQL%FOUND THEN
        dbms_output.put_line('���� ��� �� ���� ���� : TRUE');
    ELSE
        dbms_output.put_line('���� ��� �� ���� ���� : FALSE');
    END IF;
    
    IF SQL%ISOPEN THEN
        dbms_output.put_line('Ŀ���� OPEN ���� : TRUE');
    ELSE
        dbms_output.put_line('Ŀ����  ���� : FALSE');
    END IF;
END;
/

-- ���� ���� ���α׷�(�̸�����, ���� , ������ �� �� �� ������, �����ؼ� ��� ����
-- �ٸ� �������α׷����� ȣ�� ����)
-- �� ���� ���ν��� : sql �������� ��� �Ұ�
-- �� ���� �Լ� : sql ������ ��� ����
-- �� Ʈ���� : Ư����Ȳ�� �߻��� �� �ڵ����� ���޾� ������ ����� �����ϴµ� ���
-- �� ��Ű�� : ���弭�� ���α׷��� �׷�ȭ�� �� ���


CREATE PROCEDURE pro_noparam        -- ���ν����� ����
IS
    V_EMPNO NUMBER(4) := 7788;      -- �����
    V_ENAME VARCHAR2(10);
BEGIN
    V_ENAME :='SCOTT';
    dbms_output.put_line('V_EMPNO : '||v_EMPNO);    -- ����� �ٷξȳ����� �����ϵǾ����ϴ�.��� ����.
    dbms_output.put_line('V_ENAME : '||v_ENAME);    -- ����Ȱ�.
END;
/
    
EXECUTE pro_noparam;        -- ���ν��� ����

-- �ٸ� PL/SQL ��Ͽ��� ���ν��� ����
BEGIN
    pro_noparam;
END;
/

-- ���ν��� �ۼ� �� �Ķ���Ͱ� �����ϴ� ���
-- IN(�⺻��-��������);


CREATE OR REPLACE PROCEDURE pro_noparam_in
(
    param1 IN NUMBER,
    param2 NUMBER,
    param3 NUMBER := 3,
    param4 NUMBER DEFAULT 4
)
IS
    
BEGIN
    dbms_output.put_line('param1 : '||param1);   
    dbms_output.put_line('param2 : '||param2); 
    dbms_output.put_line('param3 : '||param3);
    dbms_output.put_line('param4 : '||param4);
END;
/

execute pro_noparam_in(1,2);        -- 2���� �Է��ص� ���� ���� �ڵ����� ����
execute pro_noparam_in(5,6,7,8);    -- 4���� �ָ� ����� ����


-- OUT ���
CREATE OR REPLACE PROCEDURE pro_param_out
(
    in_empno IN EMP.EMPNO%TYPE,
    out_ename OUT EMP.ENAME%TYPE,
    out_sal OUT EMP.SAL%TYPE
)
IS
BEGIN
    SELECT ename,sal INTO out_ename, out_sal
    FROM emp
    WHERE empno = in_empno;
END;
/


DECLARE
    V_ENAME EMP.ENAME%TYPE;
    V_SAL EMP.SAL%TYPE;
BEGIN
    pro_param_out(7369,V_ENAME,V_SAL);
    DBMS_OUTPUT.PUT_LINE('ename : '||V_ENAME);
    DBMS_OUTPUT.PUT_LINE('sal : '||V_SAL);
END;
/

-- IN OUT ���
CREATE OR REPLACE PROCEDURE pro_param_in_out
(
    in_out_no IN OUT NUMBER
)
IS
BEGIN
    in_out_no := in_out_no * 2;
END;
/


DECLARE
    no NUMBER;
BEGIN
    no := 5;
    pro_param_in_out(no);
    DBMS_OUTPUT.PUT_LINE('no : ' || no);
END;
/

-- Ʈ����
-- DML Ʈ����
-- CREATE OR REPLACE trigger Ʈ�����̸�
-- BEFORE | AFTER
-- INSERT | UPDATE | DELETE ON ���̺��̸�
-- DECLARE
-- BEGIN 
-- END

create table emp_trg as select * from emp;

-- emp_trg insert (�ָ��� ������� �߰��� ����), update, delete

CREATE OR REPLACE trigger emp_trg_weekend
BEFORE
INSERT or UPDATE or DELETE ON emp_trg
BEGIN
    IF TO_CHAR(sysdate,'DY') in ('��','��') THEN
        IF INSERTING THEN
            raise_application_error(-30000,'�ָ� ������� �߰� �Ұ�');
        ELSIF UPDATING THEN
            raise_application_error(-30001,'�ָ� ������� ���� �Ұ�');
        ELSIF DELETING THEN 
            raise_application_error(-30002,'�ָ� ������� ���� �Ұ�');
        ELSE
            raise_application_error(-30003,'�ָ� ������� ���� �Ұ�');
        END IF;
    END IF;
END;
/

UPDATE emp_trg      -->raise_application_error of -30002 is out of range
SET sal = 3500      -->�ָ��� ��¥ ������ �� �����ϴ� Ʈ���ŷ� ������ �����߻�.
WHERE empno=7369;

DELETE FROM emp_trg WHERE EMPNO=7369;

-- Ʈ���� �߻� ���� ���̺� ����
CREATE TABLE EMP_TRG_LOG(
    TABLENAME VARCHAR2(20), -- DML �� ����� ���̺� �̸�
    DML_TYPE VARCHAR2(10),  -- DML ��ɾ� ����
    EMPNO NUMBER(4),        -- DML ����� �� �����ȣ
    USER_NAME VARCHAR2(30), -- DML �� ������ USER ��
    CHANGE_DATE DATE);      -- DML �õ� ��¥


CREATE OR REPLACE trigger emp_trg_weekend_log
AFTER
INSERT or UPDATE or DELETE ON emp_trg
FOR EACH ROW        -- �� ���� ���� �����ϰڴ�.
BEGIN
    IF INSERTING THEN
        INSERT INTO emp_trg_log
        VALUES('EMP_TRG','INSERT', :new.empno, SYS_CONTEXT('USERENV','SESSION_USER'), sysdate);
             
    ELSIF UPDATING THEN
        INSERT INTO emp_trg_log
        VALUES('EMP_TRG','UPDATE', :old.empno, SYS_CONTEXT('USERENV','SESSION_USER'), sysdate);
        
    ELSIF DELETING THEN 
        INSERT INTO emp_trg_log
        VALUES('EMP_TRG','DELETE', :old.empno, SYS_CONTEXT('USERENV','SESSION_USER'), sysdate);
        
    END IF;
END;
/

























