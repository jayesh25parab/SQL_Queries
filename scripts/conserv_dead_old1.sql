---  Please fill in your name and ID.
---
---  FIT9132 Introduction to databases
---  CONSERVATION schema 
---  conserv_dead.sql 
---  Name : JAYESH PARAB 
---  ID : 27148572

set echo on;

-- Add your code below

CREATE TABLE Animal_Status_Information (
                animal_status char (1) NOT NULL,
                animal_status_info VARCHAR2 (5) NOT NULL,
                CONSTRAINT Animal_Status_Information PRIMARY KEY (animal_status)
);
COMMENT ON COLUMN Animal_Status_Information.animal_status IS 'Status of Animal'; 
COMMENT ON COLUMN Animal_Status_Information.animal_status_info IS 'Information of Status of Animal'; 

Insert into Animal_Status_Information values ('D','Dead');
Insert into Animal_Status_Information values ('A','Alive');

CREATE TABLE Animal (
                animal_id NUMBER (6,0) NOT NULL,
                animal_sex CHAR (1) NOT NULL,
                brevent_id NUMBER (6,0),
                centre_id CHAR (6) NOT NULL,
                spec_genus VARCHAR2 (20) NOT NULL,
                spec_name VARCHAR2 (20) NOT NULL,
                animal_status CHAR (1) NOT NULL,
                CONSTRAINT ANIMAL_PK PRIMARY KEY (animal_id)
);
COMMENT ON COLUMN Animal.Animal_id IS 'Unique identifier for animal';
COMMENT ON COLUMN Animal.Animal_sex IS 'Sex of animal';
COMMENT ON COLUMN Animal.Brevent_id IS 'ID for breeding event';
COMMENT ON COLUMN Animal.centre_id IS 'Unique identifier for center';
COMMENT ON COLUMN Animal.spec_genus IS 'Species Genus';
COMMENT ON COLUMN Animal.spec_name IS 'Name of Species'; 
COMMENT ON COLUMN Animal.animal_status IS 'Status of Animal'; 

ALTER TABLE Animal ADD CONSTRAINT ANIMAL_STATUS_INFORMATION_FK
FOREIGN KEY (animal_status)
REFERENCES Animal_status_Information (animal_status)
NOT DEFERRABLE;

Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME,ANIMAL_STATUS) values (000003,'F',000001,'AUS10','Setonix','brachyurus','A');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME,ANIMAL_STATUS) values (000004,'F',000002,'AUS10','Diceros','bicornis','A');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME,ANIMAL_STATUS) values (000007,'F',000008,'AUS20','Hippopotamus','amphibius','A');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME,ANIMAL_STATUS) values (000009,'F',000007,'AUS20','Panthera','leo','A');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME,ANIMAL_STATUS) values (000012,'M',000003,'AUS30','Diceros','bicornis','A');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME,ANIMAL_STATUS) values (000015,'F',000004,'AUS30','Acinonyx','jubatus','A');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME,ANIMAL_STATUS) values (000018,'M',000005,'SAF10','Panthera','leo','A');


UPDATE Animal SET animal_status = 'D' 
WHERE animal_id = '000003'; 


set echo off;