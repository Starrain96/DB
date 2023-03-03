SELECT * FROM EMP e 
--1

SELECT UPPER(ENAME) FROM emp 

--2

SELECT LENGTH(ename) FROM EMP e 

--3

SELECT SUBSTR(ename,2) FROM EMP e  

SELECT SUBSTR(ename,1,2) FROM EMP e  

SELECT SUBSTR(ename,-2) FROM EMP e  

--4

SELECT REPLACE (ename,'L','N') FROM EMP e 

--5

SELECT LPAD(ename,6,'#') FROM EMP e  

SELECT RPAD(ename,6,'#') FROM EMP e  

--6

SELECT CONCAT( CONCAT(EMPNO , ':'),ENAME  )AS concat_result FROM EMP e  

SELECT EMPNO ||':'|| ENAME FROM EMP e  

SELECT * FROM EMP e 

--7

SELECT trim('W' FROM ename) FROM EMP e 

SELECT TRIM(' hong ') FROM emp



----

SELECT * FROM EMP e 

SELECT LENGTH (TRIM(ENAME)) FROM EMP e 

SELECT TRIM(BOTH 'A' FROM ename) FROM EMP e  

SELECT TRIM(LEADING  'A' FROM ename) FROM EMP e  

SELECT TRIM(TRAILING  'A' FROM ename) FROM EMP e  

SELECT REPLACE (ename, ' ', '') FROM EMP e  

----

SELECT * FROM EMP e 


UPDATE EMP
SET comm = 0
WHERE comm IS NULL 

SELECT sal + comm AS total 
FROM EMP e 


----

--1

SELECT LENGTH (TRIM(ENAME)) FROM EMP e 

--2

SELECT LENGTH (TRIM(ENAME)) 
FROM EMP e 
WHERE job='MANAGER'

--3

SELECT ENAME , JOB 
FROM EMP e 
WHERE COMM IS NULL 

--4

SELECT HIREDATE 
FROM EMP e 
WHERE COMM IS NOT NULL 

--5

SELECT SUBSTR(ENAME,2) FROM EMP e 

--6

SELECT SUBSTR(JOB ,1,3) FROM EMP e 

--7

SELECT REPLACE (ENAME,'K','P') FROM EMP e 

--8

SELECT CONCAT(empno,CONCAT('번은 ', CONCAT(ENAME, '입니다.'))) FROM EMP e 

--9

SELECT HIREDATE,
	TO_CHAR(HIREDATE ,'Month') AS 월,
	TO_CHAR(HIREDATE  , 'dd') AS 요일 
	FROM EMP e 

--10
	
	SELECT * FROM EMP e 
	
SELECT
CASE 
	WHEN job = 'MANAGER' THEN  'level1'
	WHEN job = 'SALESMAN' THEN  'level2'
	ELSE 'level3'
END AS level_result
FROM EMP e 


SELECT JOB , COUNT(sal), SUM(sal), ROUND(AVG(sal)) , MIN(sal), MAX(sal)
FROM EMP e 
GROUP BY JOB
ORDER BY JOB 

SELECT JOB , COUNT(sal), SUM(sal), ROUND(AVG(sal)) , MIN(sal), MAX(sal)
FROM EMP e 
GROUP BY JOB
HAVING COUNT(SAL)>=4 --그룹을 지어서 검색후 , 필터링을 더 하고 싶을 때
ORDER  BY  JOB DESC -- 필터링까지 끝난 거로 정렬만 하기

--1

SELECT COUNT(job) FROM EMP e 

--2

SELECT COUNT(job)
FROM EMP e 
WHERE DEPTNO =20 or MGR  <= 7700

--3

SELECT MIN(sal)
FROM EMP e 
WHERE DEPTNO =10 OR DEPTNO =20

--4

SELECT MIN(sal), MAX(sal), SUM(sal)
FROM EMP e 

--5

SELECT AVG(sal)
FROM EMP e 
GROUP BY DEPTNO 

--6

SELECT SUM(sal)
FROM EMP e 
GROUP BY DEPTNO 
ORDER BY DEPTNO 

--7

SELECT AVG(sal)
FROM EMP e 
GROUP BY DEPTNO 
HAVING AVG(sal)>=2000
ORDER BY DEPTNO DESC 

--8

SELECT COUNT(job), AVG(sal)
FROM EMP e 
WHERE job = 'MANAGER'

--9

SELECT COUNT(job)
FROM EMP e
WHERE ENAME LIKE '%S%'

--10

SELECT COUNT(job)
FROM EMP e 
WHERE COMM IS NOT NULL AND sal >= 3000
ORDER BY SAL DESC 

--

CREATE TABLE "HR"."BBS" 
   (	"ID" VARCHAR2(10), 
	"PW" VARCHAR2(10), 
	"NAME" VARCHAR2(10), 
	"TEL" VARCHAR2(10), 
	 CONSTRAINT "BBS_PK" PRIMARY KEY ("ID"))

	 CREATE TABLE "HR"."MEMBER4" 
   (	"ID" VARCHAR2(10), 
	"PW" VARCHAR2(10), 
	"NAME" VARCHAR2(10), 
	"TEL" VARCHAR2(10), 
	 CONSTRAINT "MEMBER4_PK" PRIMARY KEY ("ID"))

--
	 
	 
	 
	 
