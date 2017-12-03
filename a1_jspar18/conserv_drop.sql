

---  Please fill in your name and ID.
---
---  FIT9132 Introduction to databases
---  CONSERVATION schema 
---  conserv_drop.ql 
---  Name : JAYESH PARAB
---  ID : 27148572


set echo on;
-- Conservation Drop Tables

drop table BREEDING_EVENT cascade constraints purge;
drop table EXCHANGE cascade constraints purge;
drop table ANIMAL cascade constraints purge;
drop table SPECIES cascade constraints purge;
drop table GRANTS cascade constraints purge;
drop table CENTRE cascade constraints purge;
drop table CONSERVATION_AGENCY cascade constraints purge;
drop table GRANT_TYPE cascade constraints purge;
drop table EXCHANGE_TYPE cascade constraints purge;
drop table REDLIST_STATUS cascade constraints purge;
drop table CENTRE_TYPE cascade constraints purge;

-- Conservation Drop Sequences

DROP SEQUENCE animal_seq;
DROP SEQUENCE breeding_event_seq;
DROP SEQUENCE exchange_seq;

commit;

set echo off;