-- This runs a set of scripts to load a database table
--
--
-- Version March2008    Created by Tony Teculescu    on 04/03/2008    
--

USE PATSTAT2014a;
/*
set character_set_database =utf8;
alter table TLS201_APPLN disable keys;
load data local infile '/Users/mark/PATSTAT/tls201_part01.txt' into table TLS201_APPLN fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls201_part02.txt' into table TLS201_APPLN fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls201_part03.txt' into table TLS201_APPLN fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls201_part04.txt' into table TLS201_APPLN fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
alter table TLS201_APPLN enable keys;




set character_set_database =utf8;
alter table TLS206_PERSON disable keys;
load data local infile '/Users/mark/PATSTAT/tls206_part01.txt' into table TLS206_PERSON fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls206_part02.txt' into table TLS206_PERSON fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
alter table TLS206_PERSON enable keys;
*/
/*
set character_set_database =utf8;
alter table TLS207_PERS_APPLN disable keys;
load data local infile '/Users/mark/PATSTAT/tls207_part01.txt' into table TLS207_PERS_APPLN fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls207_part02.txt' into table TLS207_PERS_APPLN fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
alter table TLS207_PERS_APPLN enable keys;



set character_set_database =utf8;
alter table TLS207_PERS_APPLN disable keys;
load data local infile '/Users/mark/PATSTAT/tls207_part01.txt' into table TLS207_PERS_APPLN fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls207_part02.txt' into table TLS207_PERS_APPLN fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
alter table TLS207_PERS_APPLN enable keys;

set character_set_database =utf8;
alter table TLS208_DOC_STD_NMS disable keys;
load data local infile '/Users/mark/PATSTAT/tls208_part01.txt' into table TLS208_DOC_STD_NMS fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
alter table TLS208_DOC_STD_NMS enable keys;





set character_set_database =utf8;
alter table TLS209_APPLN_IPC disable keys;
load data local infile '/Users/mark/PATSTAT/tls209_part01.txt' into table TLS209_APPLN_IPC fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls209_part02.txt' into table TLS209_APPLN_IPC fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls209_part03.txt' into table TLS209_APPLN_IPC fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls209_part04.txt' into table TLS209_APPLN_IPC fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls209_part05.txt' into table TLS209_APPLN_IPC fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls209_part06.txt' into table TLS209_APPLN_IPC fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
alter table TLS209_APPLN_IPC enable keys;



set character_set_database =utf8;
alter table tls227_pers_publn disable keys;
load data local infile '/Users/mark/PATSTAT/tls227_part01.txt' into table tls227_pers_publn fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls227_part02.txt' into table tls227_pers_publn fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls227_part03.txt' into table tls227_pers_publn fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
alter table tls227_pers_publn enable keys;

set character_set_database =utf8;
alter table tls266_person_orig disable keys;
load data local infile '/Users/mark/PATSTAT/tls226_part01.txt' into table tls266_person_orig fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls226_part02.txt' into table tls266_person_orig fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls226_part03.txt' into table tls266_person_orig fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
alter table tls266_person_orig enable keys;

set character_set_database =utf8;
alter table tls266_person_orig disable keys;
set character_set_database =utf8;
load data local infile '/Users/mark/PATSTAT/tls221_part01.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part02.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part03.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part04.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part05.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part06.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part07.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part08.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part09.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part10.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part11.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part12.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part13.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part14.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part15.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part16.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part17.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part18.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part19.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part20.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part21.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part22.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part23.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part24.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part25.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part26.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part27.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part28.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part29.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls221_part30.txt' into table tls221_inpadoc_prs fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
alter table tls266_person_orig enable keys;


set character_set_database =utf8;
alter table TLS212_CITATION disable keys;
load data local infile '/Users/mark/PATSTAT/tls212_part01.txt' into table TLS212_CITATION fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls212_part02.txt' into table TLS212_CITATION fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls212_part03.txt' into table TLS212_CITATION fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls212_part04.txt' into table TLS212_CITATION fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls212_part05.txt' into table TLS212_CITATION fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls212_part06.txt' into table TLS212_CITATION fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls212_part07.txt' into table TLS212_CITATION fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
alter table TLS212_CITATION enable keys;

*/

/*
set character_set_database =utf8;
alter table tls208_doc_std_nms disable keys;
load data local infile '/Users/mark/PATSTAT/tls802_part01.txt' into table tls208_doc_std_nms fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
alter table tls208_doc_std_nms enable keys;


set character_set_database =utf8;
alter table tls214_npl_publn disable keys;
load data local infile '/Users/mark/PATSTAT/tls214_part01.txt' into table TLS214_NPL_PUBLN fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/PATSTAT/tls214_part02.txt' into table TLS214_NPL_PUBLN fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
alter table tls214_npl_publn enable keys;



set character_set_database =utf8;
alter table tls215_citn_categ disable keys;
load data local infile '/Users/mark/PATSTAT/tls215_part01.txt' into table tls215_citn_categ fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
alter table tls215_citn_categ enable keys;


set character_set_database =utf8;
alter table tls218_docdb_fam disable keys;
load data local infile '/Users/mark/PATSTAT/tls218_part01.txt' into table tls218_docdb_fam fields terminated by ',' optionally enclosed by '"' escaped by '' lines terminated by '\r\n' ignore 1 lines;
alter table tls218_docdb_fam enable keys;

*/