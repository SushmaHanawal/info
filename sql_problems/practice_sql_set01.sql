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

-- 26. List the emps whose Sal is four digit number ending with Zero
SELECT * FROM EMP
WHERE SAL BETWEEN 1000 and 10000
AND CONVERT(SAL, CHAR) LIKE '%0.00';

-- 27. List the EMPs whose names having a character set ‘ll’ together
select * from emp where ename like '%ll%';

-- 28. List the EMPs those who joined in 80’s
select * from emp where hiredate like '1980%'

select * from emp where year(hiredate) = 1980;

-- 29. List the EMPs who does not belong to Deptno 20.
select * from emp where deptno != 20;

select * from emp where deptno <> 20;

-- 30. List all the EMPs except ‘PRESIDENT’ & ‘MGR” in asc order of Salaries.
select * from emp where job <> 'PREDIDENT, MGR' order by sal asc;

select * from emp where job NOT IN ('PREDIDENT', 'MGR') order by sal asc;

-- 31. List all the EMPs who joined before or after 1981

select * from emp where year(hiredate) <> '1981' 

-- 32. List the EMPs whose Empno not starting with digit 78

select * from emp where empno not like '78%'

-- 33. List the EMPs who are working under ‘MGR’

select e.ename , m.ename from emp e join emp m on e.mgr = m.empno;

SELECT concat(e.ENAME,' works for ',m.ENAME)
FROM EMP e, EMP m
WHERE e.MGR = m.EMPNO;

-- 34. List the EMPs who joined in any year but not belongs to the month of March

select * from emp where MONTH(hiredate) != '03'

select * from emp where MONTHNAME(hiredate) != 'MARCh'

select * from emp where MONTH(hiredate) <> 3

-- 35. List all the Clerks of Deptno 20.

select * from emp where JOB = 'CLERK' and deptno=20

-- 36. List the EMPs of Deptno 30 or 10 joined in the year 1981.
select * from emp where deptno in (30, 10) and year(hiredate) = 1981

-- 37. Display the details of SMITH.
select * from emp where ename = 'SMITH';

-- 38. Display the location of  SMITH. (dept table is being used)
select LOC from dept where deptno in (select deptno from emp where ename = 'SMITH');

-- 39. List the total information of EMP table along with DNAME and Loc of all the EMPs Working Under ‘ACCOUNTING’ & ‘RESEARCH’ in the asc Deptno.
select e.*, d.dname,d.loc from emp e inner join dept d on e.deptno = d.deptno where d.dname in ('ACCOUNTING','RESEARCH') ORDER BY E.DEPTNO ASC;

select * from dept

select * from emp 

-- 40. List the Empno, Ename, Sal, Dname of all the ‘MGRS’ and ‘ANALYST’ working in New York, Dallas with an exp more than 7 years without receiving the Comm asc order of Loc


select e.empno, e.ename,e.sal, d.dname from emp e inner join dept d on e.deptno = d.deptno where e.job in ('MANAGER','ANALYST') and d.`LOC` in ('NEW YORK','DALLAS')  and e.COMM is null and DATEDIFF(NOW(),e.HIREDATE)/(12*30) >7 order by d.loc asc;

-- 41. Display the Empno, Ename, Sal, Dname, Loc, Deptno, Job of all EMPs working at CHICAGO or working for ACCOUNTING dept with Ann Sal>28000, but the Sal should not be=3000 or 2800 and who doesn’t belong to "MANAGER" and whose no is having a digit ‘7’ or ‘3’ in 3rd position in the asc order of Deptno and desc order of job.

select e.empno, e.ename, e.sal, d.dname,d.loc, d.deptno, e.job from emp e inner join dept d on e.deptno = d.deptno 
where (d.loc = 'CHICAGO' or  d.dname = 'ACCOUNTING')  and e.sal*12 > 28000 and e.sal NOT IN (3000, 2800) and e.JOB <> 'MANAGER' and (e.empno like '__7%' or e.empno like '__3%') order by e.deptno asc, e.job desc;

-- 42. Display the total information of the EMPs along with Grades in the asc order (salgrade table is now used)

select e.ename, e.sal, g.grade
from emp e, salgrade g
where e.sal between losal and hisal
order by ename asc;

-- 43. List all the Grade2 and Grade 3 EMPs.
select e.*, s.grade from emp e, salgrade s where e.sal between s.losal and s.hisal AND s.grade in (2,3); 

-- 44. Display all Grade 4,5 Analyst and Mgr.
select e.*, s.grade from emp e, salgrade s where s.grade in (4,5) and e.sal between s.losal and s.hisal AND e.job in ('ANALYST','MANAGER');

-- 45. List the Empno, Ename, Sal, Dname, Grade, Exp, and Ann Sal of EMPs working for Dept 10 or 20
select e.empno as EMPNO, e.ename as ENAME,e.sal as ESALARY, d.dname as DNAME, s.grade as EGRADE, DATEDIFF(NOW(), hiredate)/12*30 as EEXP , e.sal *12 as EASALARY
from salgrade s , emp e inner join dept d on e.deptno = d.`DEPTNO` 
where d.`DEPTNO` in (10,20) AND
e.sal between s.losal and s.hisal;

-- 46. List all the information of EMP with Loc and the Grade of all the EMPs belong to the Grade range from 2 to 4 working at the Dept those are not starting with char set ‘OP’ and not ending with ‘S’ with the designation having a char ‘a’ any where joined in the year 1981 but not in the month of Mar or Sep and Sal not end with ‘00’ in the asc order of Grades

select e.*, d.loc  as LOCATION, d.dname as DEPT_NAME, s.grade as GRADE from emp e inner join dept d on e.deptno = d.deptno, salgrade s 
where e.sal between s.losal and s.hisal 
AND s.grade in (2,4) 
AND d.dname NOT like 'OP%S'  
AND e.job like '%A%'
AND year(hiredate) = 1981
AND MONTH(hiredate) NOT IN (03,09)
AND e.sal NOT LIKE '%0.%'
order by s.grade asc;

-- 47. List the details of the Depts along with Empno, Ename or without the EMPs

select * from dept

select * from emp

select d.*, e.empno,e.ename from dept d left join emp e on d.deptno = e.deptno;

-- 48. List the details of the EMPs whose Salaries more than the EMPloyee BLAKE.

SELECT * FROM EMP WHERE SAL > (select sal from emp where ename = 'BLAKE')
-- FOR COMPARISON BELOW
-- UNION
-- SELECT * FROM EMP WHERE ENAME='BLAKE'

-- 49. List the EMPs whose Jobs are same as ALLEN.
select * from emp where job in (select job from emp where ename='ALLEN');

-- 50. List the EMPs who are senior to King.
select * from  emp where hiredate < (select hiredate from emp where ename='KING')
UNION
select * from emp where ename='KING';

-- 51. List the Emps who are senior to their own MGRS.

select e.*, m.ename as manager_name, m.hiredate as manager_hiredate from emp e  inner join emp m on  e.mgr = m.empno  where e.hiredate < m.hiredate;

-- or

SELECT e1.EMPNO, e1.ENAME, e1.HIREDATE
FROM EMP e1 WHERE e1.HIREDATE < (
  SELECT HIREDATE FROM EMP e2 WHERE e2.EMPNO = e1.MGR
)
ORDER BY e1.EMPNO ASC;

-- 52. List the Emps of Deptno 20 whose Jobs are same as Deptno 10.

select * from emp where deptno = 20 and job in (select job from emp where deptno = 10);

-- using joins, we have the following:
SELECT e20.JOB, e20.ENAME, e20.DEPTNO, e10.DEPTNO, e10.ENAME, e10.JOB
FROM EMP e10, EMP e20
WHERE e20.DEPTNO = 20
  AND e10.DEPTNO = 10
  AND e10.JOB = e20.JOB
AND e10.EMPNO <> e20.EMPNO;


-- 53. List the Emps whose Sal is same as FORD or SMITH in desc order of Sal.
select * from emp;

select * from dept;

select * from emp 
where sal in 
(select sal from emp where ename in ('FORD','SMITH'))
 AND ename not in ('FORD','SMITH');

-- 54. List the EMPs Whose Jobs are same as MILLER or Sal is more than ALLEN.
select * from emp where (job in (select job from emp where ename='MILLER') and ename!='MILLER')
OR
sal > (select sal from emp where ename='ALLEN');

-- or

SELECT ENAME, SAL
FROM EMP
WHERE JOB in (
  SELECT JOB FROM EMP WHERE ENAME = 'MILLER'
)
OR SAL > (
  SELECT SAL FROM EMP WHERE ENAME = 'ALLEN'
);

-- 55. List the Emps whose Sal is > the total remuneration of the SALESMAN.

select * from emp where sal > (select sum(sal + COALESCE(COMM, 0)) from emp where job='SALESMAN');

-- 56. List the EMPs who are senior to BLAKE working at CHICAGO & BOSTON.
select e1.* from emp e1, emp e2 where e1.hiredate < e2.hiredate and e2.ename='BLAKE' and e1.deptno in (select deptno from dept where loc in ('CHICAGO','BOSTON'));

-- or

SELECT d.LOC, e.ENAME, e.HIREDATE FROM EMP e
INNER JOIN DEPT d on e.DEPTNO = d.DEPTNO
WHERE d.LOC IN ('CHICAGO', 'BOSTON')
AND e.HIREDATE < (
  SELECT HIREDATE FROM EMP WHERE ENAME = 'BLAKE'
);

-- 57. List the Emps of Grade 3,4 belongs to the dept ACCOUNTING and RESEARCH whose Sal is more than ALLEN and exp more than ADAMS in the asc order of EXP.

select * from emp e inner join dept d on e.deptno = d.deptno , salgrade s 
where s.grade in (3,4) AND e.sal between s.losal and s.hisal AND e.deptno in (select deptno from dept where dname in ('ACCOUNTING','RESEARCH'))
AND e.sal > (select sal from emp where ename='ALLEN') AND e.HIREDATE < (SELECT hiredate from emp where ename='ADAMS') order by e.hiredate asc;

-- 58. List the EMPs whose jobs same as SMITH or ALLEN.
select e1.* from emp e1, emp e2 where e2.ename in ('SMITH','ALLEN') and e1.job = e2.job and e1.ename not in ('SMITH','ALLEN') ; 

-- or

select * from emp where job in (select job from emp where ename in ('SMITH','ALLEN') ) and ename not in ('SMITH','ALLEN');

-- 59. Write a Query to display the details of EMPs whose Sal is same as of
--    a)Employee Sal of EMP1 table.
--    b)¾ Sal of any Mgr of EMP2 table.
--    c)The sal of any person with exp of 5 years belongs to the sales dept of EMP3 table.
--    d)Any grade 2 EMPloyee of EMP4 table.
--    e)Any grade 2 and 3 EMPloyee working fro sales dept or operations dept joined in 89.

-- 60. SELECT any jobs of deptno 10 those that are not found in deptno 20

select job from emp where deptno = 10 and job not in (select job from emp where deptno=20);

-- 61. List of EMPs of EMP1 who are not found in EMP2.
select * from emp e1 where e1.empno not in (select e2.empno from emp e2);

-- 62. Find the highest sal of EMP table.
select max(sal) as highest_salary from emp;

-- 63. Find the details of highest paid EMPloyee
select e.* from emp e where sal in (select max(sal) from emp);

-- 64. Find the highest paid EMPloyee of sales department.
select * from emp
select * from dept
select e.* from emp e where sal in (select max(sal) from emp e1 inner join dept d1 on e1.deptno = d1.deptno AND d1.dname='SALES');

-- or

SELECT * FROM EMP WHERE SAL IN (
  SELECT MAX(SAL) FROM EMP WHERE DEPTNO = (
    SELECT DEPTNO FROM DEPT WHERE DNAME = 'SALES'
  )
);

-- 65. List the most recently hired EMP of grade3 belongs to  location CHICAGO.
-- The query is not perfect

select e1.ename, inn.hiredate from  (select max(e.hiredate) as hiredate, d.loc as location, s.grade from emp e inner join dept d on e.deptno = d.deptno, salgrade s where d.loc='CHICAGO'  AND s.grade=3  AND e.SAL BETWEEN s.LOSAL AND s.HISAL group by d.loc, s.grade) inn inner join  dept d1 on inn.location = d1.loc , emp e1 where inn.hiredate = e1.hiredate
;

-- or

SELECT *
FROM EMP
WHERE HIREDATE = (
  SELECT MAX(HIREDATE)
  FROM EMP e, SALGRADE s, DEPT d
  WHERE e.DEPTNO = d.DEPTNO
  AND d.LOC = 'CHICAGO'
  AND e.SAL BETWEEN s.LOSAL AND s.HISAL
  AND s.GRADE = 3
);

-- 66. List the EMPloyees who are senior to most recently hired EMPloyee working under king.
SELECT *
FROM EMP
WHERE HIREDATE < (
  SELECT MAX(e1.HIREDATE)
  FROM EMP e1, EMP e2 where e1.mgr = e2.empno and e2.ename = 'KING' 
);

-- or

SELECT * FROM EMP WHERE HIREDATE < (
  SELECT MAX(HIREDATE)
  FROM EMP
  WHERE MGR = (
    SELECT EMPNO FROM EMP WHERE ENAME = 'KING'
  )
);

-- 67. to be done

-- 68. List the details of the senior EMPloyee belongs to 1981.
select * from emp where hiredate in (select min(hiredate) from emp where year(hiredate) = 1981); 