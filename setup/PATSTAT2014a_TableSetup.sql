
CREATE DATABASE `patstat2014a` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `patstat2014a`;

--
-- Table `tls201_appln`
--

CREATE TABLE  `tls201_appln` (
`appln_id` INT NOT NULL default '0',
`appln_auth` CHAR(2) NOT NULL default '',
`appln_nr` VARCHAR(15) NOT NULL default '', 
`appln_kind` CHAR(2) NOT NULL default '',  
`appln_filing_date` date NOT NULL default '99991231',  
`appln_nr_epodoc` VARCHAR(20) NOT NULL default '',
`ipr_type` CHAR(2) NOT NULL default '',  
`appln_title_lg` CHAR(2) NOT NULL default '',  
`appln_abstract_lg` CHAR(2) NOT NULL default '',  
`internat_appln_id` INT NOT NULL default '0',  
PRIMARY KEY  (`appln_id`),  
KEY `internat_appln_id` (`internat_appln_id`),  
KEY `appln_auth` (`appln_auth`,`appln_nr`,`appln_kind`),  
KEY `appln_filing_date` (`appln_filing_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -----------------------------------------------------------

-- 
-- Table `tls202_appln_title`
-- 

CREATE TABLE `tls202_appln_title` (
  appln_id INT NOT NULL default '0',
  appln_title VARCHAR(5000) NOT NULL default '',
  PRIMARY KEY  (appln_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -----------------------------------------------------------

-- 
-- Table `tls203_appln_abstr`
--

CREATE TABLE `tls203_appln_abstr` (
  appln_id INT NOT NULL default '0',
  appln_abstract VARCHAR(12000) NOT NULL default '',
  PRIMARY KEY  (appln_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -----------------------------------------------------------

-- 
-- Table `tls204_appln_prior`
-- 

CREATE TABLE `tls204_appln_prior` (
  appln_id INT NOT NULL default '0',
  prior_appln_id INT NOT NULL default '0',
  prior_appln_seq_nr SMALLINT NOT NULL default '0',
  PRIMARY KEY  (appln_id,prior_appln_id),
  INDEX (prior_appln_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -----------------------------------------------------------

-- 
-- Table `tls205_tech_rel`
-- 

CREATE TABLE `tls205_tech_rel` (
  appln_id INT NOT NULL default '0',
  tech_rel_appln_id INT NOT NULL default '0',
  PRIMARY KEY  (appln_id,tech_rel_appln_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -----------------------------------------------------------

-- 
-- Table `tls206_person`
-- 

CREATE TABLE `tls206_person` (
  person_id INT NOT NULL default '0',
  person_ctry_code VARCHAR(2) NOT NULL default '',
  doc_std_name_id INT NOT NULL default '0',
  person_name VARCHAR(500) NOT NULL default '',
  person_address VARCHAR(500) NOT NULL default '',
  PRIMARY KEY  (person_id),
  INDEX (person_ctry_code)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -----------------------------------------------------------

-- 
-- Table `tls226_person_orig`
-- 

CREATE TABLE `tls266_person_orig` (
  person_orig_id INT NOT NULL default '0',
  person_id INT NOT NULL default '0',
  source VARCHAR(5) NOT NULL default '',
  source_version VARCHAR(10) NOT NULL default '',
  name_freeform VARCHAR(500) NOT NULL default '',
  last_name VARCHAR(400) NOT NULL default '',
  first_name VARCHAR(200) NOT NULL default '',
  middle_name VARCHAR(50) NOT NULL default '',
  address_freeform VARCHAR(1000) NOT NULL default '',
  street VARCHAR(500) NOT NULL default '',
  city VARCHAR(200) NOT NULL default '',
  zip_code VARCHAR(30) NOT NULL default '',
  state VARCHAR(2) NOT NULL default '',
  person_ctry_code VARCHAR(2) NOT NULL default '',
  residence_ctry_code VARCHAR(2) NOT NULL default '',
  role VARCHAR(2) NOT NULL default '',
  PRIMARY KEY  (person_orig_id),
  INDEX (person_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -----------------------------------------------------------

-- 
-- Table `tls207_pers_appln`
-- 

CREATE TABLE `tls207_pers_appln` (
  person_id INT NOT NULL default '0',
  appln_id INT NOT NULL default '0',
  applt_seq_nr SMALLINT NOT NULL default '0',
  invt_seq_nr SMALLINT NOT NULL default '0',
  KEY  (person_id,appln_id),
  INDEX (appln_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -----------------------------------------------------------

-- 
-- Table `tls227_pers_publn`
-- 

CREATE TABLE `tls227_pers_publn` (
  person_id INT NOT NULL default '0',
  pat_publn_id INT NOT NULL default '0',
  applt_seq_nr SMALLINT NOT NULL default '0',
  invt_seq_nr SMALLINT NOT NULL default '0',
  KEY  (person_id,pat_publn_id),
  INDEX (pat_publn_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -----------------------------------------------------------

-- 
-- Table `tls208_doc_std_nms`
-- 

CREATE TABLE `tls208_doc_std_nms` (
  doc_std_name_id INT NOT NULL default '0',
  doc_std_name VARCHAR(100) NOT NULL default '',
  PRIMARY KEY  (doc_std_name_id),
  INDEX (doc_std_name(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -----------------------------------------------------------

-- 
-- Table `tls209_appln_ipc`
-- 

CREATE TABLE  `tls209_appln_ipc` (  
`appln_id` INT NOT NULL default '0',  
`ipc_class_symbol` VARCHAR(15) NOT NULL default '',  
`ipc_class_level` CHAR(1) NOT NULL default '',  
`ipc_version` date NOT NULL default '99991231',  
`ipc_value` CHAR(1) NOT NULL default '',  
`ipc_position` CHAR(1) NOT NULL default '',  
`ipc_gener_auth` CHAR(2) NOT NULL default '',  
PRIMARY KEY  (`appln_id`,`ipc_class_symbol`,`ipc_class_level`),  
KEY `ipc_class_symbol` (`ipc_class_symbol`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -----------------------------------------------------------

-- 
-- Table `tls210_appln_n_cls`
-- 

CREATE TABLE `tls210_appln_n_cls` (
  appln_id INT NOT NULL default '0',
  nat_class_symbol VARCHAR(15) NOT NULL default '',
  PRIMARY KEY  (appln_id,nat_class_symbol)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -----------------------------------------------------------

-- 
-- Table `tls211_pat_publn`
-- 

CREATE TABLE  `tls211_pat_publn` (  
`pat_publn_id` INT NOT NULL default '0',  
`publn_auth` CHAR(2) NOT NULL default '',  
`publn_nr` VARCHAR(15) NOT NULL default '',  
`publn_kind` CHAR(2) NOT NULL default '',  
`appln_id` INT NOT NULL default '0',  
`publn_date` date NOT NULL default '99991231',  
`publn_lg` CHAR(2) NOT NULL default '',  
`publn_first_grant` SMALLINT NOT NULL default '0',
`publn_claims` SMALLINT NOT NULL default '0',
PRIMARY KEY  (`pat_publn_id`),  
KEY `publn_auth` (`publn_auth`,`publn_nr`,`publn_kind`),  
KEY `appln_id` (`appln_id`),  
KEY `publn_date` (`publn_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -----------------------------------------------------------

-- 
-- Table `tls212_citation`
-- 

CREATE TABLE `tls212_citation` (
  pat_publn_id INT NOT NULL default '0',
  citn_id SMALLINT NOT NULL default '0',
  citn_origin VARCHAR(5) NOT NULL default '',
  cited_pat_publn_id INT NOT NULL default '0',
  cited_appln_id INT NOT NULL default '0',
  pat_citn_seq_nr SMALLINT NOT NULL default '0',
  npl_publn_id INT NOT NULL default '0',
  npl_citn_seq_nr SMALLINT NOT NULL default '0',
  citn_gener_auth CHAR(2) NOT NULL default '',
  PRIMARY KEY  (pat_publn_id, citn_id),
  INDEX (cited_pat_publn_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -----------------------------------------------------------

-- 
-- Table `tls214_npl_publn`
-- 

CREATE TABLE `tls214_npl_publn` (
  npl_publn_id INT NOT NULL default '0',
  npl_biblio VARCHAR(3000) NOT NULL default '',
  PRIMARY KEY  (npl_publn_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -----------------------------------------------------------

-- 
-- Table `tls215_citn_categ`
-- 

CREATE TABLE `tls215_citn_categ` (
  pat_publn_id INT NOT NULL default '0',
  citn_id SMALLINT NOT NULL default '0',
  citn_categ CHAR(1) NOT NULL default '',
  PRIMARY KEY  (pat_publn_id,citn_id,citn_categ)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -----------------------------------------------------------

-- 
-- Table `tls216_appln_contn`
-- 

CREATE TABLE `tls216_appln_contn` (
  appln_id INT NOT NULL default '0',
  parent_appln_id INT NOT NULL default '0',
  contn_type CHAR(3) NOT NULL default '',
  PRIMARY KEY  (appln_id,parent_appln_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -----------------------------------------------------------
-- 
-- Table `tls218_docdb_fam`
-- 

CREATE TABLE `tls218_docdb_fam` (
  appln_id INT NOT NULL default '0',
  docdb_family_id INT NOT NULL default '0',
  PRIMARY KEY  (appln_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -----------------------------------------------------------

-- 
-- Table `tls219_inpadoc_fam`
-- 

CREATE TABLE `tls219_inpadoc_fam` (
  appln_id INT NOT NULL default '0',
  inpadoc_family_id INT NOT NULL default '0',
  PRIMARY KEY  (appln_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -----------------------------------------------------------

-- 
-- Table `tls221_inpadoc_prs`
-- 
use patstat2014a;
CREATE TABLE  `tls221_inpadoc_prs` (  
  appln_id INT NOT NULL default '0',
  prs_event_seq_nr SMALLINT NOT NULL default '0',
  prs_gazette_date date NOT NULL DEFAULT '99991231',  
  prs_code VARCHAR(4) NOT NULL default '',  
  l501ep CHAR(2) NOT NULL DEFAULT '',  
  l502ep VARCHAR(4) NOT NULL DEFAULT '',  
  lec_id SMALLINT NOT NULL DEFAULT '0',
  l503ep VARCHAR(20) NOT NULL DEFAULT '',  
  l504ep CHAR(2) NOT NULL DEFAULT '',  
  l505ep date NOT NULL DEFAULT '99991231',  
  l506ep CHAR(2) NOT NULL DEFAULT '',  
  l507ep VARCHAR(300) NOT NULL DEFAULT '',  
  l508ep VARCHAR(20) NOT NULL DEFAULT '',  
  l509ep VARCHAR(255) NOT NULL DEFAULT '',  
  l510ep VARCHAR(700) NOT NULL DEFAULT '',  
  l511ep VARCHAR(20) NOT NULL DEFAULT '',  
  l512ep date NOT NULL DEFAULT '99991231',  
  l513ep date NOT NULL DEFAULT '99991231',  
  l515ep VARCHAR(255) NOT NULL DEFAULT '',  
  l516ep VARCHAR(50) NOT NULL DEFAULT '',  
  l517ep VARCHAR(255) NOT NULL DEFAULT '',  
  l518ep date NOT NULL DEFAULT '99991231',  
  l519ep VARCHAR(255) NOT NULL DEFAULT '',  
  l520ep TINYINT NOT NULL DEFAULT '0',  
  l522ep VARCHAR(255) NOT NULL DEFAULT '',  
  l523ep date NOT NULL DEFAULT '99991231',  
  l524ep VARCHAR(100) NOT NULL DEFAULT '',  
  l525ep date NOT NULL DEFAULT '99991231',  
PRIMARY KEY (appln_id,prs_event_seq_nr) 

) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- -----------------------------------------------------------
--
-- Table `tls222_appln_jp_class`
--

CREATE TABLE `tls222_appln_jp_class` (
  appln_id INT NOT NULL default '0',
  jp_class_scheme VARCHAR(5) NOT NULL default '',
  jp_class_symbol VARCHAR(50) NOT NULL default '',
  PRIMARY KEY  (appln_id,jp_class_scheme,jp_class_symbol)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- -----------------------------------------------------------
--
-- Table `tls223_appln_docus`
--

CREATE TABLE `tls223_appln_docus` (
  appln_id INT NOT NULL default '0',
  docus_class_symbol VARCHAR(50) NOT NULL default '',
  PRIMARY KEY  (appln_id,docus_class_symbol)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -----------------------------------------------------------

-- -----------------------------------------------------------
--
-- Table `tls224_appln_cpc`
--

CREATE TABLE `tls224_appln_cpc` (
  appln_id INT NOT NULL default '0',
  cpc_class_symbol VARCHAR(19) NOT NULL default '',
  cpc_scheme VARCHAR(5) NOT NULL default '',
  cpc_version CHAR(8) NOT NULL DEFAULT '99991231',
  cpc_value CHAR(1) NOT NULL default '',
  cpc_position CHAR(1) NOT NULL default '',
  cpc_gener_auth CHAR(2) NOT NULL default '',
  PRIMARY KEY  (appln_id,cpc_class_symbol,cpc_scheme)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -----------------------------------------------------------

-- -----------------------------------------------------------
--
-- Table `tls801_country`
--

CREATE TABLE `tls801_country` (
  ctry_code CHAR(2) NOT NULL DEFAULT '',
  st3_name VARCHAR(100) NOT NULL DEFAULT '',
  state_indicator CHAR(1) NOT NULL DEFAULT '',
  continent VARCHAR(25) NOT NULL DEFAULT '',
  eu_member CHAR(1) NOT NULL DEFAULT '',
  epo_member CHAR(1) NOT NULL DEFAULT '',
  oecd_member CHAR(1) NOT NULL DEFAULT '',
  discontinued CHAR(1) NOT NULL DEFAULT '',
  PRIMARY KEY  (ctry_code),
  KEY `st3_name` (`st3_name`),
  KEY `state_indicator` (`state_indicator`),
  KEY `continent` (`continent`),
  KEY `eu_member` (`eu_member`),
  KEY `epo_member` (`epo_member`),
  KEY `oecd_member` (`oecd_member`),
  KEY `discontinued` (`discontinued`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

-- -----------------------------------------------------------

-- -----------------------------------------------------------
--
-- Table `tls802_legal_event_code`
--

CREATE TABLE `tls802_legal_event_code` (
  lec_id SMALLINT NOT NULL DEFAULT '0',
  auth_cc CHAR(2) NOT NULL DEFAULT '',
  lec_name VARCHAR(4) NOT NULL DEFAULT '',  
  nat_auth_cc CHAR(2) NOT NULL DEFAULT '',
  nat_lec_name VARCHAR(4) NOT NULL DEFAULT '',  
  impact CHAR(1) NOT NULL DEFAULT '',
  lec_descr VARCHAR(250) NOT NULL DEFAULT '',  
  lecg_id TINYINT NOT NULL DEFAULT '0',
  lecg_name VARCHAR(6) NOT NULL DEFAULT '',
  lecg_descr VARCHAR(50) NOT NULL DEFAULT '',  
  PRIMARY KEY  (lec_id),
  KEY `auth_cc` (`auth_cc`),
  KEY `lec_name` (`lec_name`),
  KEY `nat_auth_cc` (`nat_auth_cc`),
  KEY `nat_lec_name` (`nat_lec_name`),
  KEY `impact` (`impact`),
  KEY `lec_descr` (`lec_descr`),
  KEY `lecg_id` (`lecg_id`),
  KEY `lecg_name` (`lecg_name`),
  KEY `lecg_descr` (`lecg_descr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

-- -----------------------------------------------------------

-- -----------------------------------------------------------
--
-- Table `tls901_techn_field_ipc`
--

CREATE TABLE `tls901_techn_field_ipc` (
  techn_field_nr INT NOT NULL DEFAULT '0',
  techn_sector VARCHAR(19) NOT NULL DEFAULT '',
  techn_field VARCHAR(5) NOT NULL DEFAULT '',
  ipc_maingroup_symbol DATE NOT NULL DEFAULT '99991231',
  PRIMARY KEY  (techn_field_nr,techn_sector,techn_field,ipc_maingroup_symbol),
  KEY `techn_sector` (`techn_sector`),
  KEY `techn_field` (`techn_field`),
  KEY `ipc_maingroup_symbol` (`ipc_maingroup_symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

-- -----------------------------------------------------------

CREATE TABLE  `201407_HAN_PERSON` (
`HAN_ID`  INT NOT NULL default '0',
`person_id`  INT NOT NULL default '0',
`Apr13_Person_id` INT NOT NULL default '0',
`Oct12_Person_id` INT NOT NULL default '0',
`Apr12_Person_id` INT NOT NULL default '0',
`OCT11_Person_id` INT NOT NULL default '0',
`Person_name_clean` VARCHAR(500) NOT NULL default '',
`Person_ctry_code` CHAR(2) NOT NULL default '',
PRIMARY KEY  (`person_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;

