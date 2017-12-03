---  Please fill in your name and ID.
---
---  FIT9132 Introduction to databases
---  CONSERVATION schema 
---  conserv_dead.sql 
---  Name : JAYESH PARAB 
---  ID : 27148572

set echo on;

-- Add your code below

ALTER TABLE ANIMAL 
ADD animal_status char (01);

ALTER TABLE Animal ADD CONSTRAINT CHK_ANIMAL_STATUS
CHECK (animal_status in ('D','A'));

set echo off;