SELECT 
publn_auth,HRM_L2,fwCites, appln_filing_date,
concat(docdb_family_id,appln_auth,l501ep) AS patentRight,
year(appln_filing_date) AS cohort,
concat(publn_auth,publn_kind) AS authKind,
max(DATEDIFF(prs_gazette_date, appln_filing_date)) AS max_days_alive,

(SELECT Y1 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 1 YEAR) BETWEEN entryIntoForce AND endInForce LIMIT 1) Y1,
(SELECT Y2 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 2 YEAR) BETWEEN entryIntoForce AND endInForce LIMIT 1) Y2,
(SELECT Y3 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 3 YEAR) BETWEEN entryIntoForce AND endInForce LIMIT 1) Y3,
(SELECT Y4 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 4 YEAR) BETWEEN entryIntoForce AND endInForce LIMIT 1) Y4,
(SELECT Y5 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 5 YEAR) BETWEEN entryIntoForce AND endInForce LIMIT 1) Y5,
(SELECT Y6 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 6 YEAR) BETWEEN entryIntoForce AND endInForce LIMIT 1) Y6,
(SELECT Y7 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 7 YEAR) BETWEEN entryIntoForce AND endInForce LIMIT 1) Y7,
(SELECT Y8 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 8 YEAR) BETWEEN entryIntoForce AND endInForce LIMIT 1) Y8,
(SELECT Y9 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 9 YEAR) BETWEEN entryIntoForce AND endInForce LIMIT 1) Y9,
(SELECT Y10 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 10 YEAR) BETWEEN entryIntoForce AND endInForce LIMIT 1) Y10,
(SELECT Y11 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 11 YEAR) BETWEEN entryIntoForce AND endInForce LIMIT 1) Y11,
(SELECT Y12 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 12 YEAR) BETWEEN entryIntoForce AND endInForce LIMIT 1) Y12,
(SELECT Y13 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 13 YEAR) BETWEEN entryIntoForce AND endInForce LIMIT 1) Y13,
(SELECT Y14 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 14 YEAR) BETWEEN entryIntoForce AND endInForce LIMIT 1) Y14,
(SELECT Y15 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 15 YEAR) BETWEEN entryIntoForce AND endInForce LIMIT 1) Y15,
(SELECT Y16 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 16 YEAR) BETWEEN entryIntoForce AND endInForce LIMIT 1) Y16,
(SELECT Y17 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 17 YEAR) BETWEEN entryIntoForce AND endInForce LIMIT 1) Y17,
(SELECT Y18 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 18 YEAR) BETWEEN entryIntoForce AND endInForce LIMIT 1) Y18,
(SELECT Y19 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 19 YEAR) BETWEEN entryIntoForce AND endInForce LIMIT 1) Y19,
(SELECT Y20 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 20 YEAR) BETWEEN entryIntoForce AND endInForce LIMIT 1) Y20

FROM (SELECT * FROM tls211_pat_publn 
JOIN tls201_appln USING(appln_id)
JOIN tls207_pers_appln USING(appln_id)
JOIN EEE_PPAT_April2014 USING(person_id)
JOIN tls218_docdb_fam USING(appln_id)
JOIN tls_indicator_table USING(docdb_family_id)
INNER JOIN tls221_inpadoc_prs USING (appln_id)

WHERE publn_auth = 'CH' 

AND appln_filing_date > '1980-01-01'--  '1964-06-15' --  AND  '1994-02-04'

AND appln_filing_date != '9999-12-31'
) somePats


GROUP BY patentRight


LIMIT 10;