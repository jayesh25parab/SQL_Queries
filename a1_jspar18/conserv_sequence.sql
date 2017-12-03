

---  Please fill in your name and ID.
---
---  FIT9132 Introduction to databases
---  CONSERVATION schema 
---  conserv_sequence.sql 
---  Name : JAYESH PARAB
---  ID : 27148572

set echo on;

-- Add your code below
--Sequence for Animal table 
CREATE SEQUENCE animal_seq
  START WITH 31
  INCREMENT BY 1;
  
-- Sequence for Breeding_event table
CREATE SEQUENCE breeding_event_seq
  START WITH 11
  INCREMENT BY 1;

--Sequence for Exchange table  
CREATE SEQUENCE exchange_seq
  START WITH 11
  INCREMENT BY 1;

commit;

set echo off;
