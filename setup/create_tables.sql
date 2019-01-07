--
-- Database: `patstat`
--
-- CREATED BY JULIO RAFFO (EPFL/CEMI)
--
-- 
-- --------------------------------------------------------

--
-- Table structure for table `tls201_appln`
--

CREATE TABLE `tls201_appln` (
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

-- 
-- Table structure for table `tls202_appln_title`
-- 

CREATE TABLE `tls202_appln_title` (
  `appln_id` int(4) NOT NULL default '0',
  `appln_title` text NOT NULL,
  PRIMARY KEY  (`appln_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

-- 
-- Table structure for table `tls203_appln_abstr`
--

CREATE TABLE `tls203_appln_abstr` (
  `appln_id` int(4) NOT NULL default '0',
  `appln_abstract` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

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

CREATE TABLE `tls206_person` (
  `person_id` int(4) NOT NULL default '0',
  `person_ctry_code` varchar(2) NOT NULL default '',
  `doc_std_name_id` int(4) NOT NULL default '0',
  `person_name` text NOT NULL,
  `person_address` text NOT NULL,
  PRIMARY KEY  (`person_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

-- 
-- Table structure for table `tls207_pers_appln`
-- 

CREATE TABLE `tls207_pers_appln` (
  `person_id` int(4) NOT NULL default '0',
  `appln_id` int(4) NOT NULL default '0',
  `applt_seq_nr` smallint(2) NOT NULL default '0',
  `invt_seq_nr` smallint(2) NOT NULL default '0',
  KEY `person_id` (`person_id`),
  KEY `appln_id` (`appln_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

-- 
-- Table structure for table `tls208_doc_std_nms`
-- 

CREATE TABLE `tls208_doc_std_nms` (
  `doc_std_name_id` int(4) NOT NULL default '0',
  `doc_std_name` char(30) NOT NULL default '',
  PRIMARY KEY  (`doc_std_name_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

-- 
-- Table structure for table `tls209_appln_ipc`
-- 

CREATE TABLE `tls209_appln_ipc` (
  `appln_id` int(4) NOT NULL default '0',
  `ipc_class_symbol` char(15) NOT NULL default '',
  `ipc_version` date NOT NULL default '0000-00-00',
  `ipc_value` char(1) NOT NULL default '',
  `ipc_position` char(1) NOT NULL default '',
  `ipc_gener_auth` char(2) NOT NULL default '',
  PRIMARY KEY  (`appln_id`,`ipc_class_symbol`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

-- 
-- Table structure for table `tls210_appln_n_cls`
-- 

CREATE TABLE `tls210_appln_n_cls` (
  `appln_id` int(4) NOT NULL default '0',
  `nat_class_symbol` char(15) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

-- 
-- Table structure for table `tls211_pat_publn`
-- 

CREATE TABLE `tls211_pat_publn` (
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

-- 
-- Table structure for table `tls212_citation`
-- 

CREATE TABLE `tls212_citation` (
  `pat_publn_id` int(8) NOT NULL default '0',
  `citn_id` tinyint(3) NOT NULL default '0',
  `cited_pat_publn_id` int(8) NOT NULL default '0',
  `npl_publn_id` int(8) NOT NULL default '0',
  `pat_citn_seq_nr` tinyint(3) NOT NULL default '0',
  `npl_citn_seq_nr` tinyint(3) NOT NULL default '0',
  `citn_origin` char(5) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- --------------------------------------------------------

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

CREATE TABLE `tls215_citn_categ` (
  `pat_publn_id` int(4) NOT NULL default '0',
  `citn_id` smallint(2) NOT NULL default '0',
  `citn_categ` char(1) NOT NULL default '',
  PRIMARY KEY  (`pat_publn_id`,`citn_id`,`citn_categ`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

-- 
-- Table structure for table `tls216_appln_contn`
-- 

CREATE TABLE `tls216_appln_contn` (
  `APPLN_ID` int(10) NOT NULL default '0',
  `PARENT_APPLN_ID` int(10) NOT NULL default '0',
  `CONTN_TYPE` char(3) NOT NULL default '',
  PRIMARY KEY  (`APPLN_ID`,`PARENT_APPLN_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;