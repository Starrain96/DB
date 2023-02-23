
CREATE TABLE member2 (
	id varchar2(100),
	pw varchar2(100),
	name varchar2(100),
	tel varchar2(100)
)

CREATE TABLE "HR"."PRODUCT2" 
   (	"ID" VARCHAR2(100), 
	"NAME" VARCHAR2(100), 
	"CONTENT" VARCHAR2(100), 
	"PRICE" NUMBER(38,0)
   )
   
   CREATE TABLE "HR"."MEMBER3" 
   (	"ID" VARCHAR2(100), 
	"PW" VARCHAR2(100), 
	"NAME" VARCHAR2(100), 
	"TEL" VARCHAR2(100)
   )
   
   INSERT INTO MEMBER VALUES ('bongokoko', '0408', '이호준', '01023346789')
   
   INSERT INTO MEMBER VALUES ('apple', '0408', '이호준', '01023346789')
   
   INSERT INTO MEMBER VALUES ('ice', '0408', '이호준', '01023346789')
   
   INSERT INTO MEMBER VALUES ('melon', '0408', '이호준', '01023346789')
   
   SELECT * FROM MEMBER
   
   SELECT id FROM MEMBER
   
   SELECT id, pw FROM MEMBER
   