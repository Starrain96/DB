CREATE TABLE student_infromation (
	학생번호 number(10) primary key,
	학생이름 varchar2(200),
	주소 varchar2(200),
	학과 varchar2(200)
)

CREATE TABLE subject_1 (
	강좌이름 varchar2(200) primary key,
	강의실 varchar2(200)
)

CREATE TABLE "record" (
	학생번호 number(10),
	강좌이름 varchar2(200),
	성적 number(10)
)

CREATE TABLE department (
	학과 varchar2(200),
	학과사무실 varchar2(200)
)


SELECT *
FROM STUDENT_INFROMATION si 
ORDER BY 학생번호

SELECT *
FROM DEPARTMENT d 

SELECT *
FROM "record" 

UPDATE DEPARTMENT  
SET 학과 = '컴퓨터'
WHERE 학과 = '컴퓨터과'

UPDATE "record"  
SET 강좌이름 = '자료구조'
WHERE 성적 = 4

UPDATE STUDENT_INFROMATION 
SET 주소= '대한민국 서울'
WHERE 학생이름 = '박지성' 

INSERT INTO STUDENT_INFROMATION
VALUES ('503', '이호준', '대한민국 서울', '컴퓨터과')

DELETE FROM STUDENT_INFROMATION si 
WHERE 학생이름 = '이호준'

SELECT *
FROM STUDENT_INFROMATION si 
INNER JOIN "record" r  
on (r.학생번호=si.학생번호)

SELECT *
FROM STUDENT_INFROMATION si 
INNER JOIN DEPARTMENT d  
on (d.학과 =si.학과)

SELECT * FROM STUDENT_INFROMATION si WHERE 학생번호 IN (SELECT 학생번호 FROM "record" r  WHERE 성적 = 3.5)

SELECT * FROM "record" r WHERE 강좌이름 = 
(SELECT 강좌이름 FROM SUBJECT_1 s WHERE 강의실 = '공학관 110')