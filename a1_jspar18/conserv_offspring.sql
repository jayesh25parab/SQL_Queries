---  Please fill in your name and ID.
---
---  FIT9132 Introduction to databases
---  CONSERVATION schema 
---  conserv_offspring.sql 
---  Name : JAYESH PARAB
---  ID : 27148572

set echo on;

-- Add your code below

-- INSERTING into Animal table
INSERT INTO ANIMAL
VALUES (ANIMAL_SEQ.NEXTVAL,'M',
(SELECT BREVENT_ID FROM BREEDING_EVENT WHERE BREVENT_DATE = to_char('01-Aug-2014')),
(SELECT CENTRE_ID FROM CENTRE WHERE CENTRE_NAME = 'Werribee Open Range Zoo'),
'Panthera','leo');
INSERT INTO ANIMAL
VALUES (ANIMAL_SEQ.NEXTVAL,'M',
(SELECT BREVENT_ID FROM BREEDING_EVENT WHERE BREVENT_DATE = to_char('01-Aug-2014')),
(SELECT CENTRE_ID FROM CENTRE WHERE CENTRE_NAME = 'Werribee Open Range Zoo'),
'Panthera','leo');
INSERT INTO ANIMAL
VALUES (ANIMAL_SEQ.NEXTVAL,'F',
(SELECT BREVENT_ID FROM BREEDING_EVENT WHERE BREVENT_DATE = to_char('01-Aug-2014')),
(SELECT CENTRE_ID FROM CENTRE WHERE CENTRE_NAME = 'Werribee Open Range Zoo'),
'Panthera','leo');
INSERT INTO ANIMAL
VALUES (ANIMAL_SEQ.NEXTVAL,'F',
(SELECT BREVENT_ID FROM BREEDING_EVENT WHERE BREVENT_DATE = to_char('01-Aug-2014')),
(SELECT CENTRE_ID FROM CENTRE WHERE CENTRE_NAME = 'Werribee Open Range Zoo'),
'Panthera','leo');
INSERT INTO ANIMAL
VALUES (ANIMAL_SEQ.NEXTVAL,'F',
(SELECT BREVENT_ID FROM BREEDING_EVENT WHERE BREVENT_DATE = to_char('01-Aug-2014')),
(SELECT CENTRE_ID FROM CENTRE WHERE CENTRE_NAME = 'Werribee Open Range Zoo'),
'Panthera','leo');

commit;

set echo off;

