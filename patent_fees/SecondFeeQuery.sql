-- EXPLAIN EXTENDED
SELECT 
publn_auth,HRM_L2,PAT_CNT,PERSON_CTRY_CODE,fwCites, appln_filing_date,
concat(docdb_family_id,appln_auth,somePats.l501ep) AS patentRight,
year(appln_filing_date) AS cohort,
concat(publn_auth,publn_kind) AS authKind,
DATEDIFF(endDate, appln_filing_date) AS max_days_alive,
(SELECT Y1 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 1 YEAR) BETWEEN entryIntoForce AND endInForce AND feeClass = 'reg' LIMIT 1) Y1, 
(SELECT fxUSD FROM FX fx WHERE fx.year = year(DATE_ADD(somePats.appln_filing_date, INTERVAL 1 YEAR))) FX1, 
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 1 YEAR))= mv.year AND somePats.appln_auth = mv.country) UNM1,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 1 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) POP1,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 1 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) GDP1,
(SELECT Y2 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 2 YEAR)  BETWEEN entryIntoForce AND endInForce AND feeClass = 'reg' LIMIT 1) Y2,
(SELECT fxUSD FROM FX fx WHERE fx.year = year(DATE_ADD(somePats.appln_filing_date, INTERVAL 2 YEAR))) FX2, 
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 2 YEAR))= mv.year AND somePats.appln_auth = mv.country) UNM2,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 2 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) POP2,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 2 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) GDP2,
(SELECT Y3 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 3 YEAR)  BETWEEN entryIntoForce AND endInForce AND feeClass = 'reg' LIMIT 1) Y3,
(SELECT fxUSD FROM FX fx WHERE fx.year = year(DATE_ADD(somePats.appln_filing_date, INTERVAL 3 YEAR))) FX4, 
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 3 YEAR))= mv.year AND somePats.appln_auth = mv.country) UNM3,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 3 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) POP3,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 3 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) GDP3,
(SELECT Y4 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 4 YEAR)  BETWEEN entryIntoForce AND endInForce AND feeClass = 'reg' LIMIT 1) Y4,
(SELECT fxUSD FROM FX fx WHERE fx.year = year(DATE_ADD(somePats.appln_filing_date, INTERVAL 4 YEAR))) FX4, 
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 4 YEAR))= mv.year AND somePats.appln_auth = mv.country) UNM4,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 4 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) POP4,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 4 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) GDP4,
(SELECT Y5 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 5 YEAR)  BETWEEN entryIntoForce AND endInForce AND feeClass = 'reg' LIMIT 1) Y5,
(SELECT fxUSD FROM FX fx WHERE fx.year = year(DATE_ADD(somePats.appln_filing_date, INTERVAL 5 YEAR))) FX5, 
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 5 YEAR))= mv.year AND somePats.appln_auth = mv.country) UNM5,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 5 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) POP5,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 5 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) GDP5,
(SELECT Y6 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 6 YEAR)  BETWEEN entryIntoForce AND endInForce AND feeClass = 'reg' LIMIT 1) Y6,
(SELECT fxUSD FROM FX fx WHERE fx.year = year(DATE_ADD(somePats.appln_filing_date, INTERVAL 6 YEAR))) FX6, 
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 6 YEAR))= mv.year AND somePats.appln_auth = mv.country) UNM6,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 6 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) POP6,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 6 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) GDP6,
(SELECT Y7 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 7 YEAR)  BETWEEN entryIntoForce AND endInForce AND feeClass = 'reg' LIMIT 1) Y7,
(SELECT fxUSD FROM FX fx WHERE fx.year = year(DATE_ADD(somePats.appln_filing_date, INTERVAL 7 YEAR))) FX7, 
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 7 YEAR))= mv.year AND somePats.appln_auth = mv.country) UNM7,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 7 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) POP7,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 7 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) GDP7,
(SELECT Y8 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 8 YEAR)  BETWEEN entryIntoForce AND endInForce AND feeClass = 'reg' LIMIT 1) Y8,
(SELECT fxUSD FROM FX fx WHERE fx.year = year(DATE_ADD(somePats.appln_filing_date, INTERVAL 8 YEAR))) FX8, 
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 8 YEAR))= mv.year AND somePats.appln_auth = mv.country) UNM8,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 8 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) POP8,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 8 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) GDP8,
(SELECT Y9 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 9 YEAR)  BETWEEN entryIntoForce AND endInForce AND feeClass = 'reg' LIMIT 1) Y9,
(SELECT fxUSD FROM FX fx WHERE fx.year = year(DATE_ADD(somePats.appln_filing_date, INTERVAL 9 YEAR))) FX9, 
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 9 YEAR))= mv.year AND somePats.appln_auth = mv.country) UNM9,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 9 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) POP9,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 9 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) GDP9,
(SELECT Y10 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 10 YEAR)  BETWEEN entryIntoForce AND endInForce AND feeClass = 'reg' LIMIT 1) Y10,
(SELECT fxUSD FROM FX fx WHERE fx.year = year(DATE_ADD(somePats.appln_filing_date, INTERVAL 10 YEAR))) FX10, 
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 10 YEAR))= mv.year AND somePats.appln_auth = mv.country) UNM10,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 10 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) POP10,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 10 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) GDP10,
(SELECT Y11 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 11 YEAR)  BETWEEN entryIntoForce AND endInForce AND feeClass = 'reg' LIMIT 1) Y11,
(SELECT fxUSD FROM FX fx WHERE fx.year = year(DATE_ADD(somePats.appln_filing_date, INTERVAL 11 YEAR))) FX11, 
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 11 YEAR))= mv.year AND somePats.appln_auth = mv.country) UNM11,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 11 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) POP11,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 11 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) GDP11,
(SELECT Y12 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 12 YEAR)  BETWEEN entryIntoForce AND endInForce AND feeClass = 'reg' LIMIT 1) Y12,
(SELECT fxUSD FROM FX fx WHERE fx.year = year(DATE_ADD(somePats.appln_filing_date, INTERVAL 12 YEAR))) FX12, 
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 12 YEAR))= mv.year AND somePats.appln_auth = mv.country) UNM12,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 12 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) POP12,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 12 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) GDP12,
(SELECT Y13 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 13 YEAR)  BETWEEN entryIntoForce AND endInForce AND feeClass = 'reg' LIMIT 1) Y13,
(SELECT fxUSD FROM FX fx WHERE fx.year = year(DATE_ADD(somePats.appln_filing_date, INTERVAL 13 YEAR))) FX13, 
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 13 YEAR))= mv.year AND somePats.appln_auth = mv.country) UNM13,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 13 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) POP13,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 13 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) GDP13,
(SELECT Y14 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 14 YEAR)  BETWEEN entryIntoForce AND endInForce AND feeClass = 'reg' LIMIT 1) Y14,
(SELECT fxUSD FROM FX fx WHERE fx.year = year(DATE_ADD(somePats.appln_filing_date, INTERVAL 14 YEAR))) FX14, 
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 14 YEAR))= mv.year AND somePats.appln_auth = mv.country) UNM14,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 14 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) POP14,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 14 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) GDP14,
(SELECT Y15 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 15 YEAR)  BETWEEN entryIntoForce AND endInForce AND feeClass = 'reg' LIMIT 1) Y15,
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 15 YEAR))= mv.year AND somePats.appln_auth = mv.country) UNM15,
(SELECT fxUSD FROM FX fx WHERE fx.year = year(DATE_ADD(somePats.appln_filing_date, INTERVAL 15 YEAR))) FX15, 
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 15 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) POP15,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 15 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) GDP15,
(SELECT Y16 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 16 YEAR)  BETWEEN entryIntoForce AND endInForce AND feeClass = 'reg' LIMIT 1) Y16,
(SELECT fxUSD FROM FX fx WHERE fx.year = year(DATE_ADD(somePats.appln_filing_date, INTERVAL 16 YEAR))) FX16, 
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 16 YEAR))= mv.year AND somePats.appln_auth = mv.country) UNM16,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 16 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) POP16,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 16 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) GDP16,
(SELECT Y17 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 17 YEAR)  BETWEEN entryIntoForce AND endInForce AND feeClass = 'reg' LIMIT 1) Y17,
(SELECT fxUSD FROM FX fx WHERE fx.year = year(DATE_ADD(somePats.appln_filing_date, INTERVAL 17 YEAR))) FX17, 
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 17 YEAR))= mv.year AND somePats.appln_auth = mv.country) UNM17,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 17 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) POP17,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 17 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) GDP17,
(SELECT Y18 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 18 YEAR)  BETWEEN entryIntoForce AND endInForce AND feeClass = 'reg' LIMIT 1) Y18,
(SELECT fxUSD FROM FX fx WHERE fx.year = year(DATE_ADD(somePats.appln_filing_date, INTERVAL 18 YEAR))) FX18, 
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 18 YEAR))= mv.year AND somePats.appln_auth = mv.country) UNM18,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 18 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) POP18,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 18 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) GDP18,
(SELECT Y19 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 19 YEAR)  BETWEEN entryIntoForce AND endInForce AND feeClass = 'reg' LIMIT 1) Y19,
(SELECT fxUSD FROM FX fx WHERE fx.year = year(DATE_ADD(somePats.appln_filing_date, INTERVAL 19 YEAR))) FX19, 
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 19 YEAR))= mv.year AND somePats.appln_auth = mv.country) UNM19,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 19 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) POP19,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 19 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) GDP19,
(SELECT Y20 FROM PAT_FEES_2014 WHERE DATE_ADD(somePats.appln_filing_date, INTERVAL 20 YEAR)  BETWEEN entryIntoForce AND endInForce AND feeClass = 'reg' LIMIT 1) Y20,
(SELECT fxUSD FROM FX fx WHERE fx.year = year(DATE_ADD(somePats.appln_filing_date, INTERVAL 20 YEAR))) FX20, 
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 20 YEAR))= mv.year AND somePats.appln_auth = mv.country) UNM20,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 20 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) POP20,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(DATE_ADD(somePats.appln_filing_date, INTERVAL 20 YEAR))  	= mv.year AND somePats.appln_auth = mv.country) GDP20

FROM (SELECT * FROM tls211_pat_publn 
JOIN tls201_appln USING(appln_id)
JOIN tls207_pers_appln USING(appln_id)
JOIN EEE_PPAT_April2014 USING(person_id)
JOIN tls218_docdb_fam USING(appln_id)
JOIN tls_indicator_table USING(docdb_family_id)
JOIN prsStats USING (appln_id)

WHERE publn_auth IN ('AT','CH','DE')

AND appln_filing_date > '1980-01-01'--  '1964-06-15' --  AND  '1994-02-04'
-- AND appln_filing_date < '1990-01-01'
AND appln_filing_date != '9999-12-31'

) somePats

-- STRAIGHT_JOIN MACRO_VARS mv ON (somePats.appln_auth = mv.country AND year(somePats.appln_filing_date) = mv.year)

GROUP BY patentRight

ORDER BY RAND()
LIMIT 20000;