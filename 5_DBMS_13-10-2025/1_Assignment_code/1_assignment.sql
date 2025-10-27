--  1
SELECT * FROM salgrade;

--  2

SELECT * FROM emp;

-- 3

SELECT * FROM dept;

--  4

SELECT * FROM emp WHERE sal > 1000 AND sal < 2000;

-- 5
SELECT * FROM dept ORDER BY dname;

-- 6

SELECT DISTINCT job FROM emp;;

-- 7
SELECT FROM WHERE GROUP BY HAVING ORDER BY

SELECT * FROM emp WHERE deptno in (10, 20) ORDER BY ename;

-- 8

SELECT ename, job FROM emp WHERE deptno = 20 AND job = 'CLERK';

-- 9

SELECT ename FROM emp WHERE ename LIKE '%TH%' OR ename LIKE '%LL%';

SELECT ename FROM emp WHERE ename REGEXP 'TH|LL';

-- 10

SELECT * FROM emp WHERE job = 'manager';

-- 11

SELECT ename, (ifnull(comm, 0) + sal) "Total Remuneration" FROM emp;

-- 12 

SELECT ename, sal, comm FROM emp 
WHERE sal > ifnull(comm, 0) AND job = 'SALESMAN'
ORDER BY sal DESC, ename ASC;

-- 13

SELECT * FROM emp WHERE year(hiredate) = 1982;

-- 14

SELECT concat(ename, ' is a ', job) "Employee Details" FROM emp;

-- 15

SELECT concat(ename, ' [', job, ']') "Employee Details" FROM emp;

-- 16
SELECT REPLACE(job, 'SALESMAN', 'SALESPERSON') FROM emp;

SELECT
    empno,
    ename,
    CASE
        WHEN job = 'SALESMAN' AND deptno = 30 THEN 'SALESPERSON'
        ELSE job
    END AS job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
FROM
    emp;