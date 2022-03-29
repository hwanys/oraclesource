-- hr(����Ŭ ������ ����)
-- scott �� ������ �ִ� ������ ����

-- [����1] employees ���̺� ��ü ���� ��ȸ
SELECT
    *
FROM
    employees;
    
-- [����2] employees ���̺��� first_name, last_name, job_id ��ȸ
SELECT
    first_name,
    last_name,
    job_id
FROM
    employees;
    
-- [����3] employees ���̺��� ��� ���� ��ȸ
-- employee_id : empno
-- manager_id : mgr
-- department_id : deptno
-- �� ������ ���� ��Ī�� �ٿ��� ��ȸ
-- ��ȸ�� �� �μ���ȣ�� �������� ������������ �����ϵ� �μ� ��ȣ�� ���ٸ�
-- ��� �̸�(First_name)�� �������� �������� ����
desc employees;     -- ����ȣ Ȯ���ϱ�

SELECT
    employee_id   AS empno,
    first_name,
    last_name,
    email,
    phone_number,
    hire_date,
    job_id,
    salary,
    commission_pct,
    manager_id    AS mgr,
    department_id AS deptno
FROM
    employees
ORDER BY
    employee_id DESC,
    first_name ASC;

-- [����4] �����ȣ�� 176�� ����� last_name�� deptno ��ȸ
SELECT
    last_name,
    department_id
FROM
    employees
WHERE
    employee_id = 176;
-- [����5] ������ 12,000 �̻� �Ǵ� �������� last_name �� salary ��ȸ
SELECT
    last_name,
    salary
FROM
    employees
WHERE
    salary >= 12000;

-- [����6] ������ 5000 ~ 12000 ���� ���̰� �ƴ� ����� ��ȸ
SELECT
    last_name,
    salary
FROM
    employees
WHERE
    salary < 5000
    OR salary > 12000;
    
 -- [����7] 20�� Ȥ�� 50�� �μ����� �ٹ��ϴ� ��� ������� LAST_NAME �� department_id ��ȸ ��,
 -- last_name�� ��������, department_id �� ������������ ����
SELECT
    last_name,
    department_id
FROM
    employees
WHERE
    department_id IN ( 20, 50 )
ORDER BY
    last_name ASC,
    department_id ASC;
 
 
 -- [����8] Ŀ�̼��� �޴� ��� ������� last_name,salary,commission_pct�� ��ȸ�Ѵ�
 -- ������ ��������, commission_pct�� �������� ����
SELECT
    last_name,
    salary,
    commission_pct
FROM
    employees
WHERE
    commission_pct > 0
ORDER BY
    salary DESC,
    commission_pct DESC;
 
 -- [����9] ������ 2500, 3500, 7000�� �ƴϸ�, ������ SA_REP, ST_CLERK�� ��� ��ȸ
 -- ��ü ���� ��ȸ
SELECT
    *
FROM
    employees
WHERE
    salary NOT IN ( 2500, 3500, 7000 )
    AND job_id IN ( 'SA_REP', 'ST_CLERK' );


-- [����10] '2008/02/20' ~ '2008-05-01' ���̿� ���� ������� last_name,employee_id,hire_date
-- ��ȸ, hire_date�� ������������ ����
SELECT
    last_name,
    employee_id,
    hire_date
FROM
    employees
WHERE
    hire_date BETWEEN '2008/02/20' AND '2008-05-01'
ORDER BY
    hire_date DESC;



-- [����11] '2004'�⵵�� ���� ��� ������� last_name,hire_date�� ��ȸ�Ͽ�
-- �Ի��� �������� �������� ����
SELECT
    last_name,
    hire_date
FROM
    employees
WHERE
    hire_date BETWEEN '2004-01-01' AND '2004-12-31'
ORDER BY
    hire_date;
    

-- LIKE �� ���ϵ� ī�� ���
-- [����12] '2004'�⵵�� ���� ��� ������� last_name, hire_date�� ��ȸ�Ͽ�
-- �Ի��� �������� �������� ����
SELECT
    last_name,
    hire_date
FROM
    employees
WHERE
    hire_date LIKE '04%'
ORDER BY
    hire_date;

-- [����13] last_name �� u�� ���ԵǴ� ������� ��� �� last_name ��ȸ
SELECT
    employee_id,
    last_name
FROM
    employees
WHERE
    last_name LIKE '%u%';

-- [���� 14] last_name�� �׹�° ���ڰ� a�� ������� ��� �� last_name ��ȸ
SELECT
    employee_id,
    last_name
FROM
    employees
WHERE
    last_name LIKE '___a%';

-- [���� 15] last_name�� a Ȥ�� e�� ����ִ� ������� last_name ��ȸ ��
-- last_name �������� ���
SELECT
    last_name
FROM
    employees
WHERE
    last_name LIKE '%a%'
    OR last_name LIKE '%e%'
ORDER BY
    last_name ASC;
    
-- [���� 16] last_name�� a �� e�� ����ִ� ������� last_name ��ȸ ��
-- last_name �������� ���
SELECT
    last_name
FROM
    employees
WHERE
    last_name LIKE '%a%e%'
    OR last_name LIKE '%a%e%'
ORDER BY
    last_name ASC;
    
-- [����] �Ŵ����� ���� ������� last_name,job_id ��ȸ
SELECT
    last_name,
    job_id
FROM
    employees
WHERE
    manager_id IS NULL;
    
-- [����] ST_CLERK�� JOB_ID�� ���� ����� ���� �μ� id ��ȸ
-- ��, �μ���ȣ�� NULL�� ���� �����Ѵ�.
SELECT
    department_id
FROM
    employees
WHERE
    job_id NOT IN ( 'ST_CLERK' )
    AND department_id IS NOT NULL;


-- [����] commission_pct �� ���� �ƴ� ����� �߿��� commission = salary * commision_pct��
-- ���Ͽ�, employee_id, first_name, job_id�� �Բ� ���
SELECT
    employee_id,
    first_name,
    job_id,
    salary * commision_pct AS commission
FROM
    employees
WHERE
    commission_pct IS NOT NULL;
    

-- [����] first_name�� Curtis�� ����� first_name,last_name,phone_number,job_id ��ȸ
-- ��, job_id�� ����� �ҹ��ڷ� ����ϱ�
SELECT
    first_name,
    last_name,
    phone_number,
    lower(job_id)
FROM
    employees
WHERE
    first_name = 'Curtis';

-- [����] �μ���ȣ�� 60,70,80,90�� ������� employee_id,first_name,last_name,department_id
-- job_id ��ȸ�ϱ�. ��, job_id�� IT_PROG �� ����� ��� ���α׷��ӷ� �����Ͽ� ���
SELECT
    employee_id,
    first_name,
    last_name,
    department_id,
    replace(job_id, 'IT_PROG', '���α׷���')
FROM
    employees
WHERE
    department_id IN ( 60, 70, 80, 90 );

-- [����] job_id�� AD_PRES, PU_CLERK�� ������� employee_id,first_name,last_name,department_id
-- job_id ��ȸ�ϱ�, �� ������� first_name�� last_name�� �����Ͽ� ���
SELECT
    employee_id,
    concat(first_name, concat(' ', last_name)),
    department_id,
    job_id
FROM
    employees
WHERE
    job_id IN ( 'AD_PRES', 'PU_CLERK' );

SELECT
    employee_id,
    first_name
    || ' '
    || last_name,
    department_id,
    job_id
FROM
    employees
WHERE
    job_id IN ( 'AD_PRES', 'PU_CLERK' );

-- [����] �μ� id �� 80�� ����� ���ؼ� ���� �ٸ� ���� ����
-- 2000 �̸� - 0%, 4000 �̸� 9%, 6000�̸� 20%,
-- 8000 �̸� 30%, 10,000�̸� 40%, 12,000�̸� 42%,
-- 14,000�̸� 44%, ������ 45%

SELECT
    last_name,
    salary,
    decode(trunc(salary/2000) 
        0, 0.00,
        1, 0.09,
        2, 0.20,
        3, 0.30,
        4, 0.40,
        5, 0.42,
        6, 0.44,
        0.45
    )AS tax_rate
FROM
    employees
WHERE
    department_id = 80;
    

-- [����] ȸ�� ���� �ִ� ���� �� �ּ� ���� �� ���
select max(salary) - min(salary)
from employees;

-- [����] �Ŵ����� �ٹ��ϴ� ������� �� ���� ���
select count(DISTINCT manager_id)
from employees;


-- [����] �μ��� �������� ���Ͽ�, �μ���ȣ�� ������������ ���
select department_id,count(employee_id)       -- count(*)�� ����.
from employees
group by department_id
order by department_id;


-- [����] �μ��� �޿��� ��� ���� ���(�μ���ȣ�� ��������)
select department_id,rount(avg(salary))
from employees
group by department_id
order by department_id;

-- [����] ������ ������ ���� ������� �� ���
select job_id, count(employee_id)
from employees
group by job_id
order by job_id;

select * from employees;

-- [�ǽ�] �ڽ��� ��� �Ŵ����� ����Ϻ��� ���� �Ի��� ã��(employees ��������)
select e1.employee_id, e1.hire_date AS ���Ի���, e1.manager_id, e2.hire_date as �Ŵ����Ի���
from empolyees e1 join employees e2 on e1.manager_id = e2.employee_id
where e1.hire_date < e2.hire_date
order by e1.employee_id;


-- [�ǽ�] ���� �̸��� T�� �����ϴ� ������ ��� ������� ���, last_name, department_id, city
-- ���(employees, departments, locations ���̺� ����)
select employee_id, last_name, d.department_id, city
from employees e join departments d on e.department_id = d.department_id join locations l on d.location_id = l.location_id
where city like 'T%';



-- [�ǽ�] ��ġ ID�� 1700�� ������� employees_id, lastt_name, department_id, salary
-- ���(employees, departments ����)
select employee_id, last_name, e.department_id, salary
from employees e JOIN departments d on e.department_id = d.deparment_id
where d.location_id = 1700;



-- [�ǽ�] �� �μ��� ��� ����(�Ҽ��� 2�ڸ�����), ��� �� ��ȸ
-- department_name, location_id, sal_avg, cnt ���
-- (employees, departments ����)
select department_name, location_id, round(avg(salary),2) as sal_avg, count(employee_id) as cnt
from employees e join departments d on e.department_id = d.department_id
group by department_name, location_id
order by location_id;



-- [�ǽ�] Executive �μ��� �ٹ��ϴ� ��� ������� department_id, last_name, job_id ���
-- (employees, departments ����)
select e.department_id, e.last_name, e.job_id
from employees e join departments d on e.department_id = d.department_id
where d.department_name = 'Executive';


-- [�ǽ�] ������ ������ ������ ������ �ִ� ������� employee_id, job_id ���
-- employees ���� ����, job_history ��������
select e.employee_id, e.job_id
from employees e join job_history j on e.employee_id = j.employee_id
where e.job_id = j.job_id;




-- [�ǽ�] �� ����� �ҼӺμ����� �ڽź��� �ʰ� ���Ǿ����� ���� ���� ������ �޴� �����
-- department_id, last_name, salary, hire_date ���
-- employees ���� ����
select e2.department_id, e2.last_name, e2.salary, e2.hire_date      -- ������ ���� �޴� ��� e2�� ��� ��
from employees e1 join employees e2 on e1.department_id = e2.department_id
where e1.hire_date < e2.hire_date and e1.salary < e2.salary
order by e2.department_id;
    

------------------------- 03.25 ���� -----------------------------

-- index
create table indextbl as select distinct first_name, last_name, hire_date from employees;

select * from indextbl;

select * from indextbl where first_name = 'Jack';

create index idx_indextbl_firstname on indextbl(first_name);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    