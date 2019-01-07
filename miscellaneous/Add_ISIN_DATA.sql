
SELECT ISIN,YEAR(appln_filing_date) AS cohort,hrm_l2, COUNT(DISTINCT docdb_family_id) FROM 
PATSTAT.ISIN_EEPAT
JOIN tls206_person USING(hrm_l2)
JOIN tls207_pers_appln USING(person_id)
JOIN tls218_docdb_fam USING(appln_id)
JOIN tls201_appln USING(appln_id)
WHERE appln_filing_date BETWEEN '1978-01-01' AND '2014-12-31'
GROUP BY ISIN,cohort;


####################################
#-- 
####################################
CREATE TABLE PATSTAT.isin_patentFamilies AS SELECT ISIN, docdb_family_id FROM
(SELECT * FROM PATSTAT.ISIN_EEPAT
JOIN tls206_person USING(hrm_l2)
JOIN tls207_pers_appln USING(person_id)
JOIN tls218_docdb_fam USING(appln_id)
GROUP BY ISIN,docdb_family_id
) p;

#Now delete where there is no ISIN
SET SQL_SAFE_UPDATES = 0;
DELETE FROM PATSTAT.isin_patentFamilies
WHERE ISIN IS NULL ;
SET SQL_SAFE_UPDATES = 1;
#Now index it for fast joins
ALTER TABLE `PATSTAT`.`isin_patentFamilies` 
ADD INDEX `ISIN` (`ISIN` ASC)  COMMENT '';

#Now insert some new data into indicator table
SELECT docdb_family_id, MIN(appln_filing_date) AS priorDate FROM 
PATSTAT.isin_patentFamilies 
JOIN tls218_docdb_fam USING(appln_id)
JOIN tls201_appln USING(appln_id)
WHERE docdb_family_id  NOT IN (
SELECT docdb_family_id FROM
tls_indicator_table
)
GROUP BY 
;


#Now get FW citations
SELECT ISIN, count(DISTINCT docdb_family_id) AS patentFamilies, YEAR(priorDate) AS cohort
FROM PATSTAT.isin_patentFamilies 
LEFT OUTER JOIN tls_indicator_table USING(docdb_family_id)
GROUP BY ISIN,cohort LIMIT 100;