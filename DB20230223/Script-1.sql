CREATE TABLE "HR"."HOBBY2"
(	"HOBBYID" NUMBER(38,0) NOT NULL ENABLE,
"CONTENT" VARCHAR2(100),
"LOCATION" VARCHAR2(100)
)

   INSERT INTO HOBBY VALUES (100, 'run', 'seoul')
   
   INSERT INTO HOBBY VALUES (200, 'book', 'busan')
   
   SELECT * FROM HOBBY
   
   SELECT CONTENT FROM HOBBY
   
   SELECT LOCATION , CONTENT FROM HOBBY