---  Please fill in your name and ID.
---
---  FIT9132 Introduction to databases
---  CONSERVATION schema 
---  conserv_breed.sql 
---  Name : JAYESH PARAB
---  ID : 27148572

set echo on;

-- Add your code below

-- INSERTING into Breeding_event table
INSERT INTO BREEDING_EVENT
VALUES (breeding_event_seq.NEXTVAL,to_date('01-Aug-2014'),
(SELECT CENTRE_ID FROM CENTRE WHERE CENTRE_NAME = 'Werribee Open Range Zoo'),
000016,000009);

commit;

set echo off;




