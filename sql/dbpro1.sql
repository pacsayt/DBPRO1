/* dbpro1.sql */

DROP TABLE szamok    ;
DROP TABLE sztringek ;
DROP TABLE kenyszer  ;
DROP TABLE datum     ;
DROP TABLE seq       ;
DROP TABLE gyerek    ;
DROP TABLE szulo     ;

DROP SEQUENCE seq_proba ;

CREATE TABLE szamok
(
  szam_tiz     NUMBER(10) ,
  szam_ket_nn  NUMBER(2) NOT NULL ,
  szam_har_har NUMBER(6,3)
) ;

CREATE TABLE sztringek
(
  chr_10   CHAR(10) ,
  vchr2_15 VARCHAR2(15) NOT NULL
--  strg     STRING(15)              ezt nem szereti...
) ;

CREATE TABLE kenyszer
(
  vchr2_cstr VARCHAR2(3) , -- be kell-e fernie a lezaro \0-nak is ? 
  CONSTRAINT chk_vchr2_cstr CHECK
  (
    LENGTH( vchr2_cstr ) = 3       AND
    vchr2_cstr BETWEEN 'A' AND 'Z'
  )
) ;

CREATE TABLE datum
(
  datum      DATE
) ;

CREATE TABLE seq
(
  seq NUMBER(10)
) ;

-- Tablak kulonbozo effektusok (PRIMARY KEY, REFERENCES, tomb atadasa)
-- sebessegre valo hatasanak megallapitasara
CREATE TABLE szulo
(
  kulcs NUMBER(10) PRIMARY KEY
) ;

CREATE TABLE gyerek
(
  kulcs NUMBER(10) REFERENCES szulo( kulcs)
) ;

CREATE SEQUENCE seq_proba START WITH 1 MAXVALUE 4294967295 ;

ALTER SESSION SET NLS_DATE_FORMAT = "YYYY MM DD" ;

--------------------------------------------------------

INSERT INTO szamok( szam_tiz, szam_ket_nn, szam_har_har)
  VALUES ( 1111111111, 11, 111.111) ;

INSERT INTO szamok
  VALUES ( 2222222222, 22, 22.22) ;

INSERT INTO szamok
  VALUES ( NULL, 33, 3.3) ;

INSERT INTO szamok
  VALUES ( 4, 4, 44) ;

INSERT INTO szamok
  VALUES ( 5, 5, 5) ;

INSERT INTO szamok
  VALUES ( NULL, NULL, NULL) ;

insert into szamok values( 1111111111,  1, 111.111) ;
insert into szamok values( 2222222222,  2, 222.222) ;
insert into szamok values( 3333333333,  3, 333.333) ;
insert into szamok values( 4444444444,  4, 444.444) ;
insert into szamok values( 5555555555,  5, 555.555) ;
insert into szamok values( 6666666666,  6, 666.666) ;
insert into szamok values( 7777777777,  7, 777.777) ;
insert into szamok values( 8888888888,  8, 888.888) ;
insert into szamok values( 9999999999,  9, 999.999) ;
insert into szamok values( 0000000000, 10, 000.000) ;

INSERT INTO sztringek
  VALUES ( 'abcdefghij', 'a') ;

INSERT INTO sztringek
  VALUES ( '1234567890', '12345678901234') ;

INSERT INTO sztringek
  VALUES ( '0987654321', '543210987654321') ;

INSERT INTO kenyszer
  VALUES ( 'ABC' ) ;

INSERT INTO kenyszer
  VALUES ( 'DEF' ) ;

INSERT INTO kenyszer
  VALUES ( 'GHI' ) ;

INSERT INTO datum
  VALUES ( TO_DATE('1981-12-03')) ;

INSERT INTO datum
  VALUES ( TO_DATE('1998-11-28')) ;

INSERT INTO datum
  VALUES ( TO_DATE('1998-11-29')) ;

INSERT INTO datum
  VALUES ( TO_DATE('1998-12-17')) ;

INSERT INTO datum
  VALUES ( TO_DATE('1998-12-18')) ;

INSERT INTO datum
  VALUES ( TO_DATE('1999-03-14')) ;

-- Ha kurzor erteket valtozoba akarom tolteni, kell egy tabla, melybol
-- pontosan 1 sor szelektalodik ki: seq.seq kamu tabla, melyben 1 sor van
INSERT INTO seq
  VALUES ( 1 ) ;
--------------------------------------------------
SELECT * FROM datum ;

select TO_CHAR( datum, 'YYYY-MON-DD') from datum ;
