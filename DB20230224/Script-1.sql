CREATE TABLE "HR"."NOTICE" 
   (	"BOARDNO" NUMBER(38,0), 
	"TITLE" VARCHAR2(100), 
	"CONTENTS" VARCHAR2(100), 
	"WRITER" VARCHAR2(100), 
	"WRITEDATE" DATE, 
	"RECOMMEND" NUMBER(38,0), 
	"VIEW_COUNT" NUMBER(38,0)
   )
   
CREATE TABLE "HR"."RECOMMEND" 
   (	
    "RE_NO" NUMBER(38,0), 
	"TITLE" VARCHAR2(100), 
	"CONTENTS" VARCHAR2(100), 
	"WRITER" VARCHAR2(100)
   )
   
   DROP TABLE RECOMMEND  --테이블 삭제 통쨰로 날림
   
   CREATE TABLE "HR"."RECOMMEND" 
   (	
    "RE_NO" NUMBER(38,0), 
	"TITLE" VARCHAR2(100), 
	"CONTENTS" VARCHAR2(100), 
	"WRITER" VARCHAR2(100)
   )
   
  ALTER TABLE HR.RECOMMEND MODIFY TITLE VARCHAR2(300);
  
   ALTER TABLE BOARD3 DROP COLUMN view_count
   
   ALTER TABLE BOARD3 ADD test2 varchar2(100)
   
   DROP TABLE BOARD3
   
   CREATE USER apple IDENTIFIED BY a1234
   
   GRANT CONNECT, resource, dba TO apple
   
   
   
   
   
  
  