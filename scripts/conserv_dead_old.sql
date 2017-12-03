---  Please fill in your name and ID.
---
---  FIT9132 Introduction to databases
---  CONSERVATION schema 
---  conserv_dead.sql 
---  Name : 
---  ID : 

set echo on;

-- Add your code below
CREATE TABLE ANIMAL_SPAN (
                animal_span_id NUMBER (6,0) NOT NULL,
                animal_status CHAR(1) NOT NULL,
                animal_id NUMBER (6,0) NOT NULL,
                animal_sex CHAR(1) NOT NULL,
                CONSTRAINT ANIMAL_ANIMAL_SPAN PRIMARY KEY (animal_span_id)
);
COMMENT ON COLUMN ANIMAL_SPAN.animal_span_id IS 'UNIQUE identifier for breeding event';
COMMENT ON COLUMN ANIMAL_SPAN.animal_status IS 'Date on which breeding took place';
COMMENT ON COLUMN ANIMAL_SPAN.animal_id IS 'ID of centre where breeding took plece';

ALTER TABLE ANIMAL_SPAN ADD CONSTRAINT ANIMAL_ANIMAL_SPAN_FK
FOREIGN KEY (animal_id)
REFERENCES ANIMAL (animal_id)
NOT DEFERRABLE;

ALTER TABLE ANIMAL_SPAN ADD CONSTRAINT CHK_ANIMAL_STATUS
CHECK (animal_status in ('D','A'));

INSERT INTO ANIMAL_SPAN VALUES (000001,'A',000001);

UPDATE ANIMAL_SPAN SET ANIMAL_STATUS = 'D' 
WHERE ANIMAL_ID =000001;

UPDATE BREEDING_EVENT SET BREVENT_FATHER_ID = NULL 
WHERE ANIMAL_ID =000001 ;


DELETE FROM ANIMAL WHERE
ANIMAL_ID = (SELECT ANIMAL_ID FROM ANIMAL_SPAN 
where animal_status = 'D');






set echo off;