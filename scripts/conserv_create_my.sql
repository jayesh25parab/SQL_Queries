    
---  Please fill in your name and ID.
---
---  FIT9132 Introduction to databases
---  CONSERVATION schema 
---  conserv_create.sql 
---  Name : JAYESH PARAB
---  ID : 27148572

set echo on;



CREATE TABLE CENTRE_TYPE (
                ct_code CHAR(1) NOT NULL,
                ct_description VARCHAR2(40) NOT NULL,
                CONSTRAINT CENTRE_TYPE_PK PRIMARY KEY (ct_code)
);
COMMENT ON COLUMN CENTRE_TYPE.CT_Code IS 'Centre type code';
COMMENT ON COLUMN CENTRE_TYPE.CT_Description IS 'Centre type description';


CREATE TABLE REDLIST_STATUS (
                redlist_code CHAR(2) NOT NULL,
                redlist_category VARCHAR2(40) NOT NULL,
                CONSTRAINT REDLIST_STATUS_PK PRIMARY KEY (redlist_code)
);
COMMENT ON COLUMN REDLIST_STATUS.REDLIST_Code IS 'REDList code from http://www.iucnredlist.org/ for species';
COMMENT ON COLUMN REDLIST_STATUS.REDLIST_Category IS 'Description of redlist code';


CREATE TABLE EXCHANGE_TYPE (
                et_code CHAR(1) NOT NULL,
                et_description VARCHAR2(40) NOT NULL,
                CONSTRAINT EXCHANGE_TYPE_PK PRIMARY KEY (et_code)
);
COMMENT ON COLUMN EXCHANGE_TYPE.ET_Code IS 'Exchange type code';
COMMENT ON COLUMN EXCHANGE_TYPE.ET_Description IS 'Exchange type description';


CREATE TABLE GRANT_TYPE (
                gt_code CHAR(1) NOT NULL,
                gt_description VARCHAR2(40) NOT NULL,
                CONSTRAINT GRANT_TYPE_PK PRIMARY KEY (gt_code)
);
COMMENT ON COLUMN GRANT_TYPE.GT_Code IS 'Grant type code';
COMMENT ON COLUMN GRANT_TYPE.GT_Description IS 'Grant type description';


CREATE TABLE CONSERVATION_AGENCY (
                ca_code NUMBER(4,0) NOT NULL,
                ca_agency_name VARCHAR2(50) NOT NULL,
                ca_phone_no VARCHAR2(20) NOT NULL,
                ca_address VARCHAR2(100) NOT NULL,
                ca_type CHAR(1) NOT NULL
                     CONSTRAINT CA_TYPE_CHECK CHECK (ca_type in ('I','N')),
                CONSTRAINT CONSERVATION_AGENCY_PK PRIMARY KEY (ca_code)
);
COMMENT ON COLUMN CONSERVATION_AGENCY.CA_Code IS 'Unique identifier for Conservation Agency';
COMMENT ON COLUMN CONSERVATION_AGENCY.CA_Agency_name IS 'Conservation Agency name';
COMMENT ON COLUMN CONSERVATION_AGENCY.CA_Phone_no IS 'Conservation Agency contact phone number';
COMMENT ON COLUMN CONSERVATION_AGENCY.CA_Address IS 'Conservation Agency address';
COMMENT ON COLUMN CONSERVATION_AGENCY.CA_Type IS 'Conservation Agency type N or I - National or International';


CREATE TABLE Centre (
                centre_id CHAR(6) NOT NULL,
                centre_name VARCHAR2(40) NOT NULL,
                centre_address VARCHAR2(100) NOT NULL,
                centre_director VARCHAR2(30) NOT NULL,
                centre_phone_no VARCHAR2(20) NOT NULL,
                ct_code CHAR(1) NOT NULL,
                CONSTRAINT CENTRE_PK PRIMARY KEY (centre_id)
);
COMMENT ON COLUMN Centre.Centre_ID IS 'Unique identifier for Centre';
COMMENT ON COLUMN Centre.Centre_name IS 'Name of Centre';
COMMENT ON COLUMN Centre.Centre_Address IS 'Centre address';
COMMENT ON COLUMN Centre.Centre_Director IS 'Name of director of centre';
COMMENT ON COLUMN Centre.Centre_phone_no IS 'Centre phone contact number';
COMMENT ON COLUMN Centre.CT_Code IS 'Centre type code';


CREATE TABLE GRANTS (
                grant_id NUMBER(5,0) NOT NULL,
                grant_amount NUMBER(10,2) NOT NULL,
                ca_code NUMBER(4,0) NOT NULL,
                centre_id CHAR(6) NOT NULL,
                gt_code CHAR(1) NOT NULL,
                CONSTRAINT GRANTS_PK PRIMARY KEY (grant_id)
);
COMMENT ON COLUMN GRANTS.Grant_ID IS 'Unique identifier for grant';
COMMENT ON COLUMN GRANTS.Grant_Amount IS 'Amount $''s of grant';
COMMENT ON COLUMN GRANTS.CA_Code IS 'Conservation agency code which made grant';
COMMENT ON COLUMN GRANTS.Centre_ID IS 'ID of centre receiving grant';
COMMENT ON COLUMN GRANTS.GT_Code IS 'Grant type code';


CREATE TABLE Species (
                spec_genus VARCHAR2(20) NOT NULL,
                spec_name VARCHAR2(20) NOT NULL,
                spec_popular_name VARCHAR2(40) NOT NULL,
                spec_family VARCHAR2(20) NOT NULL,
                spec_natural_range VARCHAR2(100) NOT NULL,
                Spec_REDLIST_URL VARCHAR2(80) NOT NULL,
                redlist_code CHAR(2) NOT NULL,
                CONSTRAINT SPECIES_PK PRIMARY KEY (spec_genus, spec_name)
);
COMMENT ON COLUMN Species.Spec_Genus IS 'Species genus';
COMMENT ON COLUMN Species.Spec_Name IS 'Name of species';
COMMENT ON COLUMN Species.Spec_Popular_Name IS 'Species popular name';
COMMENT ON COLUMN Species.Spec_Family IS 'species family';
COMMENT ON COLUMN Species.Spec_Natural_range IS 'Description of natural range of species';
COMMENT ON COLUMN Species.Spec_REDLIST_URL IS 'URL from http://www.iucnredlist.org/ representing this species';
COMMENT ON COLUMN Species.REDLIST_Code IS 'REDList code from http://www.iucnredlist.org/ for species';

CREATE TABLE Exchange (
                exchange_no NUMBER(6,0) NOT NULL,
                exchange_date DATE NOT NULL,
                exchange_from_centre_id CHAR(6) NOT NULL,
                exchange_to_centre_id CHAR(6) NOT NULL,
                animal_id NUMBER(6,0) NOT NULL,
                et_code CHAR(1) NOT NULL,
                CONSTRAINT EXCHANGE_PK PRIMARY KEY (exchange_no)
);
COMMENT ON COLUMN Exchange.Exchange_no IS 'Unique identifier for animal exchange';
COMMENT ON COLUMN Exchange.Exchange_date IS 'Date of exchange (no time recorded, only day, month, year)';
COMMENT ON COLUMN Exchange.Exchange_From_Centre_ID IS 'ID of centre where the animal comes from';
COMMENT ON COLUMN Exchange.Exchange_To_Centre_ID IS 'ID of destination centre for exchange (centre going to)';
COMMENT ON COLUMN Exchange.Animal_ID IS 'ID of animal involved in exchange';
COMMENT ON COLUMN Exchange.ET_Code IS 'Exchange type code';


ALTER TABLE Centre ADD CONSTRAINT CENTRE_TYPE_CENTRE_FK
FOREIGN KEY (ct_code)
REFERENCES CENTRE_TYPE (ct_code)
NOT DEFERRABLE;

ALTER TABLE Species ADD CONSTRAINT REDLIST_STATUS_SPECIES_FK
FOREIGN KEY (redlist_code)
REFERENCES REDLIST_STATUS (redlist_code)
NOT DEFERRABLE;

ALTER TABLE GRANTS ADD CONSTRAINT GRANT_TYPE_GRANT_FK
FOREIGN KEY (gt_code)
REFERENCES GRANT_TYPE (gt_code)
NOT DEFERRABLE;

ALTER TABLE GRANTS ADD CONSTRAINT CA_GRANT_FK
FOREIGN KEY (ca_code)
REFERENCES CONSERVATION_AGENCY (ca_code)
NOT DEFERRABLE;


ALTER TABLE GRANTS ADD CONSTRAINT CENTRE_GRANT_FK
FOREIGN KEY (centre_id)
REFERENCES Centre (centre_id)
NOT DEFERRABLE;


ALTER TABLE Exchange ADD CONSTRAINT CENTRE_EXCHANGEFROM_FK
FOREIGN KEY (exchange_from_centre_id)
REFERENCES Centre (centre_id)
NOT DEFERRABLE;

ALTER TABLE Exchange ADD CONSTRAINT CENTRE_EXCHANGETO_FK
FOREIGN KEY (exchange_to_centre_id)
REFERENCES Centre (centre_id)
NOT DEFERRABLE;

ALTER TABLE Exchange ADD CONSTRAINT EXCHANGE_TYPE_EXCHANGE_FK
FOREIGN KEY (et_code)
REFERENCES EXCHANGE_TYPE (et_code)
NOT DEFERRABLE;



-- Add your code below to add the missing create table statements and the associated constraints. 


CREATE TABLE Animal (
                animal_id NUMBER (6,0) NOT NULL,
                animal_sex CHAR (1) NOT NULL,
                brevent_id NUMBER (6,0) NOT NULL,
                centre_id CHAR (6) NOT NULL,
                spec_genus VARCHAR2 (20) NOT NULL,
                spec_name VARCHAR2 (20) NOT NULL,
                CONSTRAINT ANIMAL_PK PRIMARY KEY (animal_id)
);
COMMENT ON COLUMN Animal.Animal_id IS 'Unique identifier for animal';
COMMENT ON COLUMN Animal.Animal_sex IS 'Sex of animal';
COMMENT ON COLUMN Animal.Brevent_id IS 'ID for breeding event';
COMMENT ON COLUMN Animal.centre_id IS 'Unique identifier for center';
COMMENT ON COLUMN Animal.spec_genus IS 'Species Genus';
COMMENT ON COLUMN Animal.spec_name IS 'Name of Species';


CREATE TABLE BREEDING_EVENT (
                brevent_id NUMBER (6,0) NOT NULL,
                brevent_date DATE NOT NULL,
                centre_id CHAR(6) NOT NULL,
                brevent_father_id NUMBER (6,0) NOT NULL,
                brevent_mother_id NUMBER (6,0) NOT NULL,
                CONSTRAINT BREEDING_EVENT_PK PRIMARY KEY (brevent_id)
);
COMMENT ON COLUMN BREEDING_EVENT.Brevent_id IS 'UNIQUE identifier for breeding event';
COMMENT ON COLUMN BREEDING_EVENT.Brevent_date IS 'Date on which breeding took place';
COMMENT ON COLUMN BREEDING_EVENT.Centre_id IS 'ID of centre where breeding took plece';
COMMENT ON COLUMN BREEDING_EVENT.Brevent_father_id IS 'ID of male animal used for breeding';
COMMENT ON COLUMN BREEDING_EVENT.Brevent_mother_id IS 'ID of female animal used for breeding';

ALTER TABLE Animal ADD CONSTRAINT SPECIES_ANIMAL_FK
FOREIGN KEY (spec_genus,spec_name)
REFERENCES Species (spec_genus,spec_name)
NOT DEFERRABLE;

ALTER TABLE Animal ADD CONSTRAINT CENTRE_ANIMAL_FK
FOREIGN KEY (centre_id)
REFERENCES Centre (centre_id)
NOT DEFERRABLE;

ALTER TABLE Animal ADD CONSTRAINT BREEDING_EVENT_ANIMAL_FK
FOREIGN KEY (brevent_id)
REFERENCES BREEDING_EVENT (brevent_id)
NOT DEFERRABLE;

ALTER TABLE BREEDING_EVENT ADD CONSTRAINT Centre_BREEDING_EVENT_FK
FOREIGN KEY (centre_id)
REFERENCES Centre (centre_id)
NOT DEFERRABLE;

ALTER TABLE BREEDING_EVENT ADD CONSTRAINT Animal_BREEDING_EVENT_FK
FOREIGN KEY (brevent_father_id)
REFERENCES Animal (animal_id)
NOT DEFERRABLE;

ALTER TABLE BREEDING_EVENT ADD CONSTRAINT Animal_BREEDING_EVENT_FK1
FOREIGN KEY (brevent_mother_id)
REFERENCES Animal (animal_id)
NOT DEFERRABLE;
                

        
set echo off;
