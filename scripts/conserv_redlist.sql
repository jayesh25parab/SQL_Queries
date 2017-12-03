---  Please fill in your name and ID.
---
---  FIT9132 Introduction to databases
---  CONSERVATION schema 
---  conserv_redlist.sql 
---  Name : JAYESH PARAB
---  ID : 27148572

set echo on;

-- Add your code below
UPDATE SPECIES SET REDLIST_CODE = 'EN' 
WHERE SPEC_GENUS = 'Hippopotamus' 
AND SPEC_NAME = 'amphibius';


set echo off;


