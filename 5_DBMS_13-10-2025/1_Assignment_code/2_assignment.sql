--  1
SELECT ename, hiredate, deptno
FROM emp
WHERE deptno = 20;

--  2

SELECT ename,
       hiredate,
       DATE_ADD(hiredate, INTERVAL 1 YEAR) AS "Salary Review Date"
FROM emp;

-- 3

SELECT ename,
       sal,
       CASE
         WHEN sal = 1500 THEN 'On Target'
         WHEN sal < 1500 THEN 'Below 1500'
         ELSE CAST(sal AS CHAR)
       END AS status
FROM emp;

--  4

SELECT MIN(sal) AS Min_Salary
FROM emp;

-- 5

SELECT MIN(sal) AS Min_Salary,
       MAX(sal) AS Max_Salary,
       AVG(sal) AS Avg_Salary
FROM emp;

-- 6

SELECT job,
       MIN(sal) AS Min_Salary,
       MAX(sal) AS Max_Salary
FROM emp
GROUP BY job;

-- 7
SELECT job,
       AVG(sal) AS Avg_Salary,
       SUM(sal + IFNULL(comm, 0)) AS Total_Remuneration
FROM emp
GROUP BY job;

-- 8

SELECT MIN(sal) AS Min_Salary,
       MAX(sal) AS Max_Salary,
       (MAX(sal) - MIN(sal)) AS Difference
FROM emp;

-- 9

SELECT deptno,
       COUNT(*) AS Employee_Count
FROM emp
GROUP BY deptno
HAVING COUNT(*) > 3;

-- 10

SELECT empno,
       COUNT(*) AS cnt
FROM emp
GROUP BY empno
HAVING COUNT(*) > 1;

-- 11

SELECT e.mgr,
       e.empno,
       e.ename,
       e.sal
FROM emp e
JOIN (
    SELECT mgr, MIN(sal) AS min_sal
    FROM emp
    GROUP BY mgr
    HAVING MIN(sal) >= 1000
) m ON e.mgr = m.mgr AND e.sal = m.min_sal
ORDER BY e.sal;

-- 12 

SELECT e.ename,
       d.dname
FROM emp e
JOIN dept d ON e.deptno = d.deptno
ORDER BY d.dname;

-- 13

SELECT e.ename,
       d.deptno,
       d.dname
FROM emp e
JOIN dept d ON e.deptno = d.deptno;

-- 14

SELECT e.ename,
       d.loc,
       d.dname
FROM emp e
JOIN dept d ON e.deptno = d.deptno
WHERE e.sal > 1500;

-- 15

SELECT e.ename,
       e.sal,
       s.grade
FROM emp e
JOIN salgrade s ON e.sal BETWEEN s.losal AND s.hisal
WHERE s.grade = 3;

-- 16
SELECT *
FROM emp
WHERE deptno = (
    SELECT deptno
    FROM dept
    WHERE loc = 'Dallas'
);

-- 17

SELECT e.sal  AS Salary,
       e.ename AS Employee_Name,
       e.job   AS Job,
       s.grade AS Grade,
       d.dname AS Department_Name
FROM emp e
JOIN dept d ON e.deptno = d.deptno
JOIN salgrade s ON e.sal BETWEEN s.losal AND s.hisal
WHERE UPPER(e.job) <> 'CLERK'
ORDER BY e.sal;

-- 18

SELECT *
FROM emp
WHERE (sal * 12) = 36000
   OR UPPER(job) = 'CLERK';

-- 19

SELECT dname
FROM dept
WHERE deptno NOT IN (SELECT DISTINCT deptno FROM emp);

-- 20

SELECT e.job,
       e.ename,
       e.sal
FROM emp e
WHERE e.sal = (
    SELECT MAX(sal)
    FROM emp
    WHERE job = e.job
)
ORDER BY e.sal DESC;

-- 21

SELECT e.deptno,
       e.ename,
       e.hiredate
FROM emp e
WHERE e.hiredate = (
    SELECT MAX(hiredate)
    FROM emp
    WHERE deptno = e.deptno
)
ORDER BY e.hiredate DESC;

-- 22

-- Works in Oracle / DBs supporting TO_CHAR; for MySQL use MONTH(hiredate) BETWEEN 1 AND 6
SELECT *
FROM emp
WHERE TO_CHAR(hiredate, 'MM') BETWEEN '01' AND '06';

-- 23

SELECT deptno,
       COUNT(*) AS Emp_Count,
       SUM(sal) AS Total_Salary,
       AVG(sal) AS Average_Salary
FROM emp
GROUP BY deptno;

-- 24

-- Round the square root to nearest integer (no decimals)
SELECT ROUND(SQRT(36.1111)) AS Square_Root
FROM dual;

-- 25

SELECT REPLACE('HELLO_THERE_', '_', '!') AS NEW_STRING
FROM dual;

-- 26

SELECT LENGTH('CDAC') + LENGTH('HYDERABAD') AS Total_Length
FROM dual;

-- 27

SELECT job, hiredate
FROM emp
WHERE (TO_CHAR(hiredate, 'YYYY') = '1980' AND TO_CHAR(hiredate, 'MM') BETWEEN '01' AND '06')
   OR (TO_CHAR(hiredate, 'YYYY') = '1981' AND TO_CHAR(hiredate, 'MM') BETWEEN '01' AND '06');