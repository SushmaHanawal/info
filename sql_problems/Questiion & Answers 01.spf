<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>ContentFilters</key>
	<dict/>
	<key>auto_connect</key>
	<true/>
	<key>data</key>
	<dict>
		<key>connection</key>
		<dict>
			<key>database</key>
			<string>test</string>
			<key>host</key>
			<string>127.0.0.1</string>
			<key>name</key>
			<string>local database</string>
			<key>rdbms_type</key>
			<string>mysql</string>
			<key>sslCACertFileLocation</key>
			<string></string>
			<key>sslCACertFileLocationEnabled</key>
			<integer>0</integer>
			<key>sslCertificateFileLocation</key>
			<string></string>
			<key>sslCertificateFileLocationEnabled</key>
			<integer>0</integer>
			<key>sslKeyFileLocation</key>
			<string></string>
			<key>sslKeyFileLocationEnabled</key>
			<integer>0</integer>
			<key>type</key>
			<string>SPTCPIPConnection</string>
			<key>useSSL</key>
			<integer>0</integer>
			<key>user</key>
			<string>root</string>
		</dict>
		<key>session</key>
		<dict>
			<key>connectionEncoding</key>
			<string>utf8</string>
			<key>contentPageNumber</key>
			<integer>1</integer>
			<key>contentSelection</key>
			<data>
			YnBsaXN0MDDUAQIDBAUGJCVYJHZlcnNpb25YJG9iamVjdHNZJGFy
			Y2hpdmVyVCR0b3ASAAGGoKgHCBMUFRYaIVUkbnVsbNMJCgsMDxJX
			TlMua2V5c1pOUy5vYmplY3RzViRjbGFzc6INDoACgAOiEBGABIAF
			gAdUdHlwZVRyb3dzXxAdU2VsZWN0aW9uRGV0YWlsVHlwZU5TSW5k
			ZXhTZXTSFwsYGVxOU1JhbmdlQ291bnQQAIAG0hscHR5aJGNsYXNz
			bmFtZVgkY2xhc3Nlc1pOU0luZGV4U2V0oh8gWk5TSW5kZXhTZXRY
			TlNPYmplY3TSGxwiI1xOU0RpY3Rpb25hcnmiIiBfEA9OU0tleWVk
			QXJjaGl2ZXLRJidUZGF0YYABAAgAEQAaACMALQAyADcAQABGAE0A
			VQBgAGcAagBsAG4AcQBzAHUAdwB8AIEAoQCmALMAtQC3ALwAxwDQ
			ANsA3gDpAPIA9wEEAQcBGQEcASEAAAAAAAACAQAAAAAAAAAoAAAA
			AAAAAAAAAAAAAAABIw==
			</data>
			<key>contentSortColIsAsc</key>
			<true/>
			<key>contentViewport</key>
			<string>{{0, 0}, {694, 456}}</string>
			<key>isToolbarVisible</key>
			<true/>
			<key>queries</key>
			<string>-- 1. Display all the information of the EMP table
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
SELECT * FROM EMP WHERE HIREDATE &lt; '1981-01-01'

-- 8. List the Empno, Ename, Sal, Daily sal of all emps in the asc order of Annual sal
SELECT ENAME, EMPNO, SAL/30 AS DAILY_SAL, SAL * 12 AS ANNUAL_SAL
FROM EMP
ORDER BY SAL * 12 ASC;

-- 9. Display the Empno, Ename, job, Hiredate, Exp (Experience) of all Mgrs 
select empno, ename, job , hiredate, DATEDIFF(NOW() , hiredate)/(30*12) as experience
 from emp where empno in (select distinct mgr from emp);
</string>
			<key>view</key>
			<string>SP_VIEW_CUSTOMQUERY</string>
			<key>windowVerticalDividerPosition</key>
			<real>200</real>
		</dict>
	</dict>
	<key>encrypted</key>
	<false/>
	<key>format</key>
	<string>connection</string>
	<key>queryFavorites</key>
	<array/>
	<key>queryHistory</key>
	<array>
		<string>select empno, ename, job , hiredate, DATEDIFF(NOW() , hiredate)/(30*12) as experience
 from emp where empno in (select distinct mgr from emp)</string>
		<string>select empno, ename, job , hiredate, DATEDIFF(NOW() , hiredate)/30 as experience
 from emp where empno in (select distinct mgr from emp)</string>
		<string>select empno, ename, job , hiredate, DATEDIFF(NOW() , hiredate) as experience
 from emp where empno in (select distinct mgr from emp)</string>
		<string>select empno, ename, job , hiredate, DATEDIFF(NOW() , hiredate)/(12*30) as experience
 from emp where empno in (select distinct mgr from emp)</string>
		<string>select empno, ename, job , hiredate, DATEDIFF(NOW() - hiredate)/(12*30) as experience
 from emp where empno in (select distinct mgr from emp)</string>
		<string>select empno, ename, job , hiredate, (NOW() - hiredate)/(12*30) as experience
 from emp where empno in (select distinct mgr from emp)</string>
		<string>select empno, ename, job , hiredate, NOW() - hiredate as experience
 from emp where empno in (select distinct mgr from emp)</string>
		<string>select empno, ename, job , hiredate, CURDATE() - hiredate as experience
 from emp where empno in (select distinct mgr from emp)</string>
		<string>select empno, ename, job , hiredate, CURRENT_DATE - hiredate as experience
 from emp where empno in (select distinct mgr from emp)</string>
		<string>select empno, ename, job , hiredate, CURRENT_DATE() - hiredate as experience
 from emp where empno in (select distinct mgr from emp)</string>
		<string>select empno, ename, job , hiredate, current_timestamp - hiredate as experience
 from emp where empno in (select distinct mgr from emp)</string>
		<string>select * from emp</string>
		<string>SELECT * FROM EMP WHERE HIREDATE &lt; '1981-01-01'</string>
		<string>SELECT DISTINCT MGR FROM EMP</string>
		<string>select distinct job from emp order by job desc</string>
		<string>select * from emp order by sal asc</string>
		<string>1. select * from emp</string>
		<string>SELECT ENAME, EMPNO, SAL/30 AS DAILY_SAL, SAL * 12 AS ANNUAL_SAL
FROM EMP
ORDER BY SAL * 12 ASC</string>
		<string>SELECT ENAME, EMPNO, SAL/30
FROM EMP
ORDER BY SAL * 12 ASC</string>
		<string>SELECT * FROM EMP WHERE MGR = 7788</string>
	</array>
	<key>rdbms_type</key>
	<string>mysql</string>
	<key>rdbms_version</key>
	<string>5.7.11</string>
	<key>version</key>
	<integer>1</integer>
</dict>
</plist>
