SELECT patentFamilies.docdb_family_id,IF(publn_auth='EP',1,0) AS EP,jurisdiction, cohort, COALESCE(daysAlive), 
FEE1,	FEE2,	FEE3,	FEE4,	FEE5,	FEE6,	FEE7,	FEE8,	FEE9,	FEE10,	FEE11,	FEE12,	FEE13,	FEE14,	FEE15,	FEE16,	FEE17,	FEE18,	FEE19,	FEE20,
GDP1,	GDP2,	GDP3,	GDP4,	GDP5,	GDP6,	GDP7,	GDP8,	GDP9,	GDP10,	GDP11,	GDP12,	GDP13,	GDP14,	GDP15,	GDP16,	GDP17,	GDP18,	GDP19,	GDP20,
POP1,	POP2,	POP3,	POP4,	POP5,	POP6,	POP7,	POP8,	POP9,	POP10,	POP11,	POP12,	POP13,	POP14,	POP15,	POP16,	POP17,	POP18,	POP19,	POP20,
UNM1,	UNM2,	UNM3,	UNM4,	UNM5,	UNM6,	UNM7,	UNM8,	UNM9,	UNM10,	UNM11,	UNM12,	UNM13,	UNM14,	UNM15,	UNM16,	UNM17,	UNM18,	UNM19,	UNM20,
numInventors,fwCites,PERSON_CTRY_CODE,SECTOR,PAT_CNT,LEFT(ipc_class_symbol,3), IF((cohort <= 1994 OR death IS NOT NULL), 1, 0) AS dead
FROM patentFamilies 
JOIN tls218_docdb_fam f USING(appln_id)
JOIN tls_indicator_table i ON (i.docdb_family_id = f.docdb_family_id)
JOIN tls207_pers_appln USING(appln_id)
JOIN EEE_PPAT_April2014 USING(person_id)
JOIN tls209_appln_ipc USING(appln_id)
JOIN tls221_inpadoc_prs USING(appln_id)
JOIN legal_event_code USING(lec_id)
WHERE 
-- Have to account fo the censoring,
(cohort IN(1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2004,2005,2006,2007,2008,2009,2010,2013))
AND
-- LI has a patent union with CH since 1980
jurisdiction != 'LI'
AND
lecg_id != 15
-- Patent right in a jurisdiction
GROUP BY docdb_family_id,jurisdiction
INTO OUTFILE '/usr/local/mysql/data/1980-13_surv.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'

