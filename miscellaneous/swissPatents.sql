

CREATE TABLE swiss_patents
SELECT DISTINCT docdb_family_id, applicant, appln_filing_date
FROM (
(

SELECT docdb_family_id, NULL AS applicant, appln_filing_date
FROM kof JOIN tls218_docdb_fam USING(docdb_family_id)
JOIN tls201_appln USING(appln_id)
)
UNION
(SELECT docdb_family_id,HRM_L2 AS applicant, appln_filing_date
FROM tls218_docdb_fam
JOIN tls207_pers_appln USING(appln_id)
JOIN EEE_PPAT_April2014 USING(person_id)
JOIN tls201_appln USING(appln_id)  
WHERE PERSON_CTRY_CODE = 'CH'
AND
appln_filing_date >= '1993-01-01')
) AS CHpatents;


ALTER TABLE `patstat2014a`.`swiss_patents` 
ADD INDEX `docdb_family_id` (`docdb_family_id` ASC);
ALTER TABLE `patstat2014a`.`swiss_patents` 
ADD INDEX `appln_filing_date` (`appln_filing_date` ASC);

SET SQL_SAFE_UPDATES = 0;
-- Insert applicant
UPDATE swiss_patents sp
JOIN (SELECT docdb_family_id,HRM_L2 AS applicant FROM swiss_patents sp
INNER JOIN tls218_docdb_fam dbf USING(docdb_family_id)
JOIN tls207_pers_appln USING(appln_id)
JOIN EEE_PPAT_April2014 USING(person_id)
JOIN tls201_appln USING(appln_id)
WHERE
PERSON_CTRY_CODE = 'CH'
GROUP BY docdb_family_id
) updator ON (sp.docdb_family_id = updator.docdb_family_id)
SET sp.applicant = updator.applicant
AND
sp.applicant IS NULL;






############
#####EXPAND PROTECTION###
############


SELECT publn_auth,count(*),max(prs_gazette_date) FROM swiss_patents 
INNER JOIN tls218_docdb_fam USING(docdb_family_id)
INNER JOIN tls221_inpadoc_prs USING(appln_id)
JOIN legal_event_code USING(lec_id)
JOIN tls211_pat_publn USING(appln_id)
WHERE YEAR(appln_filing_date) = 1993
AND lecg_id IN (7,6,3)

GROUP BY publn_auth;

##THIS GETS ONLY KNOWN REJECTIONS
UPDATE swiss_patents sp JOIN (
SELECT docdb_family_id, max(prs_gazette_date) AS terminalDate FROM swiss_patents 
JOIN tls218_docdb_fam USING(docdb_family_id)
JOIN tls221_inpadoc_prs USING(appln_id)
JOIN legal_event_code USING(lec_id)
JOIN tls211_pat_publn USING(appln_id)
WHERE YEAR(appln_filing_date) = 1993
AND lecg_id IN (7,6,3)
AND publn_auth = 'EP'
GROUP BY docdb_family_id
) updator ON(sp.docdb_family_id = updator.terminalDate)
SET sp.EP = updator.terminalDate;

CREATE TABLE swiss_patent_lives
SELECT docdb_family_id, publn_auth AS auth, IFNULL(MAX(prs_gazette_date),NULL) AS terminalDate
FROM swiss_patents 
JOIN tls218_docdb_fam USING(docdb_family_id)
LEFT OUTER JOIN tls211_pat_publn USING(appln_id)
JOIN tls221_inpadoc_prs USING(appln_id)
JOIN legal_event_code USING(lec_id)
WHERE 
YEAR(appln_filing_date) = 1993
AND lecg_id IN (7,6,3)
GROUP BY docdb_family_id,publn_auth;



SET SQL_SAFE_UPDATES = 0;
###Script Depends on main table, this then puts the patents in the main table
##Insert EP patents first because complex
INSERT INTO patentFamilies (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT 
a.appln_id AS appln_id,
docdb_family_id, 
p.publn_auth AS publn_auth, 
a.appln_filing_date AS appln_filing_date, 
p.publn_date AS publn_date, 
p.publn_auth AS jurisdiction, 
NULL AS death 
FROM tls201_appln a
JOIN tls211_pat_publn p USING(appln_id)
JOIN tls218_docdb_fam f USING(appln_id)
JOIN tls221_inpadoc_prs inp USING(appln_id)
JOIN swiss_patents sp USING(docdb_family_id)
JOIN patentFamilies pf USING(docdb_family_id)
WHERE p.publn_auth = 'EP'
AND p.publn_kind = 'B1' -- Only grants 
AND l501ep != '' -- Exclude missing
AND sp.docdb_family_id != pf.docdb_family_id -- don't duplicate an existing record
GROUP BY docdb_family_id, l501ep;


INSERT INTO patentFamilies (appln_id, docdb_family_id, publn_auth, jurisdiction,cohort,cohortMonth, appln_filing_date, publn_date, death, daysAlive)
SELECT appln_id,
docdb_family_id,
auth AS publn_auth, 
auth AS jurisdiction, 
YEAR(appln_filing_date) AS cohort,
MONTH(appln_filing_date) AS cohortMonth,
appln_filing_date,
publn_date,
terminalDate AS death,
DATEDIFF(terminalDate,appln_filing_date) AS daysAlive
FROM 
swiss_patent_lives splv
JOIN (SELECT docdb_family_id FROM swiss_patents) pf USING(docdb_family_id)
JOIN tls218_docdb_fam  USING(docdb_family_id)
JOIN tls211_pat_publn USING(appln_id)
JOIN tls201_appln USING(appln_id)
WHERE
auth != 'EP'
AND
concat(splv.docdb_family_id,auth) NOT IN (SELECT concat(docdb_family_id,publn_auth) FROM patentFamilies)
GROUP BY docdb_family_id, jurisdiction;
-- INSERT INTO tls_indicator_table (docdb_family_id) SELECT DISTINCT docdb_family_id FROM tls218_docdb_fam;

COMMIT;


SELECT DISTINCT auth FROM PAT_FEES;
/*
ALTER TABLE `patstat2014a`.`swiss_patents`
ADD COLUMN `ZA` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `VG` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `VE` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `US` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `UA` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `TW` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `TR` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `TM` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `TK` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `TJ` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `TH` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `SV` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `SU` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `SK` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `SI` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `SG` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `SE` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `SA` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `RU` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `RS` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `RO` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `PT` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `PL` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `PH` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `OA` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `NZ` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `NO` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `NL` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `MY` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `MX` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `MK` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `MD` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `MC` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `LV` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `LU` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `LT` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `LI` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `KZ` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `KR` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `KG` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `JP` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `IT` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `IS` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `IN` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `IL` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `IE` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `HU` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `HR` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `HK` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `GR` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `GE` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `GB` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `FR` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `FI` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `ES` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `EP` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `EE` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `EC` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `EA` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `DK` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `DE` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `DD` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `CZ` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `CY` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `CU` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `CS` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `CR` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `CO` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `CN` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `CL` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `CH` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `CA` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `BY` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `BR` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `BG` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `BE` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `AZ` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `AU` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `AT` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `AR` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `AM` DATE NULL AFTER `appln_filing_date`,
ADD COLUMN `AL` DATE NULL AFTER `appln_filing_date`;
*/

#
ALTER TABLE `patstat2014a`.`swiss_patent_lives` 
ADD COLUMN `FEE1` DECIMAL(20,2) NULL DEFAULT NULL AFTER `terminalDate`,
ADD COLUMN `FEE2` DECIMAL(20,2) NULL DEFAULT NULL AFTER `terminalDate`,
ADD COLUMN `FEE3` DECIMAL(20,2) NULL DEFAULT NULL AFTER `terminalDate`,
ADD COLUMN `FEE4` DECIMAL(20,2) NULL DEFAULT NULL AFTER `terminalDate`,
ADD COLUMN `FEE5` DECIMAL(20,2) NULL DEFAULT NULL AFTER `terminalDate`,
ADD COLUMN `FEE6` DECIMAL(20,2) NULL DEFAULT NULL AFTER `terminalDate`,
ADD COLUMN `FEE7` DECIMAL(20,2) NULL DEFAULT NULL AFTER `terminalDate`,
ADD COLUMN `FEE8` DECIMAL(20,2) NULL DEFAULT NULL AFTER `terminalDate`,
ADD COLUMN `FEE9` DECIMAL(20,2) NULL DEFAULT NULL AFTER `terminalDate`,
ADD COLUMN `FEE10` DECIMAL(20,2) NULL DEFAULT NULL AFTER `terminalDate`,
ADD COLUMN `FEE11` DECIMAL(20,2) NULL DEFAULT NULL AFTER `terminalDate`,
ADD COLUMN `FEE12` DECIMAL(20,2) NULL DEFAULT NULL AFTER `terminalDate`,
ADD COLUMN `FEE13` DECIMAL(20,2) NULL DEFAULT NULL AFTER `terminalDate`,
ADD COLUMN `FEE14` DECIMAL(20,2) NULL DEFAULT NULL AFTER `terminalDate`,
ADD COLUMN `FEE15` DECIMAL(20,2) NULL DEFAULT NULL AFTER `terminalDate`,
ADD COLUMN `FEE16` DECIMAL(20,2) NULL DEFAULT NULL AFTER `terminalDate`,
ADD COLUMN `FEE17` DECIMAL(20,2) NULL DEFAULT NULL AFTER `terminalDate`,
ADD COLUMN `FEE18` DECIMAL(20,2) NULL DEFAULT NULL AFTER `terminalDate`,
ADD COLUMN `FEE19` DECIMAL(20,2) NULL DEFAULT NULL AFTER `terminalDate`,
ADD COLUMN `FEE20` DECIMAL(20,2) NULL DEFAULT NULL AFTER `terminalDate`;








###It's easiest to update one fee year at a 2-3 time manually... .
SET SQL_SAFE_UPDATES = 0;

/*
UPDATE swiss_patent_lives splv
#SELECT docdb_family_id,splv.auth AS jurisdiction, sp.appln_filing_date, terminalDate,FEE1,FEE2,FEE3,FEE4,FEE5,FEE6,FEE7,FEE8,FEE9,FEE10,FEE11,FEE12,FEE13,FEE14,FEE15,FEE16,FEE17,FEE18,FEE19,FEE20 FROM s
JOIN swiss_patents sp USING (docdb_family_id)
/*
JOIN (SELECT Y1 AS FEE1,entryIntoForce,endInForce,auth  FROM PAT_FEES WHERE feeClass = 'reg') Y_1 ON (splv.auth = Y_1.auth AND DATE_ADD(appln_filing_date, INTERVAL 1 YEAR) BETWEEN Y_1.entryIntoForce AND Y_1.endInForce)
JOIN (SELECT Y2 AS FEE2,entryIntoForce,endInForce,auth  FROM PAT_FEES WHERE feeClass = 'reg') Y_2 ON (splv.auth = Y_2.auth AND DATE_ADD(appln_filing_date, INTERVAL 2 YEAR) BETWEEN Y_2.entryIntoForce AND Y_2.endInForce)
JOIN (SELECT Y3 AS FEE3,entryIntoForce,endInForce,auth  FROM PAT_FEES WHERE feeClass = 'reg') Y_3 ON (splv.auth = Y_3.auth AND DATE_ADD(appln_filing_date, INTERVAL 3 YEAR) BETWEEN Y_3.entryIntoForce AND Y_3.endInForce)
JOIN (SELECT Y4 AS FEE4,entryIntoForce,endInForce,auth  FROM PAT_FEES WHERE feeClass = 'reg') Y_4 ON (splv.auth = Y_4.auth AND DATE_ADD(appln_filing_date, INTERVAL 4 YEAR) BETWEEN Y_4.entryIntoForce AND Y_4.endInForce)
JOIN (SELECT Y5 AS FEE5,entryIntoForce,endInForce,auth  FROM PAT_FEES WHERE feeClass = 'reg') Y_5 ON (splv.auth = Y_5.auth AND DATE_ADD(appln_filing_date, INTERVAL 5 YEAR) BETWEEN Y_5.entryIntoForce AND Y_5.endInForce)

JOIN (SELECT Y6 AS FEE6,entryIntoForce,endInForce,auth  FROM PAT_FEES WHERE feeClass = 'reg') Y_6 ON (splv.auth = Y_6.auth AND DATE_ADD(appln_filing_date, INTERVAL 6 YEAR) BETWEEN Y_6.entryIntoForce AND Y_6.endInForce)
JOIN (SELECT Y7 AS FEE7,entryIntoForce,endInForce,auth  FROM PAT_FEES WHERE feeClass = 'reg') Y_7 ON (splv.auth = Y_7.auth AND DATE_ADD(appln_filing_date, INTERVAL 7 YEAR) BETWEEN Y_7.entryIntoForce AND Y_7.endInForce)
JOIN (SELECT Y8 AS FEE8,entryIntoForce,endInForce,auth  FROM PAT_FEES WHERE feeClass = 'reg') Y_8 ON (splv.auth = Y_8.auth AND DATE_ADD(appln_filing_date, INTERVAL 8 YEAR) BETWEEN Y_8.entryIntoForce AND Y_8.endInForce)
JOIN (SELECT Y9 AS FEE9,entryIntoForce,endInForce,auth  FROM PAT_FEES WHERE feeClass = 'reg') Y_9 ON (splv.auth = Y_9.auth AND DATE_ADD(appln_filing_date, INTERVAL 9 YEAR) BETWEEN Y_9.entryIntoForce AND Y_9.endInForce)
JOIN (SELECT Y10 AS FEE10,entryIntoForce,endInForce,auth  FROM PAT_FEES WHERE feeClass = 'reg') Y_10 ON (splv.auth = Y_10.auth AND DATE_ADD(appln_filing_date, INTERVAL 10 YEAR) BETWEEN Y_10.entryIntoForce AND Y_10.endInForce)


JOIN (SELECT Y11 AS FEE11,entryIntoForce,endInForce,auth  FROM PAT_FEES WHERE feeClass = 'reg') Y_11 ON (splv.auth = Y_11.auth AND DATE_ADD(appln_filing_date, INTERVAL 11 YEAR) BETWEEN Y_11.entryIntoForce AND Y_11.endInForce)
JOIN (SELECT Y12 AS FEE12,entryIntoForce,endInForce,auth  FROM PAT_FEES WHERE feeClass = 'reg') Y_12 ON (splv.auth = Y_12.auth AND DATE_ADD(appln_filing_date, INTERVAL 12 YEAR) BETWEEN Y_12.entryIntoForce AND Y_12.endInForce)
JOIN (SELECT Y13 AS FEE13,entryIntoForce,endInForce,auth  FROM PAT_FEES WHERE feeClass = 'reg') Y_13 ON (splv.auth = Y_13.auth AND DATE_ADD(appln_filing_date, INTERVAL 13 YEAR) BETWEEN Y_13.entryIntoForce AND Y_13.endInForce)
JOIN (SELECT Y14 AS FEE14,entryIntoForce,endInForce,auth  FROM PAT_FEES WHERE feeClass = 'reg') Y_14 ON (splv.auth = Y_14.auth AND DATE_ADD(appln_filing_date, INTERVAL 14 YEAR) BETWEEN Y_14.entryIntoForce AND Y_14.endInForce)
JOIN (SELECT Y15 AS FEE15,entryIntoForce,endInForce,auth  FROM PAT_FEES WHERE feeClass = 'reg') Y_15 ON (splv.auth = Y_15.auth AND DATE_ADD(appln_filing_date, INTERVAL 15 YEAR) BETWEEN Y_15.entryIntoForce AND Y_15.endInForce)
*/

JOIN (SELECT Y16 AS FEE16,entryIntoForce,endInForce,auth  FROM PAT_FEES WHERE feeClass = 'reg') Y_16 ON (splv.auth = Y_16.auth AND DATE_ADD(appln_filing_date, INTERVAL 16 YEAR) BETWEEN Y_16.entryIntoForce AND Y_16.endInForce)
JOIN (SELECT Y17 AS FEE17,entryIntoForce,endInForce,auth  FROM PAT_FEES WHERE feeClass = 'reg') Y_17 ON (splv.auth = Y_17.auth AND DATE_ADD(appln_filing_date, INTERVAL 17 YEAR) BETWEEN Y_17.entryIntoForce AND Y_17.endInForce)
JOIN (SELECT Y18 AS FEE18,entryIntoForce,endInForce,auth  FROM PAT_FEES WHERE feeClass = 'reg') Y_18 ON (splv.auth = Y_18.auth AND DATE_ADD(appln_filing_date, INTERVAL 18 YEAR) BETWEEN Y_18.entryIntoForce AND Y_18.endInForce)
JOIN (SELECT Y19 AS FEE19,entryIntoForce,endInForce,auth  FROM PAT_FEES WHERE feeClass = 'reg') Y_19 ON (splv.auth = Y_19.auth AND DATE_ADD(appln_filing_date, INTERVAL 19 YEAR) BETWEEN Y_19.entryIntoForce AND Y_19.endInForce)#JOIN (SELECT Y20 AS FEE20,entryIntoForce,endInForce,auth  FROM PAT_FEES) Y_20 ON (splv.auth = Y_20.auth AND DATE_ADD(appln_filing_date, INTERVAL 20 YEAR) BETWEEN Y_20.entryIntoForce AND Y_20.endInForce)
JOIN (SELECT Y20 AS FEE20,entryIntoForce,endInForce,auth  FROM PAT_FEES WHERE feeClass = 'reg') Y_20 ON (splv.auth = Y_20.auth AND DATE_ADD(appln_filing_date, INTERVAL 20 YEAR) BETWEEN Y_20.entryIntoForce AND Y_20.endInForce)#JOIN (SELECT Y20 AS FEE20,entryIntoForce,endInForce,auth  FROM PAT_FEES) Y_20 ON (splv.auth = Y_20.auth AND DATE_ADD(appln_filing_date, INTERVAL 20 YEAR) BETWEEN Y_20.entryIntoForce AND Y_20.endInForce)
/*
*/
SET 
/*
splv.FEE1 = Y_1.FEE1,
splv.FEE2 = Y_2.FEE2,
splv.FEE3 = Y_3.FEE3,
splv.FEE4 = Y_4.FEE4,
splv.FEE5 = Y_5.FEE5

splv.FEE6 = Y_6.FEE6,
splv.FEE7 = Y_7.FEE7,
splv.FEE8 = Y_8.FEE8,
splv.FEE9 = Y_9.FEE9,
splv.FEE10 = Y_10.FEE10


splv.FEE11 = Y_11.FEE11,
splv.FEE12 = Y_12.FEE12,
splv.FEE13 = Y_13.FEE13,
splv.FEE14 = Y_14.FEE14,
splv.FEE15 = Y_15.FEE15


splv.FEE16 = Y_16.FEE16,
splv.FEE17 = Y_17.FEE17,
splv.FEE18 = Y_18.FEE18,
splv.FEE19 = Y_19.FEE19,
splv.FEE20 = Y_20.FEE20




-- WHERE YEAR(appln_filing_date) = 1993
;

COMMIT;
*/


##UPDATE CURRENCIES###
SELECT appln_filing_date,FEE20 FROM swiss_patent_lives splv
JOIN swiss_patents sp USING(docdb_family_id)
JOIN PAT_FEES fees ON ()

WHERE 
feeClass = 'fx'


/*

FX fx


-- fetches FEES

AND
sp.appln_filing_date BETWEEN entryIntoForce AND endInForce AND splv.auth = fees.auth
AND
fees.currency = fx.currency

*/