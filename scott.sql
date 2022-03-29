-- dept���̺� ����(�μ�����-�μ���ȣ,�μ���,��ġ)
DESC
dept;

-- �������(�����ȣ,�����,��å,���ӻ�� �����ȣ,�Ի���,�޿�,�߰�����,�μ���ȣ)
desc emp;

--�޿�����(���, �����޿�,�ְ�޿�)
desc salgrade;

-- ��ȸ(SELECT) : ���� ���� ���
-- SELECT ��ȸ�ϰ� ���� ���̸� ����
-- FROM ��ȸ�� ���̺��

SELECT

DEPTNO
    deptno
DEPT
    deptSELECT

DEPTNO
    deptnoDNAME
    dname
DEPT
    deptSELECT

*
    FROM
DEPT
    deptSELECT

*
    FROM
EMP
    empSELECT

EMPNO
    empnoENAME
    enameDEPTNO
    deptno
EMP
    emp

-- DISTINCT : �ߺ� ������ ����
    SELECT

DISTINCT DEPTNO
    deptno
EMP
    empSELECT

DISTINCT JOB
    jobDEPTNO
    deptno
EMP
    emp
    
-- ALAIS(��Ī)
-- as ��Ī : as �������� 
    SELECT

ENAME
    ename           ����� �����SAL
    sal             �޿� �޿�COMM
    comm            "�߰� ����" "�߰� ����"SAL
    sal 12 + COMM comm ����       -- ��Ī
     ����
EMP
    emp
    
-- ���ϴ� ������ ��� �����͸� ����
-- order by ������ ���̸� [���Ŀɼ�]

-- emp ���̺��� ename,sal ��ȸ�� �� sal �������� ��ȸ
    SELECT

ENAME
    enameSAL
    sal
EMP
    emp
BY SAL
    sal ;
    
-- emp ���̺��� ename,sal ��ȸ�� �� sal �������� ��ȸ
    SELECT

ENAME
    enameSAL
    sal
EMP
    emp
BY SAL
    sal ;
    
-- EMP ���̺��� ��ü ���� ��ȸ(�μ���ȣ�� ���������̰�, �޿��� ��������)
    SELECT

*
    FROM
EMP
    emp
BY DEPTNO
    deptno ,SAL
    sal ;SELECT 
from emp
order by deptno ASC, sal
desc;

-- Ư���� ������ �������� ������ ��ȸ
-- SELECT ~ FROM ~ WHERE ����

SELECT
    *
FROM
    emp
WHERE
    deptno = 30;
    
-- �����ȣ�� 7782 �� ��� ��ȸ
SELECT
    *
FROM
    emp
WHERE
    empno = 7782;
    
-- �μ���ȣ�� 30�̰� �����å�� SALESMAN �� ��� ��ȸ
-- ���ڿ� ǥ�� : Ȭ����ǥ
SELECT
    *
FROM
    emp
WHERE
        deptno = 30
    AND job = 'SALESMAN';
    
-- �����ȣ�� 7499�̰� �μ���ȣ�� 30�� ��� ��ȸ
SELECT
    *
FROM
    emp
WHERE
        empno = 7499
    AND deptno = 30;
    
-- �μ���ȣ�� 30 �̰ų�, �����å�� CLERK �� ��� ��ȸ
SELECT
    *
FROM
    emp
WHERE
    deptno = 30
    OR job = 'CLERK';
    
-- ������
-- ���������
SELECT
    *
FROM
    emp
WHERE
    sal * 12 = 36000;
    
-- �񱳿�����(>,<,>=,<=)
-- sal�� 3000 �̻��� �������� ���Ͻÿ�.
SELECT
    *
FROM
    emp
WHERE
    sal >= 3000;

-- ���ڵ� ��Һ� �����ڰ� ����
-- ENAME 'F' �̻��� ��� ��ȸ(��� �̸��� ù���ڰ� F�� ���ų� ������ �� ��ȸ)
SELECT
    *
FROM
    emp
WHERE
    ename >= 'F';

-- �޿��� 2500�̻��̰�, ������ ANALYST �� ��� ��ȸ
SELECT
    *
FROM
    emp
WHERE
        sal >= 2500
    AND job = 'ANALYST';

-- ������ MANAGER �̰ų� SALESMAN �̰ų� CLERK ��� ��ȸ
SELECT
    *
FROM
    emp
WHERE
    job = 'MANAGER'
    OR job = 'SALESMAN'
       OR job = 'CLERK';
       
-- ��񱳿�����(���� : =, �����ʴ� : !=, <>, ^= )
-- �޿��� 3000�� �ƴ� ��� ��ȸ
SELECT
    *
FROM
    emp
WHERE
    sal != 3000;

SELECT
    *
FROM
    emp
WHERE
    sal <> 3000;

SELECT
    *
FROM
    emp
WHERE
    sal^= 3000;
    
-- ������������ : NOT
SELECT
    *
FROM
    emp
WHERE
    NOT sal = 3000;
    
    
-- IN ������ : = �� �ǹ̿� ����
-- ������ MANAGER �̰ų� SALESMAN �̰ų� CLERK ��� ��ȸ
SELECT
    *
FROM
    emp
WHERE
    job IN ( 'MANAGER', 'SALESMAN', 'CLERK' );
    
-- IN ����ؼ� �μ���ȣ�� 10,20���� ��� ��ȸ
SELECT
    *
FROM
    emp
WHERE
    deptno IN ( 10, 20 );
    
-- job�� 'MANAGER'�� �ƴϰ� job�� 'SALESMAN'�� �ƴϰ� 'CLERK'�� �ƴ� �����
SELECT
    *
FROM
    emp
WHERE
        job != 'MANAGER'
    AND job <> 'SALESMAN'
        AND job^= 'CLERK';

-- NOT + IN
SELECT
    *
FROM
    emp
WHERE
    job NOT IN ( 'MANAGER', 'SALESMAN', 'CLERK' );
    
    
-- BETWEEN A AND B ������ : �޿��� 2000�̻� 3000����
SELECT
    *
FROM
    emp
WHERE
    sal BETWEEN 2000 AND 3000;
    
-- �޿��� 2000 �̻� 3000 ���ϰ� �ƴ� ��� ��ȸ
SELECT
    *
FROM
    emp
WHERE
    sal NOT BETWEEN 2000 AND 3000;



-- LIKE �����ڿ� ���ϵ� ī��( _ : � ���̵� ������� �� �Ѱ��� ���� ������
--                         % : � ���̵� ������� ���̿� ������� ��� ���� ������)


-- ��� �̸��� S�� �����ϴ� ��� ���� ��ȸ
SELECT
    *
FROM
    emp
WHERE
    ename LIKE 'S%';
-- ��� �̸��� �ι��� ���ڰ� L �� ��� ���� ��ȸ
SELECT
    *
FROM
    emp
WHERE
    ename LIKE '_L%';
-- ��� �̸��� AM �� ����ִ� ��� ��ȸ
SELECT
    *
FROM
    emp
WHERE
    ename LIKE '%AM%';

-- ��� �̸��� AM �� ������� �ʴ� ��� ���� ��ȸ
SELECT
    *
FROM
    emp
WHERE
    ename NOT LIKE '%AM%';

-- IS NULL / IS NOT NULL ������

-- Comm �� null �� ��� ��ȸ
SELECT
    *
FROM
    emp
WHERE
    comm IS NULL;   -- IS �ٿ��� ã��.
    


-- MGR �� ���� �ƴ� ��� ��ȸ
SELECT
    *
FROM
    emp
WHERE
    mgr IS NOT NULL;
    
-- ���� ������
-- union(������), minus(������), intersect(������)

--deptno=10 or deptno=20 ��� ��ȸ : union ����ؼ�
SELECT
    empno,
    ename,
    job
FROM
    emp
WHERE
    deptno = 10
UNION ALL
SELECT
    mgr,
    ename,
    job
FROM
    emp
WHERE
    deptno = 20;

-- UNION(�ߺ�����) <-> UNION ALL(�ߺ�����) Ȯ���ϱ�.
SELECT
    empno,
    ename,
    job
FROM
    emp
WHERE
    deptno = 10
UNION ALL
SELECT
    empno,
    ename,
    job
FROM
    emp
WHERE
    deptno = 10;


-- MINUS
SELECT
    empno,
    ename,
    job,
    deptno
FROM
    emp
MINUS
SELECT
    empno,
    ename,
    job,
    deptno
FROM
    emp
WHERE
    deptno = 10;


-- Intersect
SELECT
    empno,
    ename,
    job,
    deptno
FROM
    emp
INTERSECT
SELECT
    empno,
    ename,
    job,
    deptno
FROM
    emp
WHERE
    deptno = 10;


-- [����] ��� �̸�(ENAME)�� S�� ������ ��� �����͸� ����Ѵ�.
SELECT
    *
FROM
    emp
WHERE
    ename LIKE '%S';

-- [����] 30�� �μ�(DEPTNO)���� �ٹ��ϰ� �ִ� ��� �߿� ��å(JOB)��
-- SALESMAN �� ����� �����ȣ, �̸�, ��å, �޿�, �μ� ��ȣ�� ����Ѵ�.
SELECT
    empno,
    ename,
    sal,
    deptno
FROM
    emp
WHERE
        deptno = 30
    AND job = 'SALESMAN';

-- [����] 20��, 30�� �μ��� �ٹ��ϰ� �ִ� ��� �� �޿�(SAL)�� 2000 �ʰ���
-- ����� ���� �� ���� ����� SELECT ���� ����Ͽ� �����ȣ, �̸�, ��å, �޿�,
-- �μ� ��ȣ�� ����ϴ� SQL ���� �ۼ��� ���ÿ�.
-- ���� �����ڸ� ������� ���� ���

SELECT
    empno,
    ename,
    job,
    sal,
    deptno
FROM
    emp
WHERE
    deptno IN ( 20, 30 )
    AND sal > 2000;

-- ���� �����ڸ� ����� ���
SELECT
    empno,
    ename,
    job,
    sal,
    deptno
FROM
    emp
WHERE
    sal > 2000
MINUS
SELECT
    empno,
    ename,
    job,
    sal,
    deptno
FROM
    emp
WHERE
    deptno = 10;



-- [����] NOT BETWEEN A AND B �����ڸ� ���� �ʰ�, �޿�(SAL) �� ����
-- 2000 �̻� 3000���� ���� �̿��� ���� �����͸� ����ϵ��� SQL ���� �ۼ��Ͻÿ�.
SELECT
    *
FROM
    emp
WHERE
    sal < 2000
    OR sal > 3000;

-- [����] ��� �̸��� E �� ���ԵǾ� �ִ� 30�� �μ��� ��� �� �޿��� 1000~2000 ���̰�
-- �ƴ� ��� �̸�, ��� ��ȣ, �޿�, �μ� ��ȣ�� ����ϴ� SQL���� �ۼ�

SELECT
    ename,
    empno,
    sal,
    deptno
FROM
    emp
WHERE
    ename LIKE '%E%'
    AND deptno = 30
        AND sal NOT BETWEEN 1000 AND 2000;

-- [����] �߰� ������ �������� �ʰ� ����ڰ� �ְ� ��å�� MANAGER, CLERK�� ���
-- �߿��� ��� �̸��� �� ��° ���ڰ� L�� �ƴ� ����� ������ ����ϴ� SQL ���� �ۼ�

SELECT
    *
FROM
    emp
WHERE
    comm IS NULL
    AND mgr IS NOT NULL
        AND job IN ( 'MANAGER', 'CLERK' )
            AND ename NOT LIKE '_L%';

-- ����Ŭ �Լ�

-- ��ҹ��� ���� : UPPER(), LOWER(), INITCAP()

SELECT
    ename,
    upper(ename),
    lower(ename),
    initcap(ename)
FROM
    emp;


-- dual : sys�� �����ϴ� ���̺�
--        �ӽ� �����̳� �Լ��� ����� Ȯ���ϴ� �뵵


-- ���ڿ� ���� : LENGTH / ���ڿ� ����Ʈ �� ��ȯ : LENGTHB
SELECT
    length('�ѱ�'),
    lengthb('�ѱ�'),
    length('ab'),
    lengthb('ab')
FROM
    dual;

-- [�ǽ�] ��å �̸��� 6���� �̻��� ��� ��ȸ
SELECT
    *
FROM
    emp
WHERE
    length(job) >= 6;

-- ���ڿ� ���� : substr(����������,������ġ,[�������]) -> []�� �ü��� �ְ� �ȿü��� �ִ°�

SELECT
    job,
    substr(job, 1, 2),
    substr(job, 3, 2),
    substr(job, 5)
FROM
    emp;

-- [����] emp ���̺��� ��� ��� �̸��� ����° ���ں��� ������ ���
-- ename, ���⹮�ڿ� ���

SELECT
    ename,
    substr(ename, 3)
FROM
    emp;


-- ���ڿ� ������ �ȿ��� Ư�� ���� ��ġ ã�� : 
-- INSTR(���ڿ�������,��ġ�� ã������ �κ� ����,������ġ,������ġ���� ã������ ���� �� ��°���� ����)
select 
    instr('HELLO ORACLE!', 'L') AS instr1,
    instr('HELLO ORACLE!', 'L',5) AS instr2,
    instr('HELLO ORACLE!', 'L', 2, 2) AS instr3
from
dual;


-- ����̸��� S�� �ִ� ��� ��ȸ
SELECT
    *
FROM
    emp
WHERE
    instr(ename, 'S') > 0;


-- Ư�����ڸ� �ٸ� ���ڷ� ���� : REPLACE(����,ã�¹���,�ٲܹ���)
SELECT
    '010-1234-5678'                    AS replace_before,
    replace('010-1234-5678', '-', ' ') AS replace1,
    replace('010-1234-5678', '-')      AS replace2
FROM
    dual;

-- ���ڿ� ���� : CONCAT(����1,����2)
SELECT
    concat(empno, ename)
FROM
    emp;

SELECT
    concat(empno, concat(':', ename))  -- �����ϴ� ���� ���̿� ':' �־ ����������.
FROM
    emp;

-- ���ڿ� ���� : ||

SELECT
    empno || ename
FROM
    emp;

SELECT
    empno || ':'
             || ename
FROM
    emp;

-- Ư�� ���ڿ� ����(�ƹ��͵� ���ָ� ��������) : TRIM(), LTRIM(), RTRIM()
SELECT
    '   �̰���   ',
    TRIM('   �̰���   '),
    ltrim('   �̰���   '),
    rtrim('   �̰���   ')
FROM
    dual;

-- �����Լ�
-- round() : �ݿø�, trunc() : ����,
-- ceil() : ������ ���ں��� ū �������� ���� ���� ����
-- floor() : ������ ���ں��� ���� �����߿��� ���� ū ����
-- mod() : ������

SELECT
    round(1234.5678)      AS round,     -- ���ְų� 0 => ù���ڸ����� �ݿø�.(��������)
    round(1234.5678, 0)   AS round1,
    round(1234.5678, 1)   AS round2,
    round(1234.5678, 2)   AS round3,
    round(1234.5678, - 1) AS round4,
    trunc(1234.5678, - 2) AS round5
FROM
    dual;

SELECT
    trunc(1234.5678)      AS trunc,     -- ����.
    trunc(1234.5678, 0)   AS trunc1,
    trunc(1234.5678, 1)   AS trunc2,
    trunc(1234.5678, 2)   AS trunc3,
    trunc(1234.5678, - 1) AS trunc4,
    trunc(1234.5678, - 2) AS trunc5
FROM
    dual;

SELECT
    ceil(3.14),     -- 4 : �ø�
    floor(3.14),    -- 3 : ����
    ceil(- 3.14),   -- -3
    floor(- 3.14)   -- -4
FROM
    dual;



-- ��¥ �Լ� : ������ ������
-- sysdate, current_date, current_timestamp 

select sysdate, current_date, current_timestamp FROM
dual;

SELECT
    sysdate     AS now,
    sysdate - 1 AS yesterday,
    sysdate + 1 AS tomorrow
FROM
    dual;


-- add_months() : �� ���� ���� ��¥ ���ϱ�
SELECT
    sysdate,
    add_months(sysdate, 3)
FROM
    dual;

-- �Ի� 20�ֳ��� �Ǵ� ����� ��ȸ
SELECT
    empno,
    ename,
    hiredate,
    add_months(hiredate, 240)
FROM
    emp;


-- ���� ��¥�� �������� �Ի� 45�� �̸��� ��� ��ȸ
SELECT
    *
FROM
    emp
WHERE
    sysdate < add_months(hiredate, 540);

-- months_between(��¥1,��¥2) : �� ��¥ ������ ���� ��¥ ���̸� ���� ���� ���

SELECT
    empno,
    ename,
    hiredate,
    sysdate,
    months_between(hiredate, sysdate)        AS months1,
    months_between(sysdate, hiredate)        AS months2,
    trunc(months_between(sysdate, hiredate)) AS months3
FROM
    emp;
    
    
-- next_day() : Ư�� ��¥�� �������� ���ƿ��� ������ ��¥ ���
-- last_day() : Ư�� ��¥�� ���� ���� ������ ��¥ ���
SELECT
    sysdate,
    next_day(sysdate, '������'),
    last_day(sysdate)
FROM
    dual;


-- ����ȯ �Լ�
SELECT
    empno,
    ename,
    empno + '500'
FROM
    emp
WHERE
    ename = 'SMITH';

DESC emp;

SELECT
    empno,
    ename,
    '500' + empno
FROM
    emp
WHERE
    ename = 'SMITH';

-- TO_CHAR() : ����, ��¥ �����͸� ���� �����ͷ� ��ȯ
-- TO_NUMBER() : ���� �����͸� ���� �����ͷ� ��ȯ
-- TO_DATE() : ���� �����͸� ��¥ �����ͷ� ��ȯ

SELECT
    to_char(sysdate, 'YYYY/MM/DD HH24:MI:SS') AS ���糯¥�ð�
FROM
    dual;

SELECT
    to_char(sysdate, 'MM')    AS mm,
    to_char(sysdate, 'MON')   AS mon,
    to_char(sysdate, 'MONTH') AS month,
    to_char(sysdate, 'DD')    AS dd,
    to_char(sysdate, 'DY')    AS dy,
    to_char(sysdate, 'DAY')   AS day
FROM
    dual;

SELECT
    to_char(sysdate, 'HH24:MI:SS')    AS hh24miss,
    to_char(sysdate, 'HH24:MI:SS AM') AS mon,
    to_char(sysdate, 'HH:MI:SS P.M.') AS hhmiss_pm,
    to_char(sysdate, 'HH:MI:SS')      AS hhmiss      -- 12�ð�
FROM
    dual;

SELECT
    1300 - '1500',
    '1300' + 1500
FROM
    dual;

SELECT
    '1,300' + '1,500'
FROM
    dual;

-- 9 : ���� ���ڸ��� �ǹ���
SELECT
    to_number('1,300', '999,999') + to_number('1,500', '999,999')
FROM
    dual;

SELECT
    sal,
    to_char(sal, '$999,999') AS sal_$
FROM
    emp;

SELECT
    TO_DATE('2022-03-22', 'YYYY-MM-DD') AS date1,
    TO_DATE('20220322', 'YYYY-MM-DD')   AS date2
FROM
    dual;

-- 1981�� 6�� 1�� ���Ŀ� �Ի��� ��� ���� ��ȸ
SELECT
    *
FROM
    emp
WHERE
    hiredate > TO_DATE('1981-06-01', 'YYYY-MM-DD');
    
-- null ó�� �Լ�

SELECT
    empno,
    ename,
    sal,
    comm,
    sal + comm
FROM
    emp;

-- nvl(�ΰ� ��, ���ΰ�� ����� ��)
SELECT
    empno,
    ename,
    sal,
    nvl(comm, 0),
    sal + nvl(comm, 0)
FROM
    emp;

-- nvl2(�ΰ� ��,���� �ƴ� ��� ����� ��, ���ΰ�� ����� ��)
SELECT
    empno,
    ename,
    sal,
    nvl2(comm, '0', 'X'),
    sal + nvl2(comm, sal * 12 + comm, sal * 12)
FROM
    emp;


-- DECODE �Լ��� CASE ��
-- decode(����� �� �� Ȥ�� ������,
--  ����1, ����1�� ��ġ�� ��ȯ�� ���,
--  ����2, ����2�� ��ġ�� ��ȯ�� ���,
--  ����1~����n���� �������� �� ��ȯ�� ���
-- )
-- job_id�� ���� ������ �ٸ��� �� ���� ����
- job_id�� ���� ������ �ٸ��� �� ���� ����
SELECT
    empno,
    ename,
    job,
    sal,
    decode(job, 
        'MANAGER', sal * 1.1, 'SALESMAN', sal * 1.05,
        'ALALYST', sal, sal * 1.03) AS upsal
FROM
    emp;

SELECT
    empno,
    ename,
    job,
    sal,
    decode(job, 
        when 'MANAGER' then sal * 1.1 
        when 'SALESMAN' then sal * 1.05                     // ���Ǻ��� �����ϱ�!
        when 'ALALYST' then sal
    ELSE
        sal * 1.03 END AS upsal
FROM
    emp;


SELECT
    empno,
    ename,
    job,
    sal,
    CASE 
        when comm is null then '�ش���׾���'
        when comm=0 then '�������
        when comm>0 then '���� :' || comm
    end as comm_text
FROM
    emp;


SELECT
    empno,
    ename,
    job,
    sal,
    decode(job, 
        when 'MANAGER' then sal * 1.1 
        when 'SALESMAN' then sal * 1.05                     // ���Ǻ��� �����ϱ�!
        when 'ALALYST' then sal
    ELSE
        sal * 1.03 END AS upsal
FROM
    emp;


SELECT
    empno,
    ename,
    job,
    sal,
    CASE 
        when comm is null THEN '�ش���׾���'
        when comm= 0 TH '�������
        when comm>0 then '���� :' || comm
    end as comm_text
FROM
emp;
    

-- [����] emp ���̺��� �� ��� �ٹ��ϼ� 21.5��
-- �Ϸ�޿�(day_pay), �ñ�(time_pay)
-- day_pay �Ҽ��� ��°�ڸ����� ������
-- tim_pay �Ҽ��� ��° �ڸ����� �ݿø�

SELECT
    empno,
    ename,
    sal,
    trunc(sal / 21.5, 2)     AS day_pay,
    round(sal / 21.5 / 8, 1) AS time_pay
FROM
    emp;

-- emp ���̺��� �Ի��� �������� 3������ ���� �� ù �����Ͽ� �������� ��
-- �������� �� ��¥ ���ϱ�
-- �߰������� ��ȸ�� �� null �� ���� N/A �� ���
SELECT
    comm,
    nvl(comm, 'N/A')
FROM
    emp;  -- ���� �߻�


SELECT
    comm,
    nvl(to_char(comm), 'N/A')
FROM
    emp;  --���ڰ� �ִ� comm�� ���ڷ� ���� �� -> ���� ��.


SELECT
    empno,
    ename,
    hiredate,
    next_day(add_months(hiredate, 3), '������') AS r_job,
    nvl(to_char(comm)) AS comm
FROM
    emp;


--[����] emp ���̺��� mgr �������� ���
-- mgr �������� ������ 0000
-- mgr 75  �� ��� : 5555
-- mgr 76  �� ��� : 6666
-- mgr 77  �� ��� : 7777
-- mgr 78  �� ��� : 8888
-- �׿� ������� mgr ���
-- �׿� ������� mgr ���

select empno,
    ename,
    mgr,
    decode(substr(to_char(mgr), 1, 2),
    NULL, '0000', '75', '5555', 
    '76', '6666', '77', '7777', '78',
    '8888', substr(to_char(mgr), 1)) AS chg_mgr
from
emp;

SELECT
    empno,       -- case����
    ename,
    mgr,
    CASE
        WHEN mgr IS NULL THEN
            '0000'
        WHEN substr(to_char(mgr), 1, 2) = '75' THEN
            '5555'
        WHEN substr(to_char(mgr), 1, 2) = '76' THEN
            '6666'
        WHEN substr(to_char(mgr), 1, 2) = '77' THEN
            '7777'
        WHEN substr(to_char(mgr), 1, 2) = '78' THEN
            '8888'
        ELSE
            to_char(mgr)
    END AS chg_mgr
FROM
    emp;
    

-- ������ �Լ�
-- sum(), count(), max(), min(), avg()


-- �߰����� �հ�
SELECT
    SUM(comm)
FROM
    emp;

SELECT
    SUM(DISTINCT sal),
    SUM(sal)
FROM
    emp;


-- emp ���̺��� ��� �� ���
SELECT
    COUNT(*) -- ��ü ������ ��� �ִ��� Ȯ���Ҷ� (���̾�)
FROM
    emp;

SELECT
    COUNT(*)
FROM
    emp
WHERE
    deptno = 30;


-- �޿��� �ִ밪
SELECT
    MAX(sal)
FROM
    emp;

-- �޿��� �ּҰ�
SELECT
    MIN(sal)
FROM
    emp;

-- �μ���ȣ�� 20���� ��� �� ���� ������ �Ի��� ���ϱ�
SELECT
    MIN(hiredate)
FROM
    emp
WHERE
    deptno = 20;
    
-- �μ���ȣ�� 30���� ������� �޿� ��� ���
SELECT
    round(AVG(sal))
FROM
    emp
WHERE
    deptno = 30;
    

-- �μ��� ��� �޿� ���

SELECT
    deptno,
    AVG(sal) -- ORA-00937: not a single-group group function
FROM
    emp;

-- group by : ������� ���ϴ� ���� ���� ���

SELECT
    deptno,
    AVG(sal)
FROM
    emp
GROUP BY
    deptno;
    

-- �μ���, ��å�� �޿� ��� ���

SELECT
    deptno,
    job,
    AVG(sal)
FROM
    emp
GROUP BY
    deptno,
    job
ORDER BY
    deptno,
    job;
    
-- group by : select ���� group by ���� ���ԾȵǴ� ���� ��� �Ұ�
SELECT
    ename,
    deptno,
    AVG(sal)
FROM
    emp
GROUP BY
    deptno;
    
-- group by ~ having : �׷��� ���� �� ������ �ִ� ���
-- �� �μ��� ��å�� ��� �޿��� ���ϵ�, ��� �޿��� 2000�̻��� �׷츸 ���

SELECT
    job,
    AVG(sal)
FROM
    emp
GROUP BY
    deptno,
    job
HAVING
    AVG(sal) >= 2000;
    
-- where : ��� ��� ���� ����
-- having : �׷�ȭ�� ����� ����

-- emp ���̺��� �μ��� ��å�� ��ձ޿��� 500�̻���, ������� �μ���ȣ, ��å, ��ձ޿��� ���
SELECT
    deptno,
    job,
    AVG(sal)
FROM
    emp
GROUP BY
    deptno,
    job
HAVING
    AVG(sal) >= 500
ORDER BY
    deptno,
    job;

SELECT
    deptno,
    job,
    AVG(sal)
FROM
    emp
WHERE
    AVG(sal) >= 500     -- ORA-00934: group function is not allowed here
GROUP BY                -- where���� ���ü� ����. -> having���� ��밡��.
    deptno,
    job;

SELECT         --------- ��
    deptno,
    job,
    AVG(sal)
FROM            -------- �� �������
    emp
WHERE           -------- ��
    sal <= 3000
GROUP BY       -------- ��
    deptno,
    job
HAVING          -------- ��
    AVG(sal) >= 2000
ORDER BY       -------- ��
    deptno,
    job;


-- [����] �μ���, ��ձ޿�, �ְ�޿�, �����޿�, �����
-- ��ձ޿��� �Ҽ��� ����
SELECT
    deptno,
    round(AVG(sal)) AS avg_sal,
    MAX(sal)        AS max_sal,
    MIN(sal)        AS min_sal,
    COUNT(empno)    AS cnt
FROM
    emp
GROUP BY
    deptno;

-- [����] ���� ��å�� �����ϴ� ����� 3���̻��� ��å�� ����� ���
SELECT
    job,
    COUNT(*)
FROM
    emp
GROUP BY
    job
HAVING
    COUNT(job) >= 3;

-- [����] ������� �Ի翬���� �������� �μ��� �ο��� ���
SELECT
    to_char(hiredate, 'YYYY') AS hire_year,
    deptno,
    COUNT(*)                  AS cnt
FROM
    emp
GROUP BY
    to_char(hiredate, 'YYYY'),
    deptno;


-- join
-- �����Ͱ� ���� ���� ���̺� ������ �����

SELECT
    *
FROM
    emp;

SELECT
    *
FROM
    dept;

-- 1) ��������(�����) : ��ġ�ϴ� �÷��� �������� �� ��������
-- column ambiguously defined (join ������ ���� ������ �����޼��� 
-- ��>���� �̸��� ������ �ִµ� ����� ��������� ���� ���� ����� ����)
SELECT
    e.empno,
    e.ename,
    e.deptno,       -- deptno�� ���� ���̺� ���ԵǾ� �����Ƿ� ����� ǥ�� Ȯ���� ���ֱ�.
    dname,
    loc
FROM
    emp  e,
    dept d  -- e, d �� ��Ī.
WHERE
    e.deptno = d.deptno;


-- ǥ�ع���(inner ��������)
SELECT
    e.empno,
    e.ename,
    e.deptno,
    dname,
    loc
FROM
         emp e
    INNER JOIN dept d ON e.deptno = d.deptno;

-- �μ���ȣ�� ��ġ�ϴ� ������� ���� ���
-- �޿��� 3000 �̻��ڸ� ���
SELECT
    e.empno,
    e.ename,
    e.deptno,
    dname,
    loc
FROM
         emp e
    INNER JOIN dept d ON e.deptno = d.deptno
                         AND sal > 3000;


-- �μ���ȣ�� ��ġ�ϴ� ������� ���� ���
-- �޿��� 2500 �̻��̰�, �����ȣ�� 9999 ������ ��� ���
SELECT
    e.empno,
    e.ename,
    e.deptno,
    d.dname,
    d.loc
FROM
    emp  e,
    dept d
WHERE
        e.deptno = d.deptno
    AND e.sal >= 2500
        AND e.empno <= 9999;

SELECT
    e.empno,
    e.ename,
    e.deptno,
    d.dname,
    d.loc
FROM
         emp e
    JOIN dept d ON e.deptno = d.deptno
                   AND e.sal >= 2500
                       AND e.empno <= 9999;


-- emp, salgrade ���� : �� ����

SELECT
    *
FROM
    salgrade;

SELECT
    empno,
    ename,
    job,
    sal,
    comm,
    deptno,
    grade
FROM
         emp e
    JOIN salgrade s ON e.sal BETWEEN s.losal AND s.hisal;


-- �ڱ� �ڽ� ���̺� ���� : ��������

SELECT
    *
FROM
    emp;

SELECT
    e1.empno,
    e1.ename,
    e1.mgr,
    e2.empno AS mgr_empno,
    e2.ename AS mgr_ename
FROM
    emp e1,
    emp e2
WHERE
    e1.mgr = e2.empno;


-- outer join(�ܺ�����)
SELECT
    e1.empno,
    e1.ename,
    e1.mgr,
    e2.empno AS mgr_empno,
    e2.ename AS mgr_ename
FROM
    --emp e1 left outer join emp e2 on e1.mgr = e2.empno;       -- ������ �������� ���� �ȵȰ� ���� ������
    emp e1 right outer join emp e2 on e1.mgr =e2.empno;        -- �������� �������� ...
    

-- [����] �� �μ��� ��ձ޿�, �ִ�޿�, �ּұ޿�, ��� �� ���
-- �μ��ڵ�, �μ���, ��ձ޿�, �ִ�޿�, �ּұ޿�, �����

SELECT
    d.deptno,
    d.dname,
    floor(AVG(sal)),
    MAX(sal),
    MIN(sal),
    COUNT(*)
FROM
    emp e join dept d on e.deptno = d.deptno
GROUP BY
    d.deptno,d.dname;


-- [����] ��� �μ������� ��� ������ ���(�μ���ȣ�� ��������, �����ȣ�� ��������)
-- �μ���ȣ,�μ���,�����ȣ,�����,��å,�޿�

select d.deptno,d.dname,e.empno,e.ename,e.job,e.sal
from emp e right outer
JOIN dept d ON e.deptno = d.deptno
order by d.deptno,
e.empno;


-- �� ���� ���̺� ����
select e1.empno, e2.empno, e3.empno
from emp e1 join emp e2 on e1.empno=e2.empno join emp e3 on e2.empno = e3.empno;

-- [����] ��� �μ�����, �������, �޿��������,�� ����� ���� ����� ���� �μ���ȣ,
-- �����ȣ ���
select d.deptno,d.dname,e1.empno,e1.ename,e1.mgr,e1.sal,e1.deptno as deptno_1,
s.losal,s.hisal,s.grade,e2.empno as mgr_empno,e2.ename as mgr_ename
from emp e1 right outer join dept d on e1.deptno=d.deptno 
left outer join salgrade s on e1.sal BETWEEN s.losal and s.hisal
left outer join emp e2 on e1.mgr=e2.empno       -- ���ӻ���� ����ϱ� ���� e1.mgr=e2.empno ����.
order by d.deptno,e1.empno;



-- �������� : ������ �ȿ� �Ǵٸ� ������ ����
-- select ��ȸ�� ��
-- from ���̺��
-- where ���ǽ�(select ��ȸ�� �� from ���̺�� where ���ǽ�)


-- JONES ����� �޿����� ���� �޿��� �޴� ��� ��ȸ

-- JONES ����� �޿�
SELECT
    sal
FROM
    emp
WHERE
    ename = 'JONES';  -- 2975

SELECT
    *
FROM
    emp
WHERE
    sal > 2975;

SELECT      -- ���� �ι� ��ȸ�ϴ°��� �ѹ��� ���ļ� ��� : ��������
    *
FROM
    emp
WHERE
    sal > (
        SELECT
            sal
        FROM
            emp
        WHERE
            ename = 'JONES'
    );
    

-- ALLEN ����� �߰����纸�� ���� �߰������� �޴� �������

SELECT
    *
FROM
    emp
WHERE
    comm > (
        SELECT
            comm
        FROM
            emp
        WHERE
            ename = 'ALLEN'
    );
    
-- 'WARD' ���� ���� �Ի��� ������� ��ȸ

SELECT
    *
FROM
    emp
WHERE
    hiredate < (
        SELECT
            hiredate
        FROM
            emp
        WHERE
            ename = 'WARD'
    );


-- �������� �ϳ��� ������ ������ �������� ��� ������
-- >, >=, = <=, <, <>, ~=, !=

-- 20�� �μ��� ���� ��� �� ��ü ����� ��� �޿����� ���� �޿��� �޴� 
-- ��������� �ҼӺμ� ������ ��ȸ

SELECT
    e.empno,
    e.ename,
    e.job,
    e.sal,
    d.deptno,
    d.dname,
    d.loc
FROM
         emp e
    JOIN dept d ON e.deptno = d.deptno
WHERE
        d.deptno = 20
    AND e.sal > (
        SELECT
            AVG(sal)
        FROM
            emp
    );     -- ��ձ޿��κ� �������� ���.

-- �������� �������� ������ ������ �������� ��� ������
-- IN, ANY(SOME), ALL, EXISTS

SELECT
    *
FROM
    emp
where
    deptno IN(20,30;

-- IN : ���������� �����Ͱ� �������� ��� �� �ϳ��� ��ġ�� �����Ͱ� �ִٸ� TRUE
-- �� �μ��� �ְ� �޿��� ������ �޿��� �޴� ��� ���� ���

SELECT
    MAX(sal)
FROM
    emp
GROUP BY
    deptno;

SELECT
    *
FROM
    emp
WHERE
    sal IN (
        SELECT
            MAX(sal)
        FROM
            emp
        GROUP BY
            deptno
    );

-- ANY(SOME) : ���������� ��ȯ�� ���� ��� �� �߿��� ���������� ���ǽ� �� 
-- �ϳ��� TRUE ��� �������� ���ǽ��� TRUE�� ��ȯ

--  IN ==    =ANY
SELECT
    *
FROM
    emp
WHERE
    sal = ANY (
        SELECT
            MAX(sal)
        FROM
            emp
        GROUP BY
            deptno
    );

-- �� �μ��� �ְ� �޿����� ���� �޿��� �޴� ��� ���� ���
SELECT
    *
FROM
    emp
WHERE
    sal < ANY (
        SELECT
            MAX(sal)
        FROM
            emp
        GROUP BY
            deptno
    );

-- 30�� �μ� ������� �ּ� �޿����� ���� �޿��� �޴� ��� ���� ���
SELECT
    *
FROM
    emp
WHERE
    sal > ANY (
        SELECT DISTINCT     -- min,max�� ��������ʾƵ� any�� ����ؼ� ������ ȿ������ ����.
            sal
        FROM
            emp
        WHERE
            deptno = 30
    );


-- ALL : ���������� ��ȯ�� ���� ��� ���� ���������� ���ǽ��� ��� ������ true
-- 30�� �μ� ������� �ּ� �޿����� ���� �޿��� �޴� ��� ���� ���
SELECT
    *
FROM
    emp
WHERE
    sal < ALL (
        SELECT DISTINCT
            sal
        FROM
            emp
        WHERE
            deptno = 30
    );


-- ���߿� ��������

-- �ڽ��� �μ� ������ �ְ� ������ ������ �޿��� �޴� ��� ���
SELECT
    *
FROM
    emp
WHERE
    ( deptno, sal ) IN (
        SELECT
            deptno, MAX(sal)
        FROM
            emp
        GROUP BY
            deptno
    );


-- FROM ���� ����ϴ� ��������(�ζ��κ�)

select e10.empno, e10.ename, e10.deptno, d.dname, d.loc
from (select * from emp where deptno=10) e10,
     (select * from dept) d
where e10.deptno = d.deptno;

-- [����] 10���μ��� �ٹ��ϴ� ��� �� 30�� �μ����� �������� �ʴ� ��å�� ����
-- �������, �μ������� ���(not in)
select e.empno, e.ename, e.job, e.deptno, d.dname, d.loc
from emp e join dept d on e.deptno = d.deptno
where e.deptno=10 and job NOT IN(select job       -- where job�� select job ��ġ��Ű��.
from emp
where deptno=30);

-- [����] ��å�� SALESMAN �� ������� �ְ�޿����� ���� �޿��� �޴� �������
-- �������,�޿� ��� ������ ���
-- EMPNO, ENAME, SAL, GRADE���

-- MAX()�� ���� ����
select EMPNO, ENAME, SAL,grade
from emp e join salgrade s on e.sal BETWEEN s.losal and s.hisal
where sal > (select max(sal) from emp where job='SALESMAN');

-- MAX()�� �Ⱦ��� ����
select EMPNO, ENAME, SAL,grade
from emp e join salgrade s on e.sal BETWEEN s.losal and s.hisal
where sal > ALL (select sal from emp where job='SALESMAN');


-- DML(������ ���۾� : ����, ����, ����)
-- commit(Ŀ��) : �����ͺ��̽��� ���� �ݿ�, 
-- (rollback)�ѹ� : ���� �ݿ��Ȱ� ���

-- dept ���̺��� �����͸� �����Ͽ� dept_temp ���̺� ����
create table dept_temp as select * from dept;

-- insert(����)
-- insert into ���̺��(���̸�...)
-- values(������....)

-- ����, ��¥ �����ʹ� '' ���
insert into dept_temp(deptno, dname, loc)
values(50,'DATABASE','SEOUL');

insert into dept_temp               -- ���̸� �������� -> ��, Į���� ������ ���缭 value���� �־�����Ѵ�.
values(60,'NETWORK','BUSAN');

insert into dept_temp(deptno, dname)               
values(70,'NETWORK');

-- insert into dept_temp
-- values(800,'NETWORK','BUSAN');

insert into dept_temp
values(80,'NETWORK',null);

SELECT * from dept_temp;


-- emp ���̺��� ������ �����ؼ� ���ο� ���̺� ����
create table emp_temp as select * from emp where 1<>1;

insert into emp_temp(empno,ename,job,mgr,hiredate,sal,comm,deptno)  -- ������ �������.
values(9999,'ȫ�浿','MANAGER',NULL,'2021-01-05',5000,1000,10);

insert into emp_temp(empno,ename,job,mgr,hiredate,sal,comm,deptno)  
values(8888,'������','MANAGER',9999,sysdate,4000,500,20);

-- emp ���̺��� �μ���ȣ�� 20���� ����鸸 emp_temp �� ����

insert into emp_temp(empno,ename,job,mgr,hiredate,sal,comm,deptno)          -- �����ؼ� INSERT�ϱ�.(�̰͵� ��������)
select empno, ename,job,mgr,hiredate,sal,comm,deptno
from emp
where deptno=20;



-- emp ���̺��� salgrade ���̺��� �����Ͽ� ����� 1�� �����
-- emp_temp �߰��ϰ� ������
insert into emp_temp(empno,ename,job,mgr,hiredate,sal,comm,deptno)
select empno,ename,job,mgr,hiredate,sal,comm,deptno
from emp e JOIN salgrade s ON e.sal BETWEEN s.losal AND s.hisal
where s.grade = 1;


select * from emp_temp;


-- ����
-- update ���̺��
-- set ������ �� = ��, ������ �� = ��
-- [where] ����

select * from dept_temp;

-- loc �� seoul�� ����
update dept_temp
set loc ='SEOUL';

-- DEPTNO = 50�� ��쿡 LOC�� �λ����� ����

update dept_temp
set loc = 'BUSAN'
where deptno = 50;


-- EMP_TEMP ��� �� SAL 3000������ ����� COMM 300 ���� ����
update EMP_TEMP
set comm = 300
where sal <= 3000;


-- update ��������
-- dept ���̺��� �μ���ȣ�� 40���� �μ���� ���� ����

update dept_temp
set (dname, loc) = (select dname,loc from dept where deptno=40);

-- dname�� operation�� �μ���ȣ ���� : DEPT
-- ����� �μ���ȣ�� ��ġ�ϴ� �μ���ȣ�� ������ 'SEOUL'����
update dept_temp
set loc = 'SEOUL'
where deptno = (select deptno from dept where dname = 'OPERATIONS');

-- EMPNO=7369�� ����� SAL 1500���� ����
update emp_temp
set sal = 1500
where empno = 7369;
-- ����
-- DELETE [FROM] 
-- [WHERE] 

select * from emp_temp;

-- JOB�� ANALYST�� ��� ����
delete from emp_temp where job = 'ANALYST';

DELETE emp_temp;


-- EMP_TEMP ���� �޿������ 3�̰�, 20�� �μ��� ����� ����
-- �������� ����

delete emp_temp
where empno IN (select empno
                from emp_temp e join salgrade s on e.sal between s.losal and s.hisal
                where s.grade = 3 and e.deptno = 20
                );

-- [����] exam_emp ����
create table EXAM_EMP as select * from emp;
-- [����] exam_dept ����
create table EXAM_DEPT as select * from dept;
-- [����] exam_salgrade ����
create table EXAM_SALGRADE as select * from SALGRADE;

-- 
insert into exam_emp(empno,ename,job,mgr,hiredate,sal,comm,deptno)
values (7201,'TEST_USER1','MANAGER',7788,'2016-01-02',4500,NULL,50);
insert into exam_emp(empno,ename,job,mgr,hiredate,sal,comm,deptno)
values (7202,'TEST_USER2','CLERK',7201,'2016-02-21',1800,NULL,50);
insert into exam_emp(empno,ename,job,mgr,hiredate,sal,comm,deptno)
values (7203,'TEST_USER3','ANALYST',7201,'2016-04-11',3400,NULL,60);
insert into exam_emp(empno,ename,job,mgr,hiredate,sal,comm,deptno)
values (7204,'TEST_USER4','SALESMAN',7201,'2016-05-31',2700,300,60);
insert into exam_emp(empno,ename,job,mgr,hiredate,sal,comm,deptno)
values (7205,'TEST_USER5','CLERK',7201,'2016-07-20',2600,NULL,70);
insert into exam_emp(empno,ename,job,mgr,hiredate,sal,comm,deptno)
values (7206,'TEST_USER6','CLERK',7201,'2016-09-08',2600,NULL,70);
insert into exam_emp(empno,ename,job,mgr,hiredate,sal,comm,deptno)
values (7207,'TEST_USER7','LECTURER',7201,'2016-10-28',2300,NULL,80);
insert into exam_emp(empno,ename,job,mgr,hiredate,sal,comm,deptno)
values (7208,'TEST_USER8','STUDENT',7201,'2016-03-09',1200,NULL,80);

select * from exam_emp;

-- [����] 50���μ����� �ٹ��ϴ� ������� ��ձ޿����� ���� �޿��� �ް� �ִ�
-- ������� �μ���ȣ 70������ ����
update exam_emp
set deptno = 70
where sal > (select avg(sal)
                  from exam_emp
                  where deptno = 50);

-- [����] 60�� �μ��� ��� �߿��� �Ի����� ���� ���� ������� �ʰ� �Ի��� �������
-- ����� 10% �λ��ϰ� 80�� �μ��� ����
update exam_emp
set sal = sal * 1.1, deptno = 80
where hiredate > (select min(hiredate) 
                 from exam_emp 
                 where deptno = 60);


-- [����] �޿������ 5�� ��� ����

delete from exam_emp
where empno in (
                select empno
                from exam_emp e join exam_salgrade s on e.sal between s.losal and s.hisal
                where s.grade = 5
            );



ROLLBACK;


commit;




-- Ʈ����� : ������ �����ͺ��̽����� �ϳ��� �۾� �Ǵ� �����ϰ� ���õǾ� �ִ�
-- �۾������� ���� ���� �� ���� �ּ� ���� ����

create table dept_tcl as select * from dept;

select * from dept_tcl;

---- Ʈ���輱
insert into dept_tcl values(50,'DATABASE','SEOUL');
update dept_tcl set loc='BUSAN' where deptno=40;
delete from dept_tcl where dname='RESEARCH';
------------------  �ϳ��� Ʈ�����

rollback;

commit;

-- ����(session) : � Ȱ���� ���� �ð��̳� �Ⱓ
-- �����ͺ��̽� ���� : �����ͺ��̽� ������ �������� ���� �����ͺ��̽����� �۾��� ������ �� ���� ����

delete from dept_tcl where deptno=50;
commit;


update dept_tcl set loc='SEOUL'
where deptno=30;
commit;         -- commit �����ָ� sql cmd���� ���� LOCK�� �ɸ� -> �׳� ��������


-- DDL(������ ���Ǿ�) : ��ü ����(CREATE),����(ALTER),����(DROP)
--
-- ���̺� ����
--create table ���̺��(
--    ���̸� �ڷ���,
--    ���̸� �ڷ���,
--    ���̸� �ڷ���,
--    ���̸� �ڷ���);

-- ���̺�� ��Ģ
-- ���ڷ� ����
-- ���� ����� ������ ���̺�� �ߺ� �Ұ�
-- ������(�ѱ� ����), Ư������ ����($, #, _)
-- SQL Ű����(SELECT, DELETE...)�� ���̺�� ��� �Ұ�

-- �ڷ���
-- ���� :
-- CHAR(n) - �������� ex) name char(10); => 3 => 10     (10���� ������� ������ 10)
-- VARCHAR2(n) -- �������� ex) name varchar2(10); => 3  (10���� ��Ҿ �ִµ� 3�̸� 3)
-- NCAHR(n) --��������(�����ڵ�) ex) name nchacr(10); �ѱ�/���� ��� 10���� ����
-- NVARCHAR(n) -- ��������(�����ڵ�)

-- ������
-- NUMBER(����1,����2) -- ����1(�ڸ���), ����2(�Ҽ����ڸ���)
-- ex) empno number(4) : ���ڷ� 4�ڸ� ����
--     prive number(7,2) : ���ڷ� 7�ڸ� ���Ǵµ� �Ҽ����� ���´ٸ� 2�ڸ� ���
--     job number : ���� ������ ũ�⿡ �°� �ڵ� ����

-- ��¥��
-- DATE : ��,��,��,��,��,��
-- TIMESTAMP : ��,��,��,��,��,�� + �и��� �Է°���

create table emp_ddl ( empno NUMBER(4), ename VARCHAR2(10), job VARCHAR2(9),
mgr NUMBER(4), hiredate DATE, sal NUMBER(7, 2), comm NUMBER(
7, 2),
deptno NUMBER(2) );

drop table emp_ddl;

-- �ٸ� ���̺� ���� �̿��ؼ� ����(�����ͱ��� ����)
create table emp_ddl as select * from emp;
-- �ٸ� ���̺� ������ �̿��ؼ� ����
create table emp_ddl1 as select * from emp where 1<>1;

-- ���̺� ���� : ALTER

select * from emp_ddl;

-- ��(�÷�) �߰� : ADD
alter table emp_ddl add hp varchar2(20);

-- �� �̸��� ���� : RNAME
alter table emp_ddl rename column hp to tel;

-- �� �ڷ��� ���� : MODIFY
alter table emp_ddl modify empno number(5);
desc emp_ddl;

-- �����Ͱ� ���ԵǾ� ���� ���� �������� ���̿� ���� �ʴ´ٸ� ���� �Ұ�
-- alter table emp_ddl modify empno number(3);

-- �� ���� : DROP COLUMN
alter table emp_ddl drop column tel;

-- ���̺� �� ���� : RENAME
RENAME emp_ddl TO emp_rename;

-- ���̺� ���� : drop
DROP TABLE emp_rename;

create table emp_hw (id char(8), name varchar2(10), addr varchar2(50),
    nation char(4), email varchar(50), age number(7,2));

alter table emp_hw add BIGO varchar2(20);
alter table emp_hw modify BIGO varchar2(30);
alter table emp_hw rename column BIGO to REMARK;

-- ��������(���̺��� Ư�� ���� ����)
-- �Է�,����,���� ������ �ִ� �κ� => �������� ���Ἲ ����

-- 1) NOT NULL : ������ ���� NULL �� ������� ����
-- 2) UNIQUE : ������ ���� ������ ���� ������ ��(NULL ����)
-- 3) PRIMARY KEY : ������ ���� �����Ѱ��̸鼭 NULL�� �ƴ�(�ϳ��� ����)
-- 4) FOREIGN KEY : �ٸ� ���̺��� ���� �����Ͽ� �����ϴ� ���� �Է� ����
-- 5) CHECK : ������ ���ǽ��� �����ϴ� �����͸� �Է� ����

-- NOT NULL ��������
CREATE TABLE table_notnull(
    login_id varchar2(20) not null,
    login_pwd varchar2(20) not null,
    tel varchar2(20));
    
insert into table_notnull(login_id, login_pwd, tel)
values('test_id_01',null,'010-1234-5678');              -- null �� �Է½� �����߻�

insert into table_notnull(login_id, login_pwd, tel)
values('test_id_01','010-1234-5678');                   -- ���鵵 �����߻�

insert into table_notnull(login_id, login_pwd)
values('test_id_01','12345');                           -- ���� ����.

update table_notnull
set login_pwd = NULL
where login_id = 'test_id_01';          -- null ������ ���浵 �Ұ���.

-- scott �� ����� ��� �������� Ȯ��
select * from user_constraints;

-- �������Ǹ� ����
CREATE TABLE table_notnull2(
    login_id varchar2(20) constraint tblnn2_lgnid_nn not null,
    login_pwd varchar2(20) constraint tblnn2_lgnpwd_nn not null,
    tel varchar2(20));

-- table_notnull tel �÷��� not null ���� ���� �߰�
desc table_notnull;
select * from table_notnull;
alter table table_notnull modify(tel not null);

update table_notnull
set tel='010-1234-5678'
where login_id='test_id_01';

-- �������� �̸� ����
alter table table_notnull2 rename constraint tblnn2_lgnid_nn to tblnn2_id_nn;      -- nn(not null)
-- �������� ����
alter table table_notnull2 drop constraint tblnn2_id_nn;


-- 2) UNIQUE : ������ ���� ������ ���� ������ ��(NULL ����)
CREATE TABLE table_unique(
    login_id varchar2(20) unique,           -- login_id�� unique����. -> �����ؾ���.
    login_pwd varchar2(20) not null,
    tel varchar2(20)
);

insert into table_unique(login_id, login_pwd, tel)
values('test_id_01','12345','010-1234-5678');

insert into table_unique(login_id, login_pwd, tel)      -- unique constraint violated (����)
values('test_id_01','54321','010-5678-1234');           -- unique�� �ɷ��ִ� login_id�� �ߺ��Ǿ���.

insert into table_unique(login_id, login_pwd, tel)
values(null,'54321','010-5678-1234');                   -- ��, id�� null�δ� ���� �� ����.

-- unique �������� �̸� ����
CREATE TABLE table_unique2(
    login_id varchar2(20) constraint tblunq2_lgnid_unq unique,
    login_pwd varchar2(20) constraint tblunq2_lgnpwd_nn not null,
    tel varchar2(20)
);

-- table_unique2 �� tel unique ���� ���� �߰�
alter table table_unique2 modify(tel unique);


-- 3) PRIMARY KEY : ������ ���� ���ϰ��̸鼭 NULL�� �ƴ�(�ϳ��� ����)
-- not null + unique
create table table_pk(
    login_id varchar2(20) primary key,
    login_pwd varchar2(20) not null,
    tel varchar2(20));
    
insert into table_pk values('test_01','pw01','010-1234-5678');

insert into table_pk values('test_01','pw01','010-1234-5678');

-- table can have only one primary key
create table table_pk2(
    login_id varchar2(20) primary key,
    login_pwd varchar2(20) primary key,
    tel varchar2(20));


create table table_pk2(
    login_id varchar2(20) constraint tblpk2_lgnid_pk primary key,
    login_pwd varchar2(20) constraint tblpk2_lgnpwd_nn not null,
    tel varchar2(20));

-- �������� ������ �ٸ� ���
create table table_con(
    col1 varchar2(20),
    col2 varchar2(20),
    primary key(col1),
    constraint tblcon_unq unique(col2));
    
-- 4) FOREIGN KEY : �ٸ� ���̺��� ���� �����Ͽ� �����ϴ� ���� �Է� ����
create table dept_fk(
    deptno number(2) constraint deptfk_deptno_pk primary key,
    dname varchar2(20),
    loc varchar2(13));
    
create table emp_fk(
    empno number(4) constraint empfk_empno_pk primary key,
    ename varchar2(10),
    deptno number(2) constraint empfk_deptno_fk references dept_fk(deptno));    --references : ������̺��� ��� �÷��� �����Ұ��ΰ�

-- parent key not found
insert into emp_fk(empno,ename,deptno)
values(7899,'hong',20);




-- �ܷ�Ű �������
-- �θ����̺� �����Ͱ� ���� ���ԵǾ�� ��
-- �ڽ����̺� ������ ����

insert into dept_fk values(10,'DATABASE','SEOUL');
insert into emp_fk(empno,ename,deptno)
values(7899,'hong',10);

-- child record found
delete from dept_fk where deptno=10;

-- �ܷ�Ű ���� ���� ����
-- �ڽ� ���̺� �ش��ϴ� ������ ����
-- �θ� ���̺� �ش��ϴ� ������ ����

delete from emp_fk where deptno=10;
delete from dept_fk where deptno=10;

-- �θ� �����͸� ������ �� �����ϰ� �ִ� �����͵� �Բ� ����
-- �θ� �����͸� ������ �� �����ϰ� �ִ� �����͸� null �� ����
create table dept_fk2(
    deptno number(2) constraint deptfk2_deptno_pk primary key,
    dname varchar2(20),
    loc varchar2(13));
    
-- ON DELETE CASCADE : �� ������ ������ ���� ������ �Բ� ����
create table emp_fk2(
    empno number(4) constraint empfk2_empno_pk primary key,
    ename varchar2(10),
    deptno number(2) constraint empfk2_deptno_fk references dept_fk2(deptno)
    ON DELETE CASCADE);
    
insert into dept_fk2 values(10,'DATABASE','SEOUL');
insert into emp_fk2(empno,ename,deptno)
values(7899,'hong',10);

delete from dept_fk where deptno=10;

select * from emp_fk2;

-- ON DELETE SET NULL : �� ������ ������ ���� �����͸� NULL�� ����
create table dept_fk3(
    deptno number(2) constraint deptfk3_deptno_pk primary key,
    dname varchar2(20),
    loc varchar2(13));

create table emp_fk3(
    empno number(4) constraint empfk3_empno_pk primary key,
    ename varchar2(10),
    deptno number(2) constraint empfk3_deptno_fk references dept_fk3(deptno)
    ON DELETE SET NULL);

insert into dept_fk3 values(10,'DATABASE','SEOUL');
insert into emp_fk3(empno,ename,deptno)
values(7899,'hong',10);

DELETE FROM dept_fk3 where deptno=10;

select * from emp_fk3;
select * from dept_fk3;

-- 5) CHECK : ������ ���ǽ��� �����ϴ� �����͸� �Է� ����
create table tbl_check(
    login_id varchar2(20) constraint tblck_lgnid_pk primary key,
    login_pwd varchar2(20) constraint tblck_lgnpwd_ck check (length(login_pwd) > 3),
    tel varchar2(20));

-- check constraint violated -> ������ login_pwd ���̸� 3�ʰ��ؾ� �ϵ��� ��������.
insert into tbl_check values('test_id1','123','010-1234-5678'); -- ũ�� ������ �Է�. ����

insert into tbl_check values('test_id1','1234','010-1234-5678');


-- �⺻�� ���� : default

create table tbl_default(
    login_id varchar2(20) constraint tbl_lgnid_pk primary key,
    login_pwd varchar2(20) default '1234',          -- �⺻������ '1234' ������.
    tel varchar2(20));


insert into tbl_default values('test_id1',null,'010-1234-5678');

select* from tbl_default;

insert into tbl_default(login_id,tel) values('test_id2','010-1234-5678');       -- ����ΰ� �Ǹ� ���� default �����Ѱ� �ڵ� �Է�.

-- [����]dept_const ���̺� ����
create table dept_const(
    deptno number(2) constraint DEPTCONST_DEPTNO_PK primary key,
    dname varchar2(14) constraint DEPTCONST_DEPTNO_UNQ unique,
    loc varchar2(13) constraint DEPTCONST_LOC_NN not null);
    
-- �ѹ��� �����ϴ� ���2 -> �´��� Ȯ�� �ѹ��� �ϱ�.
--create table dept_const(
--    deptno number(2),
--    dname varchar2(14),
--    loc varchar2(13),
--    constraint DEPTCONST_DEPTNO_PK primary key(deptno),
--    constraint DEPTCONST_DEPTNO_UNQ unique(dname),
--    constraint DEPTCONST_LOC_NN not null(loc));

-- [����] emp_const ����
create table emp_const(
    empno number(2) constraint EMPCONST_EMPNO_PK PRIMARY KEY,
    ename varchar2(10) constraint EMPCONST_ENAME_NN not null,
    job varchar2(9),
    tel varchar2(20) constraint empconst_tel_unq unique,
    hiredate date,
    sal number(7,2) constraint EMPCONST_SAL_CHK check(sal between 1000 and 9999),
    comm number(7,2),
    deptno number(2) constraint empconst_deptno_fk references dept_const(deptno));

commit;

-- ������(sequence) : ��Ģ�� ���� ������ ����

-- 1�� ����
create sequence dept_seq;

create table dept_sequence as select * from dept where 1<>1;\

select * from dept_sequence;

insert into dept_sequence(deptno, dname, loc)
values(dept_seq.nextval,'DATABASE','SEOUL');

-- ���� ���������� ������ ������ Ȯ��
select dept_seq.currval from dual;


drop sequence dept_seq;


create sequence dept_seq
increment by 10
start with 10   -- ���������� ������ ��ȣ�� ���۰�
maxvalue 90     -- ���������� ������ ��ȣ�� �ִ�
minvalue 0      -- ���������� ������ ��ȣ�� �ּҰ�
nocycle         -- ���������� ������ ��ȣ�� �ִ񰪿� ������ ��� �ٽ� ������ ���ΰ� ����(cycle or nocycle)
cache 2;        -- �������� ������ ��ȣ�� �޸𸮿� �̸� �Ҵ��� ���� ���� ����

insert into dept_sequence(deptno, dname, loc)
values(dept_seq.nextval,'DATABASE','SEOUL');        -- ��� �ݺ��ϸ� sequence DEPT_SEQ.NEXTVAL exceeds MAXVALUE and cannot be instantiated
                                                    -- �����ҋ� ���� 10�������Ͽ� 90�� ������ �����߻�.
select * from dept_sequence;

-- ������ ����
alter sequence dept_seq increment by 3 maxvalue 99 cycle;       
-- ��> 3�� ������ cycle, �ִ� 99�� ���� -> max �ʰ��� �ٽ� 0���� ���� 



-- ��(view) : ���� ���̺�
--            �ϳ� �̻��� ���̺��� ��ȸ�ϴ� select ���� ������ ��ü
--            ���� - select ���� ���⵵�� ��ȭ
--            ���ȼ� - ���̺��� Ư�� ���� �����ϰ� ���� ���� ���

-- ����
create view vm_emp20 as (select empno,ename,job,deptno from emp where deptno=20);

select * from vm_emp20;

-- insert
insert into vm_emp20(empno,ename,job,deptno)
values(8000,'TEST','MANAGER',20);
select * from vm_emp20;

-- view �� �������̺� ���� ����
select * from emp;

-- ������ ����� �Ӽ� Ȯ���ϱ�
select *
from USER_UPDATABLE_COLUMNS
where TABLE_NAME='VM_EMP20';


-- �� ������ ���� ������ ���� �Ұ��ϵ��� �ۼ�
-- with read only : ���� ����
create view vm_emp_read as select empno, ename, job from emp with read only;
select *
from USER_UPDATABLE_COLUMNS
where TABLE_NAME='VM_EMP_READ';

insert into vm_emp_read(empno,ename,job)
values(8001,'TEST','MANAGER');

-- �� ����
drop view vm_emp20;



-- �ε��� : ���� �˻�
-- �ε��� ��� ���ο� ���� Table Full Scan, Index Scan

-- scott �� ������ �ִ� �ε��� Ȯ���ϱ�
select * from user_indexes;     -- pk ������ ������ �ε����� ����.

-- �ε��� ����
-- create index �ε����� on ���̺��(���̸�1 asc, ���̸�2 desc,....)
create index idx_emp_sal on emp(sal);

-- index�� ������ �÷� ��ȸ     -> f10������ ��ȹ������ OPTIONS�� �� Ȯ���ϱ�.
select * from user_ind_columns;

select * from emp where deptno = 20;

-- index ����
drop index idx_emp_sal;









