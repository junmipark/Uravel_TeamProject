DROP TABLE MEMBER;
DROP TABLE SOCIAL_MEMBER;

CREATE TABLE MEMBER (
  USERNO NUMBER,
  USERID VARCHAR2(20),
  USERPW VARCHAR2(20) NOT NULL,
  USERNAME VARCHAR2(50) NOT NULL,
  BIRTH DATE,
  EMAIL VARCHAR2(100) NOT NULL,
  PHONE VARCHAR2(20),
  ROLE VARCHAR2(10) CHECK(ROLE IN ('ADMIN','USER')),
  ENABLED VARCHAR2(2) CHECK(ENABLED IN('Y','N')),
  PRIMARY KEY(USERNO), UNIQUE(USERID)
);

CREATE TABLE SOCIAL_MEMBER (
  USERID VARCHAR2(20) REFERENCES MEMBER(USERID), 
  SOCIAL_TYPE VARCHAR2(2) CHECK(SOCIAL_TYPE IN('K','N'))
);

SELECT * FROM MEMBER;
SELECT * FROM SOCIAL_MEMBER;

INSERT INTO DW."MEMBER" (USERNO,USERID,USERPW,USERNAME,BIRTH,EMAIL,PHONE,"ROLE",ENABLED) VALUES (3,'USER2','PASSWORD','유저2','21/10/27','USER2@URAVEL.COM',NULL,'USER','Y');
INSERT INTO DW."MEMBER" (USERNO,USERID,USERPW,USERNAME,BIRTH,EMAIL,PHONE,"ROLE",ENABLED) VALUES (4,'USER3','PASSWORD','유저3','21/10/27','USER3@URAVEL.COM',NULL,'USER','N');
INSERT INTO DW."MEMBER" (USERNO,USERID,USERPW,USERNAME,BIRTH,EMAIL,PHONE,"ROLE",ENABLED) VALUES (1,'ADMIN','ADMIN','관리자','21/10/27','ADMIN@URAVEL.COM',NULL,'ADMIN','Y');
INSERT INTO DW."MEMBER" (USERNO,USERID,USERPW,USERNAME,BIRTH,EMAIL,PHONE,"ROLE",ENABLED) VALUES (2,'USER1','PASSWORD','유저1','21/10/27','USER1@URAVEL.COM',NULL,'USER','Y');
INSERT INTO DW."MEMBER" (USERNO,USERID,USERPW,USERNAME,BIRTH,EMAIL,PHONE,"ROLE",ENABLED) VALUES (5,'USER4','PASSWORD','유저4','21/10/27','USER4@URAVEL.COM',NULL,'USER','N');
