---  Please fill in your name and ID.
---
---  FIT9132 Introduction to databases
---  CONSERVATION schema 
---  conserv_transfer.sql 
---  Name : JAYESH PARAB
---  ID : 27148572

set echo on;

-- Add your code below

-- INSERTING into EXCHANGE table
INSERT INTO EXCHANGE 
VALUES (exchange_seq.NEXTVAL,to_date('03-MAR-2014'),
(SELECT CENTRE_ID FROM CENTRE WHERE CENTRE_NAME ='Kruger National Park'),
(SELECT CENTRE_ID FROM CENTRE WHERE CENTRE_NAME = 'Werribee Open Range Zoo'),
000016,'B');

-- Updating Animal table
UPDATE Animal SET 
centre_id =(SELECT CENTRE_ID FROM CENTRE WHERE CENTRE_NAME = 'Werribee Open Range Zoo')
WHERE animal_id = 000016; 

commit;

set echo off;


