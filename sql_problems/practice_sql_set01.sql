-- 1. Display all the information of the EMP table
select * from emp;

-- 2. Display unique Jobs from EMP table
select distinct job from emp 

-- 3. List the emps in the asc order of their Salaries
select * from emp order by sal asc;

-- 4.  List the details of the emps in asc order of the Dptnos and desc of Jobs
select * from emp order by deptno asc, job desc;

-- 5. Display all the unique job groups in the descending order
select distinct job from emp order by job desc;

-- 6. Display all the details of all ‘Mgrs’
SELECT * FROM EMP WHERE EMPNO IN (
	SELECT DISTINCT MGR FROM EMP
);

-- 7. List the emps who joined before 1981 
SELECT * FROM EMP WHERE HIREDATE < '1981-01-01'

-- 8. List the Empno, Ename, Sal, Daily sal of all emps in the asc order of Annual sal
SELECT ENAME, EMPNO, SAL/30 AS DAILY_SAL, SAL * 12 AS ANNUAL_SAL
FROM EMP
ORDER BY SAL * 12 ASC;

-- 9. Display the Empno, Ename, job, Hiredate, Exp (Experience) of all Mgrs 
select empno, ename, job , hiredate, DATEDIFF(NOW() , hiredate)/(30*12) as experience_in_years
 from emp where empno in (select distinct mgr from emp);

-- 10. List the Empno, Ename, Sal, Exp of all emps working for Mgr 7698
select empno,ename,sal, DATEDIFF(NOW(), hiredate)/(30*12) from emp where  mgr=7698;

-- 11. Display all the details of the emps whose Comm. Is more than their Sal.
select * from emp where comm > sal;

-- 12. List the emps in the asc order of Designations of those joined after the second half of 1981.
select * from emp where hiredate > '1981-07-01' order by JOB asc;

-- 13.List the emps along with their Exp and Daily Sal is more than Rs.100
select * , DATEDIFF(NOW(),HIREDATE)/(30*12) as experience from emp where sal/30 > 100

-- 14. List the emps who are either ‘CLERK’ or ‘ANALYST’ in the Desc order
select * from emp where JOB in ('CLERK','ANALYST') order by JOB desc;

-- 15. List the emps who joined on 1-MAY-81,3-DEC-81,17-DEC-81,19-JAN-80 in asc order of seniority
select * from emp where `HIREDATE` in ('1981-05-01','1981-12-03','1981-12-17','1980-12-1980') order by hiredate asc;

-- 16. List the emp who are working for the Deptno 10 or20
select * from emp where DEPTNO IN (10,20);

select * from emp where DEPTNO = 10 or DEPTNO = 20;

-- 17. List the emps who are joined in the year 81
select * from emp where hiredate > '1981-01-01' and hiredate < '1981-12-31' ;

select * from emp where hiredate BETWEEN '1981-01-01' and '1981-12-31' ;

-- 18. List the emps who are joined in the month of Feb 1981
select * from emp where hiredate BETWEEN '1981-02-01' and '1981-02-28' ;

insert into emp values(7777, 'Michael','ANALYST',7566,'1981-03-01',3000,NULL,20);

SELECT * FROM EMP
WHERE HIREDATE BETWEEN '1981-02-01' AND '1981-03-01';

-- 19. List the emps Who Annual sal ranges from 22000 and 45000
select * from emp where sal*12 between 22000 and 45000;

-- 20. List the Enames those are having five characters in their Names.
select ENAME from emp where LENGTH(`ENAME`)=5;

-- 21. List the Enames those are starting with ‘T’ and with five characters.
select ENAME from emp where ename like 'T%' and LENGTH(`ENAME`)=5;

-- 22. List the emps those are having four chars and third character must be ‘r’.
select ENAME from emp where ename like '__r%' and LENGTH(`ENAME`)=4;

-- 23. List the Five character names starting with ‘S’ and ending with ‘H’.
select ENAME from emp where ename like 'S%' and ename like '%H' and LENGTH(`ENAME`)=5;

-- 24. List the emps who joined in January.
select * from emp where MONTH(HIREDATE)=01;

-- 25. List the emps who joined in the month of which second character is ‘a’.
select * from emp where MONTHNAME(HIREDATE) like '_a%';


