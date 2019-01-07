CREATE TABLE foreignPatents
SELECT *
FROM (
#DANISH PATENTS
(
SELECT docdb_family_id,HRM_L2 AS applicant, MIN(appln_filing_date) AS appln_filing_date, PERSON_CTRY_CODE
FROM tls218_docdb_fam
JOIN tls207_pers_appln USING(appln_id)
JOIN EEE_PPAT_April2014 USING(person_id)
JOIN tls201_appln USING(appln_id)  
WHERE PERSON_CTRY_CODE = 'DK'
AND
appln_filing_date BETWEEN '1993-01-01' AND '1993-12-31'
GROUP BY docdb_family_id
LIMIT 8156
)
UNION
(
SELECT docdb_family_id,HRM_L2 AS applicant, MIN(appln_filing_date) AS appln_filing_date, PERSON_CTRY_CODE
FROM tls218_docdb_fam
JOIN tls207_pers_appln USING(appln_id)
JOIN EEE_PPAT_April2014 USING(person_id)
JOIN tls201_appln USING(appln_id)  
WHERE PERSON_CTRY_CODE = 'GB'
AND
appln_filing_date BETWEEN '1993-01-01' AND '1993-12-31'
GROUP BY docdb_family_id
LIMIT 8156
)
UNION
(
SELECT docdb_family_id,HRM_L2 AS applicant, MIN(appln_filing_date) AS appln_filing_date, PERSON_CTRY_CODE
FROM tls218_docdb_fam
JOIN tls207_pers_appln USING(appln_id)
JOIN EEE_PPAT_April2014 USING(person_id)
JOIN tls201_appln USING(appln_id)  
WHERE PERSON_CTRY_CODE = 'DE'
AND
appln_filing_date BETWEEN '1993-01-01' AND '1993-12-31'
GROUP BY docdb_family_id
LIMIT 8156
)
UNION
(
SELECT docdb_family_id,HRM_L2 AS applicant, MIN(appln_filing_date) AS appln_filing_date, PERSON_CTRY_CODE
FROM tls218_docdb_fam
JOIN tls207_pers_appln USING(appln_id)
JOIN EEE_PPAT_April2014 USING(person_id)
JOIN tls201_appln USING(appln_id)  
WHERE PERSON_CTRY_CODE = 'CH'
AND
appln_filing_date BETWEEN '1993-01-01' AND '1993-12-31'
GROUP BY docdb_family_id
)

) AS foreignPatents;


-- INserts into the main feeTable
INSERT INTO patentFamilies 
(appln_id,
docdb_family_id, 
publn_auth,
jurisdiction,
cohort,
cohortMonth,
appln_filing_date,
publn_date,
death,
daysAlive
)
-- EXPLAIN EXTENDED
SELECT 
appln_id,
docdb_family_id, 
publn_auth, 
IF(l501ep='',publn_auth,l501ep) AS jurisdiction,
year(appln_filing_date) AS cohort,
month(appln_filing_date) AS cohortMonth,
appln_filing_date,
publn_date,
IFNULL(MAX(prs_gazette_date),NULL) AS death,
DATEDIFF(MAX(prs_gazette_date),appln_filing_date) AS daysAlive
FROM foreignPatents
JOIN tls218_docdb_fam USING(docdb_family_id)
JOIN tls211_pat_publn USING(appln_id)
JOIN tls221_inpadoc_prs USING(appln_id)
-- JOIN legal_event_code USING(lec_id)
WHERE 
-- AND lecg_id NOT IN (7,6,3)
publn_auth != 'WO'
AND
concat(docdb_family_id,publn_auth,l501ep) NOT IN (
SELECT concat(docdb_family_id,publn_auth,jurisdiction) AS fam_pub_jur FROM patentFamilies JOIN foreignPatents USING(docdb_family_id)
)
GROUP BY docdb_family_id, concat(publn_auth,l501ep);


#Add them into the indicator table
INSERT INTO tls_indicator_table 
(docdb_family_id)
SELECT DISTINCT docdb_family_id FROM patentFamilies WHERE 
patentFamilies.appln_filing_date BETWEEN '1993-01-01' AND '1993-12-31'
AND
docdb_family_id NOT IN  (SELECT DISTINCT docdb_family_id FROM tls_indicator_table GROUP BY docdb_family_id)
GROUP BY docdb_family_id;
COMMIT;