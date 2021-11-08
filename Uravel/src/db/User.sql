DELETE FROM MEMBER;
DROP SEQUENCE memberseq;

CREATE SEQUENCE memberseq NOCACHE;

CREATE TABLE "MEMBER" (
   "USERNO" NUMBER, 
   "USERID" VARCHAR2(20), 
   "USERPW" VARCHAR2(20) NOT NULL ENABLE, 
   "USERNAME" VARCHAR2(50) NOT NULL ENABLE, 
   "BIRTH" VARCHAR2(8), 
   "EMAIL" VARCHAR2(100) NOT NULL ENABLE, 
   "PHONE" VARCHAR2(20), 
   "ROLE" VARCHAR2(10), 
   "ENABLED" VARCHAR2(2) DEFAULT 'Y', 
    CHECK (ROLE IN ('ADMIN','USER')) ENABLE, 
    CHECK (ENABLED IN('Y','N')) ENABLE, 
    PRIMARY KEY ("USERNO")
)

ALTER TABLE MEMBER MODIFY ENABLED DEFAULT 'Y';
ALTER TABLE MEMBER MODIFY BIRTH VARCHAR2(30);

INSERT INTO "MEMBER" VALUES(memberseq.nextval,'ADMIN','ADMIN','관리자', SYSDATE,'ADMIN@URAVEL.COM',NULL,'ADMIN', DEFAULT);
INSERT INTO "MEMBER" VALUES(MEMBERSEQ.NEXTVAL, 'USER1', 'PASSWORD', '유저1', SYSDATE, 'USER1@URAVEL.COM', NULL, 'USER', DEFAULT);
INSERT INTO "MEMBER" VALUES(MEMBERSEQ.NEXTVAL, 'USER2', 'PASSWORD', '유저2', SYSDATE, 'USER2@URAVEL.COM', NULL, 'USER', DEFAULT);

SELECT * FROM MEMBER;
