-- LOAD PATSTAT DATABASE
-- Database: `patstat`
--
-- CREATED BY JULIO RAFFO (EPFL/CEMI)
-- ADAPTED BY MARK JAMES THOMPSON (Swiss Federal Institute of Institute of Technology)
-- NOT ALL TABLES ARE CURRENT THROUGH 2016 as this was added later
-- --------------------------------------------------------

--
-- Table structure for main table containing applications (`tls201_appln`)
--
/*
CREATE TABLE `APPLICATION` (
  `appln_id` int(9) NOT NULL default '0',
  `appln_auth` char(2) NOT NULL default '',
  `appln_nr` char(15) NOT NULL default '',
  `appln_kind` char(2) NOT NULL default '00',
  `appln_filing_date` date NOT NULL default '0000-00-00',
  `ipr_type` char(2) NOT NULL default '',
  `appln_title_lg` char(2) NOT NULL default '',
  `appln_abstract_lg` char(2) NOT NULL default '',
  `internat_appln_id` int(9) NOT NULL default '0',
  PRIMARY KEY  (`appln_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------
-- load the data into these the table
-- If you put it in the standard directory

alter table APPLICATION disable keys;
load data local infile '/Users/mark/tls201_part01.txt' into table APPLICATION fields terminated by ',' optionally enclosed by '"' lines terminated by '\n' ignore 1 lines;
load data local infile '/Users/mark/tls201_part02.txt' into table APPLICATION fields terminated by ',' optionally enclosed by '"' lines terminated by '\n' ignore 1 lines;
load data local infile '/Users/mark/tls201_part03.txt' into table APPLICATION fields terminated by ',' optionally enclosed by '"' lines terminated by '\n' ignore 1 lines;
alter table APPLICATION enable keys;





-- --------------------------------------------------------
-- 
-- Table structure for table `tls202_appln_title` containing the titles
-- 

CREATE TABLE `TITLE` (
  `appln_id` int(4) NOT NULL default '0',
  `appln_title` text NOT NULL,
  PRIMARY KEY  (`appln_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- --------------------------------------------------------


load data local infile '/Users/mark/tls202_part01.txt' into table TITLE fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/tls202_part02.txt' into table TITLE fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
*/




/*
-- 
-- Table structure for table `tls203_appln_abstr`, this is currently omitted to save space
--

CREATE TABLE `tls203_appln_abstr` (
  `appln_id` int(4) NOT NULL default '0',
  `appln_abstract` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

*/

-- 
-- Table structure for table `tls204_appln_prior`
-- 

CREATE TABLE `tls204_appln_prior` (
  `APPLN_ID` int(4) NOT NULL default '0',
  `PRIOR_APPLN_ID` int(4) NOT NULL default '0',
  `PRIOR_APPLN_SEQ_NR` smallint(2) NOT NULL default '0',
  PRIMARY KEY  (`APPLN_ID`,`PRIOR_APPLN_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

alter table PRIORITY disable keys;
load data local infile 'tls204_part01.txt' into table tls204_appln_prior fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
alter table PRIORITY disable keys;

/*


-- 
-- Table structure for table `tls205_tech_rel`
-- 

CREATE TABLE `tls205_tech_rel` (
  `APPLN_ID` int(4) NOT NULL default '0',
  `TECH_REL_APPLN_ID` int(4) NOT NULL default '0',
  PRIMARY KEY  (`APPLN_ID`,`TECH_REL_APPLN_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------



-- 
-- Table structure for table `tls206_person`
-- 

CREATE TABLE `PERSON` (
  `person_id` int(4) NOT NULL default '0',
  `person_ctry_code` varchar(2) NOT NULL default '',
  `doc_std_name_id` int(4) NOT NULL default '0',
  `person_name` text NOT NULL,
  `person_address` text NOT NULL,
  PRIMARY KEY  (`person_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- --------------------------------------------------------


alter table PERSON disable keys;
load data local infile '/Users/mark/tls206_part01.txt' into table PERSON fields terminated by ',' optionally enclosed by '"' lines terminated by '\n' ignore 1 lines;
load data local infile '/Users/mark/tls206_part02.txt' into table PERSON fields terminated by ',' optionally enclosed by '"' lines terminated by '\n' ignore 1 lines;
alter table PERSON enable keys;






/*
-- 
-- Table structure for table `tls207_pers_appln`
-- 

CREATE TABLE `APPLICANT` (
  `person_id` int(4) NOT NULL default '0',
  `appln_id` int(4) NOT NULL default '0',
  `applt_seq_nr` smallint(2) NOT NULL default '0',
  `invt_seq_nr` smallint(2) NOT NULL default '0',
  PRIMARY KEY `person_id` (`person_id`),
  KEY `appln_id` (`appln_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------



alter table APPLICANT disable keys;
load data local infile '/Users/mark/tls207_part01.txt' into table APPLICANT fields terminated by ',' optionally enclosed by '"' lines terminated by '\n' ignore 1 lines;
load data local infile '/Users/mark/tls207_part02.txt' into table APPLICANT fields terminated by ',' optionally enclosed by '"' lines terminated by '\n' ignore 1 lines;
alter table APPLICANT enable keys;






-- 
-- Table structure for table `tls208_doc_std_nms`
-- 

CREATE TABLE `STANDARD_NAME` (
  `doc_std_name_id` int(4) NOT NULL default '0',
  `doc_std_name` char(300) NOT NULL default '',
  PRIMARY KEY  (`doc_std_name_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- --------------------------------------------------------


alter table STANDARD_NAME disable keys;
load data local infile '/Users/mark/tls208_part01.txt' into table STANDARD_NAME fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
alter table STANDARD_NAME enable keys;


-- 
-- Table structure for table `tls209_appln_ipc`
-- 


CREATE TABLE `IPC` (
  `appln_id` int(4) NOT NULL default '0',
  `ipc_class_symbol` char(15) NOT NULL default '',
  `ipc_class_level` char(1) NOT NULL default '',
  `ipc_version` date NOT NULL default '0000-00-00',
  `ipc_value` char(1) NOT NULL default '',
  `ipc_position` char(1) NOT NULL default '',
  `ipc_gener_auth` char(2) NOT NULL default '',
  PRIMARY KEY  (`appln_id`,`ipc_class_symbol`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------




alter table APPLICATION disable keys;
-- load data local infile '/Users/mark/tls209_part01.txt' into table IPC fields terminated by ',' optionally enclosed by '"' lines terminated by '\n' ignore 1 lines;

load data local infile '/Users/mark/tls209_part02.txt' into table IPC fields terminated by ',' optionally enclosed by '"' lines terminated by '\n' ignore 1 lines;
load data local infile '/Users/mark/tls209_part03.txt' into table IPC fields terminated by ',' optionally enclosed by '"' lines terminated by '\n' ignore 1 lines;
load data local infile '/Users/mark/tls209_part04.txt' into table IPC fields terminated by ',' optionally enclosed by '"' lines terminated by '\n' ignore 1 lines;
load data local infile '/Users/mark/tls209_part05.txt' into table IPC fields terminated by ',' optionally enclosed by '"' lines terminated by '\n' ignore 1 lines;
load data local infile '/Users/mark/tls209_part06.txt' into table IPC fields terminated by ',' optionally enclosed by '"' lines terminated by '\n' ignore 1 lines;
alter table APPLICATION enable keys;
*/
/*


-- 
-- Table structure for table `tls210_appln_n_cls`
-- 

CREATE TABLE `tls210_appln_n_cls` (
  `appln_id` int(4) NOT NULL default '0',
  `nat_class_symbol` char(15) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------


-- 
-- Table structure for table `tls211_pat_publn` Patent publication information
-- 

CREATE TABLE `PUBLICATION` (
  `pat_publn_id` int(11) NOT NULL default '0',
  `publn_auth` char(2) NOT NULL default '',
  `publn_nr` char(15) NOT NULL default '',
  `publn_kind` char(2) NOT NULL default '',
  `appln_id` int(11) NOT NULL default '0',
  `publn_date` date NOT NULL default '0001-01-01',
  `publn_lg` char(2) NOT NULL default '',
  PRIMARY KEY  (`pat_publn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- --------------------------------------------------------


alter table PUBLICATION disable keys;
load data local infile '/Users/mark/tls211_part01.txt' into table PUBLICATION fields terminated by ',' optionally enclosed by '"' lines terminated by '\n' ignore 1 lines;
load data local infile '/Users/mark/tls211_part02.txt' into table PUBLICATION fields terminated by ',' optionally enclosed by '"' lines terminated by '\n' ignore 1 lines;
load data local infile '/Users/mark/tls211_part03.txt' into table PUBLICATION fields terminated by ',' optionally enclosed by '"' lines terminated by '\n' ignore 1 lines;
alter table PUBLICATION enable keys;




-- 
-- Table structure for table `tls212_citation`
-- 

CREATE TABLE `CITATION` (
  `pat_publn_id` int(8) NOT NULL default '0',
  `citn_id` tinyint(3) NOT NULL default '0',
  `cited_pat_publn_id` int(8) NOT NULL default '0',
  `npl_publn_id` int(8) NOT NULL default '0',
  `pat_citn_seq_nr` tinyint(3) NOT NULL default '0',
  `npl_citn_seq_nr` tinyint(3) NOT NULL default '0',
  `citn_origin` char(5) NOT NULL default '',
  `cited_appln_id` int(9) NOT NULL default '0',
  `citn_gener_auth` char(2) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- --------------------------------------------------------


alter table CITATION disable keys;
load data local infile '/Users/mark/tls212_part01.txt' into table CITATION fields terminated by ',' optionally enclosed by '"' lines terminated by '\n' ignore 1 lines;
load data local infile '/Users/mark/tls212_part02.txt' into table CITATION fields terminated by ',' optionally enclosed by '"' lines terminated by '\n' ignore 1 lines;
load data local infile '/Users/mark/tls212_part03.txt' into table CITATION fields terminated by ',' optionally enclosed by '"' lines terminated by '\n' ignore 1 lines;
load data local infile '/Users/mark/tls212_part04.txt' into table CITATION fields terminated by ',' optionally enclosed by '"' lines terminated by '\n' ignore 1 lines;
load data local infile '/Users/mark/tls212_part05.txt' into table CITATION fields terminated by ',' optionally enclosed by '"' lines terminated by '\n' ignore 1 lines;
load data local infile '/Users/mark/tls212_part06.txt' into table CITATION fields terminated by ',' optionally enclosed by '"' lines terminated by '\n' ignore 1 lines;
alter table CITATION enable keys;



--
-- Table structure for INPADOC table `tls221_INPADOC_PRD'
--

CREATE TABLE `INPADOC` (
	`appln_id` int NOT NULL default '0',
	`prs_event_seq_n` smallint NOT NULL default '0',
	`prs_gazette_date` date NOT NULL default '0000-00-00',
	`prs_code` char(4) NOT NULL default '',
	`l501ep` varchar(2) NOT NULL default '',
	`l502ep` varchar(4) NOT NULL default '',
	`l503ep` varchar(20) NOT NULL default '',
	`l504ep` varchar(2) NOT NULL default '',
	`l505ep` date NOT NULL default '0000-00-00',
	`l506ep` varchar(2) NOT NULL default '',
	`l507ep` varchar(300) NOT NULL default '',
	`l508ep` varchar(2) NOT NULL default '',
	`l509ep` nvarchar(50) NOT NULL default '',
	`l510ep` nvarchar(700) NOT NULL default '',
	`l511ep` varchar(20) NOT NULL default '',
	`l512ep` date NOT NULL default '0000-00-00',
	`l513ep` date NOT NULL default '0000-00-00',
	`l514ep` varchar(2) NOT NULL default '', 
	`l515ep` nvarchar(50) NOT NULL default '',
	`l516ep` varchar(50) NOT NULL default '',
	`l517ep` nvarchar(50) NOT NULL default '',
	`l518ep` date NOT NULL default '0000-00-00',
	`l519ep` nvarchar(50) NOT NULL default '',
	`l520ep` varchar(10) NOT NULL default '',
	`l521ep` varchar(30) NOT NULL default '',
	`l522ep` nvarchar(50) NOT NULL default '',
	`l523ep` date NOT NULL default '0000-00-00',
	`l524ep` varchar(100) NOT NULL default '',
	`l525ep` date NOT NULL default '0000-00-00',
	`l526ep` date NOT NULL default '0000-00-00',
	`l527ep` varchar(1) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

alter table INPADOC disable keys;
load data local infile '/Users/mark/tls221_part01.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/tls221_part02.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/tls221_part03.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/tls221_part04.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/tls221_part05.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/tls221_part06.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/tls221_part07.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/tls221_part08.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/tls221_part09.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/tls221_part10.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/tls221_part11.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/tls221_part12.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/tls221_part13.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/tls221_part14.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/tls221_part15.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/tls221_part16.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/tls221_part17.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/tls221_part18.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/tls221_part19.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/tls221_part20.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/tls221_part21.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/tls221_part22.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
load data local infile '/Users/mark/tls221_part23.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
-- load data local infile '/Users/mark/tls221_part24.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
-- load data local infile '/Users/mark/tls221_part25.txt' into table INPADOC fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
alter table INPADOC enable keys;

*/

/*

-- 
-- Table structure for table `tls214_npl_publn`
-- 

CREATE TABLE `tls214_npl_publn` (
  `npl_publn_id` int(4) NOT NULL default '0',
  `npl_biblio` text NOT NULL,
  PRIMARY KEY  (`npl_publn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------


-- 
-- Table structure for table `tls215_citn_categ`
-- 

CREATE TABLE `CITATION_CATEGORY` (
  `pat_publn_id` int(4) NOT NULL default '0',
  `citn_id` smallint(2) NOT NULL default '0',
  `citn_categ` char(1) NOT NULL default '',
  PRIMARY KEY  (`pat_publn_id`,`citn_id`,`citn_categ`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

alter table CITATION_CATEGORY disable keys;
load data local infile '/Users/mark/tls215_part01.txt' into table CITATION_CATEGORY fields terminated by ',' optionally enclosed by '"' lines terminated by '\r\n' ignore 1 lines;
alter table CITATION_CATEGORY enable keys;
*/

/*
-- 
-- Table structure for table `tls216_appln_contn`
-- 

CREATE TABLE `tls216_appln_contn` (
  `APPLN_ID` int(10) NOT NULL default '0',
  `PARENT_APPLN_ID` int(10) NOT NULL default '0',
  `CONTN_TYPE` char(3) NOT NULL default '',
  PRIMARY KEY  (`APPLN_ID`,`PARENT_APPLN_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

*/