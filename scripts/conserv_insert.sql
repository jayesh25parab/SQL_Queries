set echo on;

-- INSERT sample data

-- INSERTING into REDLIST_STATUS
Insert into REDLIST_STATUS (REDLIST_CODE,REDLIST_CATEGORY) values ('LC','Least concern');
Insert into REDLIST_STATUS (REDLIST_CODE,REDLIST_CATEGORY) values ('NT','Near threatened');
Insert into REDLIST_STATUS (REDLIST_CODE,REDLIST_CATEGORY) values ('VU','Vulnerable');
Insert into REDLIST_STATUS (REDLIST_CODE,REDLIST_CATEGORY) values ('EN','Endangered');
Insert into REDLIST_STATUS (REDLIST_CODE,REDLIST_CATEGORY) values ('CR','Critically Endangered');
Insert into REDLIST_STATUS (REDLIST_CODE,REDLIST_CATEGORY) values ('EW','Extinct in the wild');
Insert into REDLIST_STATUS (REDLIST_CODE,REDLIST_CATEGORY) values ('EX','Extinct');

-- INSERTING into CENTRE_TYPE
Insert into CENTRE_TYPE (CT_CODE,CT_DESCRIPTION) values ('Z','Zoo');
Insert into CENTRE_TYPE (CT_CODE,CT_DESCRIPTION) values ('W','Wildlife Park');
Insert into CENTRE_TYPE (CT_CODE,CT_DESCRIPTION) values ('S','Sanctuary');
Insert into CENTRE_TYPE (CT_CODE,CT_DESCRIPTION) values ('N','Nature Reserve');
Insert into CENTRE_TYPE (CT_CODE,CT_DESCRIPTION) values ('O','Other');

-- INSERTING into EXCHANGE_TYPE
Insert into EXCHANGE_TYPE (ET_CODE,ET_DESCRIPTION) values ('L','Loan');
Insert into EXCHANGE_TYPE (ET_CODE,ET_DESCRIPTION) values ('M','Medical Treatment');
Insert into EXCHANGE_TYPE (ET_CODE,ET_DESCRIPTION) values ('B','Breeding');
Insert into EXCHANGE_TYPE (ET_CODE,ET_DESCRIPTION) values ('P','Permanent Transfer');

-- INSERTING into GRANT_TYPE
Insert into GRANT_TYPE (GT_CODE,GT_DESCRIPTION) values ('E','Equipment');
Insert into GRANT_TYPE (GT_CODE,GT_DESCRIPTION) values ('B','Building');
Insert into GRANT_TYPE (GT_CODE,GT_DESCRIPTION) values ('X','Exchange Costs');
Insert into GRANT_TYPE (GT_CODE,GT_DESCRIPTION) values ('C','Animal Capture');
Insert into GRANT_TYPE (GT_CODE,GT_DESCRIPTION) values ('A','Annual Maintenance');
Insert into GRANT_TYPE (GT_CODE,GT_DESCRIPTION) values ('O','Other');

-- INSERTING into SPECIES
Insert into SPECIES (SPEC_GENUS,SPEC_NAME,SPEC_POPULAR_NAME,SPEC_FAMILY,SPEC_NATURAL_RANGE,SPEC_REDLIST_URL,REDLIST_CODE) values ('Myrmecobius','fasciatus','Numbat','MYRMECOBIIDAE','Occurs naturally in Dryandra and Perup in south-western Western Australia','http://www.iucnredlist.org/apps/redlist/details/14222/0','EN');
Insert into SPECIES (SPEC_GENUS,SPEC_NAME,SPEC_POPULAR_NAME,SPEC_FAMILY,SPEC_NATURAL_RANGE,SPEC_REDLIST_URL,REDLIST_CODE) values ('Sarcophilus','harrisii','Tasmanian Devil','DASYURIDAE','Found throughout mainland Tasmania Australia; an area of 64 030 sqkm','http://www.iucnredlist.org/apps/redlist/details/40540/0','EN');
Insert into SPECIES (SPEC_GENUS,SPEC_NAME,SPEC_POPULAR_NAME,SPEC_FAMILY,SPEC_NATURAL_RANGE,SPEC_REDLIST_URL,REDLIST_CODE) values ('Macrotis','lagotis','Greater Bilby','THYLACOMYIDAE','Formerly over 70% of the mainland Australia now only Tanami; Gibson and the Great Sandy Deserts','http://www.iucnredlist.org/apps/redlist/details/12650/0','VU');
Insert into SPECIES (SPEC_GENUS,SPEC_NAME,SPEC_POPULAR_NAME,SPEC_FAMILY,SPEC_NATURAL_RANGE,SPEC_REDLIST_URL,REDLIST_CODE) values ('Lasiorhinus','krefftii','Northern Hairy-nosed Wombat','VOMBATIDAE','Currently restricted to Epping Forest National Park; central Queensland','http://www.iucnredlist.org/apps/redlist/details/11343/0','CR');
Insert into SPECIES (SPEC_GENUS,SPEC_NAME,SPEC_POPULAR_NAME,SPEC_FAMILY,SPEC_NATURAL_RANGE,SPEC_REDLIST_URL,REDLIST_CODE) values ('Setonix','brachyurus','Quokka','MACROPODIDAE','Endemic to the south-west of Western Australia; Australia; including Rottnest and Bald Islands','http://www.iucnredlist.org/apps/redlist/details/20165/0','VU');
Insert into SPECIES (SPEC_GENUS,SPEC_NAME,SPEC_POPULAR_NAME,SPEC_FAMILY,SPEC_NATURAL_RANGE,SPEC_REDLIST_URL,REDLIST_CODE) values ('Acinonyx','jubatus','Cheetah','FELIDAE','Occur widely but sparsely in Africa; have disappeared from 76% of their historic range','http://www.iucnredlist.org/apps/redlist/details/219/0','VU');
Insert into SPECIES (SPEC_GENUS,SPEC_NAME,SPEC_POPULAR_NAME,SPEC_FAMILY,SPEC_NATURAL_RANGE,SPEC_REDLIST_URL,REDLIST_CODE) values ('Diceros','bicornis','Black Rhinoceros','RHINOCEROTIDAE','Four recognized ecotypes/subspecies of Black Rhinoceros occupying different areas of Africa','http://www.iucnredlist.org/apps/redlist/details/6557/0','CR');
Insert into SPECIES (SPEC_GENUS,SPEC_NAME,SPEC_POPULAR_NAME,SPEC_FAMILY,SPEC_NATURAL_RANGE,SPEC_REDLIST_URL,REDLIST_CODE) values ('Equus','zebra','Mountain Zebra','EQUIDAE','Southern parts of South Africa through Namibia and into extreme south-western Angola','http://www.iucnredlist.org/apps/redlist/details/7960/0','VU');
Insert into SPECIES (SPEC_GENUS,SPEC_NAME,SPEC_POPULAR_NAME,SPEC_FAMILY,SPEC_NATURAL_RANGE,SPEC_REDLIST_URL,REDLIST_CODE) values ('Panthera','leo','Lion','FELIDAE','Most countries in sub-Saharan Africa.  Most lion range is in eastern and southern Africa (77%)','http://www.iucnredlist.org/apps/redlist/details/15951/0','VU');
Insert into SPECIES (SPEC_GENUS,SPEC_NAME,SPEC_POPULAR_NAME,SPEC_FAMILY,SPEC_NATURAL_RANGE,SPEC_REDLIST_URL,REDLIST_CODE) values ('Hippopotamus','amphibius','Common Hippopotamus','HIPPOPOTAMIDAE','Many countries of sub-Saharan Africa; disappeared from most of SA except for Kruger National Park','http://www.iucnredlist.org/apps/redlist/details/10103/0','VU');
Insert into SPECIES (SPEC_GENUS,SPEC_NAME,SPEC_POPULAR_NAME,SPEC_FAMILY,SPEC_NATURAL_RANGE,SPEC_REDLIST_URL,REDLIST_CODE) values ('Equus','grevyi','Grevy''s Zebra','EQUIDAE','Grevy''s Zebra is confined to the Horn of Africa, specifically Ethiopia and Kenya.','http://www.iucnredlist.org/apps/redlist/details/7950/0','EN');

-- INSERTING into CONSERVATION_AGENCY
Insert into CONSERVATION_AGENCY (CA_CODE,CA_AGENCY_NAME,CA_PHONE_NO,CA_ADDRESS,CA_TYPE) values (10,'Humane Society International','61-2-9973 1728','PO Box 439, Avalon NSW 2107, Australia','I');
Insert into CONSERVATION_AGENCY (CA_CODE,CA_AGENCY_NAME,CA_PHONE_NO,CA_ADDRESS,CA_TYPE) values (20,'World Wildlife Fund','1-202-2934800','P.O. Box 97180, Washington DC 20090-7180, USA','I');
Insert into CONSERVATION_AGENCY (CA_CODE,CA_AGENCY_NAME,CA_PHONE_NO,CA_ADDRESS,CA_TYPE) values (30,'Australian Conservation Society','61-03-9345 1111 ','First Floor 60 Leicester Street, Carlton VIC 3053, Australia','N');
Insert into CONSERVATION_AGENCY (CA_CODE,CA_AGENCY_NAME,CA_PHONE_NO,CA_ADDRESS,CA_TYPE) values (40,'Department of Environmental Affairs','27-12-3103911','315 Pretorius street, Pretoria 0001, South Africa','N');
Insert into CONSERVATION_AGENCY (CA_CODE,CA_AGENCY_NAME,CA_PHONE_NO,CA_ADDRESS,CA_TYPE) values (50,'Wildlife Conservation Society','1-718-2205100','2300 Southern Boulevard, Bronx New York 10460, USA','I');

-- INSERTING into CENTRE
Insert into CENTRE (CENTRE_ID,CENTRE_NAME,CENTRE_ADDRESS,CENTRE_DIRECTOR,CENTRE_PHONE_NO,CT_CODE) values ('AUS10','Australia Zoo','1638 Steve Irwin Way, Beerwah  QLD  4519, Australia','Terri Irwin','61-7-54362000','Z');
Insert into CENTRE (CENTRE_ID,CENTRE_NAME,CENTRE_ADDRESS,CENTRE_DIRECTOR,CENTRE_PHONE_NO,CT_CODE) values ('AUS20','Werribee Open Range Zoo','K Road, Werribee VIC 3030, Australia','Graham Jones','61-3-92859300','Z');
Insert into CENTRE (CENTRE_ID,CENTRE_NAME,CENTRE_ADDRESS,CENTRE_DIRECTOR,CENTRE_PHONE_NO,CT_CODE) values ('AUS30','Alice Springs Desert Park','Larapinta Drive, Alice Springs NT 0871, Australia','Mary Darwin','61-8-89518788','N');
Insert into CENTRE (CENTRE_ID,CENTRE_NAME,CENTRE_ADDRESS,CENTRE_DIRECTOR,CENTRE_PHONE_NO,CT_CODE) values ('SAF10','Kruger National Park','Kruger National Park, South Africa','Abe Sibiya','27-13-7354000','W');
Insert into CENTRE (CENTRE_ID,CENTRE_NAME,CENTRE_ADDRESS,CENTRE_DIRECTOR,CENTRE_PHONE_NO,CT_CODE) values ('SAF20','Johannesburg Zoo','Jan Smuts Avenue, PARKVIEW 2122, South Africa','Stephen Van Der Spuy','27-11-6462000','Z');
Insert into CENTRE (CENTRE_ID,CENTRE_NAME,CENTRE_ADDRESS,CENTRE_DIRECTOR,CENTRE_PHONE_NO,CT_CODE) values ('SAF30','SanWild Wildlife Sanctuary','LETSITELE 0885, South Africa','Louise Joubert','27-15-3187900','S');

-- INSERTING into GRANTS
Insert into GRANTS (GRANT_ID,GRANT_AMOUNT,CA_CODE,CENTRE_ID,GT_CODE) values (10,1500000,10,'AUS30 ','B');
Insert into GRANTS (GRANT_ID,GRANT_AMOUNT,CA_CODE,CENTRE_ID,GT_CODE) values (20,200000,30,'AUS10 ','X');
Insert into GRANTS (GRANT_ID,GRANT_AMOUNT,CA_CODE,CENTRE_ID,GT_CODE) values (30,2500000,20,'SAF20 ','B');
Insert into GRANTS (GRANT_ID,GRANT_AMOUNT,CA_CODE,CENTRE_ID,GT_CODE) values (40,275000,10,'SAF30 ','C');
Insert into GRANTS (GRANT_ID,GRANT_AMOUNT,CA_CODE,CENTRE_ID,GT_CODE) values (50,875000,20,'AUS30 ','A');
Insert into GRANTS (GRANT_ID,GRANT_AMOUNT,CA_CODE,CENTRE_ID,GT_CODE) values (60,240000,40,'SAF20 ','A');
Insert into GRANTS (GRANT_ID,GRANT_AMOUNT,CA_CODE,CENTRE_ID,GT_CODE) values (70,185000,10,'AUS30 ','E');
Insert into GRANTS (GRANT_ID,GRANT_AMOUNT,CA_CODE,CENTRE_ID,GT_CODE) values (80,45000,50,'AUS30 ','A');
Insert into GRANTS (GRANT_ID,GRANT_AMOUNT,CA_CODE,CENTRE_ID,GT_CODE) values (90,160500,50,'AUS30 ','O');
Insert into GRANTS (GRANT_ID,GRANT_AMOUNT,CA_CODE,CENTRE_ID,GT_CODE) values (100,1650000,10,'SAF10 ','B');
Insert into GRANTS (GRANT_ID,GRANT_AMOUNT,CA_CODE,CENTRE_ID,GT_CODE) values (110,750000,20,'SAF10 ','A');

-- INSERTING into ANIMAL
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000001,'M',null,'AUS10','Setonix','brachyurus');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000002,'F',null,'AUS10','Setonix','brachyurus');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000005,'M',null,'AUS10','Setonix','brachyurus');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000006,'M',null,'AUS20','Acinonyx','jubatus');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000008,'M',null,'AUS20','Equus','zebra');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000010,'M',null,'AUS30','Diceros','bicornis');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000011,'F',null,'AUS30','Diceros','bicornis');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000013,'M',null,'AUS30','Acinonyx','jubatus');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000014,'F',null,'AUS30','Acinonyx','jubatus');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000016,'M',null,'SAF10','Panthera','leo');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000017,'F',null,'SAF10','Panthera','leo');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000021,'M',null,'SAF20','Myrmecobius','fasciatus');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000022,'M',null,'SAF20','Sarcophilus','harrisii');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000023,'M',null,'SAF20','Macrotis','lagotis');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000024,'F',null,'SAF20','Lasiorhinus','krefftii');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000025,'M',null,'SAF20','Equus','grevyi');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000026,'M',null,'SAF30','Hippopotamus','amphibius');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000027,'F',null,'SAF30','Hippopotamus','amphibius');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000028,'F',null,'SAF30','Panthera','leo');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000029,'F',null,'SAF30','Equus','grevyi');

-- INSERTING into BREEDING_EVENT
Insert into BREEDING_EVENT (BREVENT_ID,BREVENT_DATE,CENTRE_ID,BREVENT_FATHER_ID,BREVENT_MOTHER_ID) values (000001,to_date('15-OCT-2012'),'AUS10',000001,000002);
Insert into BREEDING_EVENT (BREVENT_ID,BREVENT_DATE,CENTRE_ID,BREVENT_FATHER_ID,BREVENT_MOTHER_ID) values (000002,to_date('30-SEP-2012'),'AUS30',000010,000011);
Insert into BREEDING_EVENT (BREVENT_ID,BREVENT_DATE,CENTRE_ID,BREVENT_FATHER_ID,BREVENT_MOTHER_ID) values (000003,to_date('12-JUL-2012'),'AUS30',000010,000011);
Insert into BREEDING_EVENT (BREVENT_ID,BREVENT_DATE,CENTRE_ID,BREVENT_FATHER_ID,BREVENT_MOTHER_ID) values (000004,to_date('19-AUG-2012'),'AUS30',000013,000014);
Insert into BREEDING_EVENT (BREVENT_ID,BREVENT_DATE,CENTRE_ID,BREVENT_FATHER_ID,BREVENT_MOTHER_ID) values (000005,to_date('23-MAY-2012'),'SAF10',000016,000017);
Insert into BREEDING_EVENT (BREVENT_ID,BREVENT_DATE,CENTRE_ID,BREVENT_FATHER_ID,BREVENT_MOTHER_ID) values (000006,to_date('23-MAY-2012'),'SAF10',000016,000017);
Insert into BREEDING_EVENT (BREVENT_ID,BREVENT_DATE,CENTRE_ID,BREVENT_FATHER_ID,BREVENT_MOTHER_ID) values (000007,to_date('23-MAY-2012'),'SAF10',000016,000017);
Insert into BREEDING_EVENT (BREVENT_ID,BREVENT_DATE,CENTRE_ID,BREVENT_FATHER_ID,BREVENT_MOTHER_ID) values (000008,to_date('25-DEC-2011'),'SAF30',000026,000027);
Insert into BREEDING_EVENT (BREVENT_ID,BREVENT_DATE,CENTRE_ID,BREVENT_FATHER_ID,BREVENT_MOTHER_ID) values (000009,to_date('13-NOV-2011'),'SAF30',000026,000027);
Insert into BREEDING_EVENT (BREVENT_ID,BREVENT_DATE,CENTRE_ID,BREVENT_FATHER_ID,BREVENT_MOTHER_ID) values (000010,to_date('27-AUG-2011'),'SAF30',000025,000029);

-- INSERTING into ANIMAL, result of BREEDING_EVENT
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000003,'F',000001,'AUS10','Setonix','brachyurus');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000004,'F',000002,'AUS10','Diceros','bicornis');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000007,'F',000008,'AUS20','Hippopotamus','amphibius');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000009,'F',000007,'AUS20','Panthera','leo');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000012,'M',000003,'AUS30','Diceros','bicornis');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000015,'F',000004,'AUS30','Acinonyx','jubatus');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000018,'M',000005,'SAF10','Panthera','leo');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000019,'F',000006,'SAF10','Panthera','leo');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000020,'F',000009,'SAF10','Hippopotamus','amphibius');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (000030,'F',000010,'SAF30','Equus','grevyi');

-- INSERTING into EXCHANGE

Insert into EXCHANGE (EXCHANGE_NO,EXCHANGE_DATE,EXCHANGE_FROM_CENTRE_ID,EXCHANGE_TO_CENTRE_ID,ANIMAL_ID,ET_CODE) values (000001,to_date('17-OCT-2012'),'AUS30','AUS10',000004,'P');
Insert into EXCHANGE (EXCHANGE_NO,EXCHANGE_DATE,EXCHANGE_FROM_CENTRE_ID,EXCHANGE_TO_CENTRE_ID,ANIMAL_ID,ET_CODE) values (000002,to_date('05-OCT-2012'),'AUS20','AUS10',000002,'B');
Insert into EXCHANGE (EXCHANGE_NO,EXCHANGE_DATE,EXCHANGE_FROM_CENTRE_ID,EXCHANGE_TO_CENTRE_ID,ANIMAL_ID,ET_CODE) values (000003,to_date('05-OCT-2012'),'SAF20','AUS20',000006,'P');
Insert into EXCHANGE (EXCHANGE_NO,EXCHANGE_DATE,EXCHANGE_FROM_CENTRE_ID,EXCHANGE_TO_CENTRE_ID,ANIMAL_ID,ET_CODE) values (000004,to_date('05-JUL-2012'),'SAF10','AUS20',000007,'M');
Insert into EXCHANGE (EXCHANGE_NO,EXCHANGE_DATE,EXCHANGE_FROM_CENTRE_ID,EXCHANGE_TO_CENTRE_ID,ANIMAL_ID,ET_CODE) values (000005,to_date('05-OCT-2012'),'SAF30','AUS20',000008,'M');
Insert into EXCHANGE (EXCHANGE_NO,EXCHANGE_DATE,EXCHANGE_FROM_CENTRE_ID,EXCHANGE_TO_CENTRE_ID,ANIMAL_ID,ET_CODE) values (000006,to_date('12-APR-2012'),'SAF30','SAF10',000009,'L');
Insert into EXCHANGE (EXCHANGE_NO,EXCHANGE_DATE,EXCHANGE_FROM_CENTRE_ID,EXCHANGE_TO_CENTRE_ID,ANIMAL_ID,ET_CODE) values (000007,to_date('25-JAN-2013'),'AUS20','SAF20',000022,'P');
Insert into EXCHANGE (EXCHANGE_NO,EXCHANGE_DATE,EXCHANGE_FROM_CENTRE_ID,EXCHANGE_TO_CENTRE_ID,ANIMAL_ID,ET_CODE) values (000008,to_date('03-FEB-2013'),'AUS20','SAF30',000026,'B');
Insert into EXCHANGE (EXCHANGE_NO,EXCHANGE_DATE,EXCHANGE_FROM_CENTRE_ID,EXCHANGE_TO_CENTRE_ID,ANIMAL_ID,ET_CODE) values (000009,to_date('01-JUL-2013'),'SAF20','SAF30',000025,'B');
Insert into EXCHANGE (EXCHANGE_NO,EXCHANGE_DATE,EXCHANGE_FROM_CENTRE_ID,EXCHANGE_TO_CENTRE_ID,ANIMAL_ID,ET_CODE) values (000010,to_date('20-JUL-2013'),'SAF30','SAF20',000025,'B');


commit;

set echo off;