--join: 왜 하는가?
-- 검색을 하고 싶은데 항목들이 흩어져 있어 테이블을 모아서 검색을 하고 싶을 때

SELECT *
FROM BBS b ,MEMBER4 m 
WHERE b.WIRTER =m.ID 

SELECT b."no" ,b.TITLE  , m.NAME 
FROM BBS b ,MEMBER4 m 
WHERE b.WIRTER =m.ID 

--INNER JOIN  : 테이블간 공통적인 값만 추출

SELECT EMPNO ,ENAME ,JOB ,e.DEPTNO  ,d.LOC
FROM EMP e ,DEPT d 
WHERE e.DEPTNO = d.DEPTNO 

SELECT *
FROM "MEMBER" m 
LEFT OUTER JOIN BBS b 
on (m.ID = b.WIRTER)

1 . emp테이블의 정보는 다 보이게 하고 싶음. dept는 맞는 것만 오른쪽에 붙여주고 싶음.

SELECT *
FROM EMP e 
LEFT OUTER JOIN DEPT d 
ON (e.DEPTNO=d.DEPTNO)

2. dept테이블의 정보는 다 보이게 하고 싶음. emp는 맞는 것만 오른쪽에 붙여주고 싶음.

SELECT *
FROM EMP e 
RIGHT OUTER JOIN DEPT d 
ON (e.DEPTNO=d.DEPTNO)


--1

SELECT *
FROM MEMBER4 m ,BBS b 
WHERE m.ID = b.WIRTER 

--2

SELECT *
FROM MEMBER4 m 
LEFT OUTER JOIN BBS b 
ON (m.ID=b.WIRTER)
ORDER BY "no"

--3

SELECT *
FROM MEMBER4 m 
RIGHT OUTER JOIN BBS b 
ON (m.ID=b.WIRTER)
ORDER BY "no"

DELETE FROM PRODUCT p 

CREATE TABLE company (
	id varchar2(200) primary key,
	name varchar2(200),
	addr varchar2(200),
	tel varchar2(200)
)

INSERT INTO company VALUES ('c100', 'good', 'seoul', '011')

INSERT INTO company VALUES ('c200', 'joa', 'busan', '012')

INSERT INTO company VALUES ('c300', 'maria', 'ulsan', '013')

INSERT INTO company VALUES ('c400', 'my', 'kwangju', '014')

SELECT * FROM company



--

SELECT * FROM COMPANY c 

SELECT * FROM PRODUCT p 

SELECT *
FROM COMPANY c
INNER JOIN PRODUCT p 
ON (c.ID=p.COMPANY)



SELECT *
FROM COMPANY c 
LEFT OUTER JOIN PRODUCT p  
ON (c.ID=p.COMPANY)
ORDER BY c.ID 

SELECT *
FROM COMPANY c 
RIGHT OUTER JOIN PRODUCT p  
ON (c.ID=p.COMPANY)
ORDER BY p.COMPANY


