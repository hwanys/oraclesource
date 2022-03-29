-- hr(오라클 연습용 계정)
-- scott 가 가지고 있는 정보의 원본

-- [문제1] employees 테이블 전체 내용 조회
SELECT
    *
FROM
    employees;
    
-- [문제2] employees 테이블의 first_name, last_name, job_id 조회
SELECT
    first_name,
    last_name,
    job_id
FROM
    employees;