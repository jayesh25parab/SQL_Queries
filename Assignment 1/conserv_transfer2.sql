---  Please fill in your name and ID.
---
---  FIT9132 Introduction to databases
---  CONSERVATION schema 
---  conserv_transfer2.sql 
---  Name : JAYESH PARAB
---  ID 27148572

set echo on;

-- Add your code below
INSERT INTO EXCHANGE 
VALUES (exchange_seq.NEXTVAL,to_date('15-FEB-2015'),
(SELECT CENTRE_ID FROM CENTRE WHERE CENTRE_NAME ='Werribee Open Range Zoo'),
(SELECT CENTRE_ID FROM CENTRE WHERE CENTRE_NAME = 'Kruger National Park'),
000016,'B');

UPDATE Animal SET centre_id =
(SELECT CENTRE_ID FROM CENTRE WHERE CENTRE_NAME = 'Kruger National Park')
WHERE animal_id = 16;



set echo off;
