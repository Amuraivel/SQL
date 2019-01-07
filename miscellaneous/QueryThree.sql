EXPLAIN EXTENDED
-- INSERT INTO tmpTable 

SELECT 
publn_auth,
HRM_L2_ID,
PAT_CNT,
PERSON_CTRY_CODE,
SECTOR,
fwCites, 
appln_filing_date,
LEFT(ipc_class_symbol,4) AS IPC4,
concat(docdb_family_id,appln_auth,somePats.l501EP2) AS patentRight,
year(appln_filing_date) AS cohort,
concat(publn_auth,publn_kind) AS authKind,
DATEDIFF(endDate, appln_filing_date) AS max_days_alive,

DATE_ADD(appln_filing_date, INTERVAL 1 YEAR) AS year1date,
DATE_ADD(appln_filing_date, INTERVAL 2 YEAR) AS year2date,
DATE_ADD(appln_filing_date, INTERVAL 3 YEAR) AS year3date,
DATE_ADD(appln_filing_date, INTERVAL 4 YEAR) AS year4date,
DATE_ADD(appln_filing_date, INTERVAL 5 YEAR) AS year5date,
DATE_ADD(appln_filing_date, INTERVAL 6 YEAR) AS year6date,
DATE_ADD(appln_filing_date, INTERVAL 7 YEAR) AS year7date,
DATE_ADD(appln_filing_date, INTERVAL 8 YEAR) AS year8date,
DATE_ADD(appln_filing_date, INTERVAL 9 YEAR) AS year9date,
DATE_ADD(appln_filing_date, INTERVAL 10 YEAR) AS year10date,
DATE_ADD(appln_filing_date, INTERVAL 11 YEAR) AS year11date,
DATE_ADD(appln_filing_date, INTERVAL 12 YEAR) AS year12date,
DATE_ADD(appln_filing_date, INTERVAL 13 YEAR) AS year13date,
DATE_ADD(appln_filing_date, INTERVAL 14 YEAR) AS year14date,
DATE_ADD(appln_filing_date, INTERVAL 15 YEAR) AS year15date,
DATE_ADD(appln_filing_date, INTERVAL 16 YEAR) AS year16date,
DATE_ADD(appln_filing_date, INTERVAL 17 YEAR) AS year17date,
DATE_ADD(appln_filing_date, INTERVAL 18 YEAR) AS year18date,
DATE_ADD(appln_filing_date, INTERVAL 19 YEAR) AS year19date,
DATE_ADD(appln_filing_date, INTERVAL 20 YEAR) AS year20date,
-- Patent Fees
(SELECT ROUND((Y1/fxUSD),2) AS F1 FROM PAT_FEES f JOIN FX fx ON (f.currency = fx.currency) WHERE year1date BETWEEN f.entryIntoForce AND f.endInForce AND f.feeClass = 'reg' AND (somePats.publn_auth = f.auth ) AND (fx.year = YEAR(year1date) AND fx.month = MONTH(year1date)) LIMIT 1) F1x,
(SELECT ROUND((Y2/fxUSD),2) AS F1 FROM PAT_FEES f JOIN FX fx ON (f.currency = fx.currency) WHERE year2date BETWEEN f.entryIntoForce AND f.endInForce AND f.feeClass = 'reg' AND (somePats.publn_auth = f.auth ) AND (fx.year = YEAR(year2date) AND fx.month = MONTH(year2date)) LIMIT 1) F2x,
(SELECT ROUND((Y3/fxUSD),2) AS F1 FROM PAT_FEES f JOIN FX fx ON (f.currency = fx.currency) WHERE year3date BETWEEN f.entryIntoForce AND f.endInForce AND f.feeClass = 'reg' AND (somePats.publn_auth = f.auth ) AND (fx.year = YEAR(year3date) AND fx.month = MONTH(year3date)) LIMIT 1) F3x,
(SELECT ROUND((Y4/fxUSD),2) AS F1 FROM PAT_FEES f JOIN FX fx ON (f.currency = fx.currency) WHERE year4date BETWEEN f.entryIntoForce AND f.endInForce AND f.feeClass = 'reg' AND (somePats.publn_auth = f.auth ) AND (fx.year = YEAR(year4date) AND fx.month = MONTH(year4date)) LIMIT 1) F4x,
(SELECT ROUND((Y5/fxUSD),2) AS F1 FROM PAT_FEES f JOIN FX fx ON (f.currency = fx.currency) WHERE year5date BETWEEN f.entryIntoForce AND f.endInForce AND f.feeClass = 'reg' AND (somePats.publn_auth = f.auth ) AND (fx.year = YEAR(year5date) AND fx.month = MONTH(year5date)) LIMIT 1) F5x,
(SELECT ROUND((Y6/fxUSD),2) AS F1 FROM PAT_FEES f JOIN FX fx ON (f.currency = fx.currency) WHERE year6date BETWEEN f.entryIntoForce AND f.endInForce AND f.feeClass = 'reg' AND (somePats.publn_auth = f.auth ) AND (fx.year = YEAR(year6date) AND fx.month = MONTH(year6date)) LIMIT 1) F6x,
(SELECT ROUND((Y7/fxUSD),2) AS F1 FROM PAT_FEES f JOIN FX fx ON (f.currency = fx.currency) WHERE year7date BETWEEN f.entryIntoForce AND f.endInForce AND f.feeClass = 'reg' AND (somePats.publn_auth = f.auth ) AND (fx.year = YEAR(year7date) AND fx.month = MONTH(year7date)) LIMIT 1) F7x,
(SELECT ROUND((Y8/fxUSD),2) AS F1 FROM PAT_FEES f JOIN FX fx ON (f.currency = fx.currency) WHERE year8date BETWEEN f.entryIntoForce AND f.endInForce AND f.feeClass = 'reg' AND (somePats.publn_auth = f.auth ) AND (fx.year = YEAR(year8date) AND fx.month = MONTH(year8date)) LIMIT 1) F8x,
(SELECT ROUND((Y9/fxUSD),2) AS F1 FROM PAT_FEES f JOIN FX fx ON (f.currency = fx.currency) WHERE year9date BETWEEN f.entryIntoForce AND f.endInForce AND f.feeClass = 'reg' AND (somePats.publn_auth = f.auth ) AND (fx.year = YEAR(year9date) AND fx.month = MONTH(year9date)) LIMIT 1) F9x,
(SELECT ROUND((Y10/fxUSD),2) AS F1 FROM PAT_FEES f JOIN FX fx ON (f.currency = fx.currency) WHERE year10date BETWEEN f.entryIntoForce AND f.endInForce AND f.feeClass = 'reg' AND (somePats.publn_auth = f.auth ) AND (fx.year = YEAR(year10date) AND fx.month = MONTH(year10date)) LIMIT 1) F10x,
(SELECT ROUND((Y11/fxUSD),2) AS F1 FROM PAT_FEES f JOIN FX fx ON (f.currency = fx.currency) WHERE year11date BETWEEN f.entryIntoForce AND f.endInForce AND f.feeClass = 'reg' AND (somePats.publn_auth = f.auth ) AND (fx.year = YEAR(year11date) AND fx.month = MONTH(year11date)) LIMIT 1) F11x,
(SELECT ROUND((Y12/fxUSD),2) AS F1 FROM PAT_FEES f JOIN FX fx ON (f.currency = fx.currency) WHERE year12date BETWEEN f.entryIntoForce AND f.endInForce AND f.feeClass = 'reg' AND (somePats.publn_auth = f.auth ) AND (fx.year = YEAR(year12date) AND fx.month = MONTH(year12date)) LIMIT 1) F12x,
(SELECT ROUND((Y13/fxUSD),2) AS F1 FROM PAT_FEES f JOIN FX fx ON (f.currency = fx.currency) WHERE year13date BETWEEN f.entryIntoForce AND f.endInForce AND f.feeClass = 'reg' AND (somePats.publn_auth = f.auth ) AND (fx.year = YEAR(year13date) AND fx.month = MONTH(year13date)) LIMIT 1) F13x,
(SELECT ROUND((Y14/fxUSD),2) AS F1 FROM PAT_FEES f JOIN FX fx ON (f.currency = fx.currency) WHERE year14date BETWEEN f.entryIntoForce AND f.endInForce AND f.feeClass = 'reg' AND (somePats.publn_auth = f.auth ) AND (fx.year = YEAR(year14date) AND fx.month = MONTH(year14date)) LIMIT 1) F14x,
(SELECT ROUND((Y15/fxUSD),2) AS F1 FROM PAT_FEES f JOIN FX fx ON (f.currency = fx.currency) WHERE year15date BETWEEN f.entryIntoForce AND f.endInForce AND f.feeClass = 'reg' AND (somePats.publn_auth = f.auth ) AND (fx.year = YEAR(year15date) AND fx.month = MONTH(year15date)) LIMIT 1) F15x,
(SELECT ROUND((Y16/fxUSD),2) AS F1 FROM PAT_FEES f JOIN FX fx ON (f.currency = fx.currency) WHERE year16date BETWEEN f.entryIntoForce AND f.endInForce AND f.feeClass = 'reg' AND (somePats.publn_auth = f.auth ) AND (fx.year = YEAR(year16date) AND fx.month = MONTH(year16date)) LIMIT 1) F16x,
(SELECT ROUND((Y17/fxUSD),2) AS F1 FROM PAT_FEES f JOIN FX fx ON (f.currency = fx.currency) WHERE year17date BETWEEN f.entryIntoForce AND f.endInForce AND f.feeClass = 'reg' AND (somePats.publn_auth = f.auth ) AND (fx.year = YEAR(year17date) AND fx.month = MONTH(year17date)) LIMIT 1) F17x,
(SELECT ROUND((Y18/fxUSD),2) AS F1 FROM PAT_FEES f JOIN FX fx ON (f.currency = fx.currency) WHERE year18date BETWEEN f.entryIntoForce AND f.endInForce AND f.feeClass = 'reg' AND (somePats.publn_auth = f.auth ) AND (fx.year = YEAR(year18date) AND fx.month = MONTH(year18date)) LIMIT 1) F18x,
(SELECT ROUND((Y19/fxUSD),2) AS F1 FROM PAT_FEES f JOIN FX fx ON (f.currency = fx.currency) WHERE year19date BETWEEN f.entryIntoForce AND f.endInForce AND f.feeClass = 'reg' AND (somePats.publn_auth = f.auth ) AND (fx.year = YEAR(year19date) AND fx.month = MONTH(year19date)) LIMIT 1) F19x,
(SELECT ROUND((Y20/fxUSD),2) AS F1 FROM PAT_FEES f JOIN FX fx ON (f.currency = fx.currency) WHERE year20date BETWEEN f.entryIntoForce AND f.endInForce AND f.feeClass = 'reg' AND (somePats.publn_auth = f.auth ) AND (fx.year = YEAR(year20date) AND fx.month = MONTH(year20date)) LIMIT 1) F20x,


-- POPulation variables
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(year1date)  	= mv.year AND somePats.appln_auth = mv.country) POP1,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(year2date)  	= mv.year AND somePats.appln_auth = mv.country) POP2,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(year3date)  	= mv.year AND somePats.appln_auth = mv.country) POP3,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(year4date)  	= mv.year AND somePats.appln_auth = mv.country) POP4,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(year5date)  	= mv.year AND somePats.appln_auth = mv.country) POP5,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(year6date)  	= mv.year AND somePats.appln_auth = mv.country) POP6,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(year7date)  	= mv.year AND somePats.appln_auth = mv.country) POP7,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(year8date)  	= mv.year AND somePats.appln_auth = mv.country) POP8,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(year9date)  	= mv.year AND somePats.appln_auth = mv.country) POP9,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(year10date)  	= mv.year AND somePats.appln_auth = mv.country) POP10,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(year11date)  	= mv.year AND somePats.appln_auth = mv.country) POP11,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(year12date)  	= mv.year AND somePats.appln_auth = mv.country) POP12,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(year13date)  	= mv.year AND somePats.appln_auth = mv.country) POP13,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(year14date)  	= mv.year AND somePats.appln_auth = mv.country) POP14,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(year15date)  	= mv.year AND somePats.appln_auth = mv.country) POP15,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(year16date)  	= mv.year AND somePats.appln_auth = mv.country) POP16,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(year17date)  	= mv.year AND somePats.appln_auth = mv.country) POP17,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(year18date)  	= mv.year AND somePats.appln_auth = mv.country) POP18,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(year19date)  	= mv.year AND somePats.appln_auth = mv.country) POP19,
(SELECT mv.population FROM MACRO_VARS mv WHERE YEAR(year20date)  	= mv.year AND somePats.appln_auth = mv.country) POP20,

-- GDP VARIABLES
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(year1date)  	= mv.year AND somePats.appln_auth = mv.country) GDP1,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(year2date)  	= mv.year AND somePats.appln_auth = mv.country) GDP2,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(year3date)  	= mv.year AND somePats.appln_auth = mv.country) GDP3,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(year4date)  	= mv.year AND somePats.appln_auth = mv.country) GDP4,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(year5date)  	= mv.year AND somePats.appln_auth = mv.country) GDP4,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(year6date)  	= mv.year AND somePats.appln_auth = mv.country) GDP6,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(year7date)  	= mv.year AND somePats.appln_auth = mv.country) GDP7,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(year8date)  	= mv.year AND somePats.appln_auth = mv.country) GDP8,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(year9date)  	= mv.year AND somePats.appln_auth = mv.country) GDP9,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(year10date)  = mv.year AND somePats.appln_auth = mv.country) GDP10,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(year11date)  = mv.year AND somePats.appln_auth = mv.country) GDP11,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(year12date)  = mv.year AND somePats.appln_auth = mv.country) GDP12,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(year13date)  = mv.year AND somePats.appln_auth = mv.country) GDP13,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(year14date)  = mv.year AND somePats.appln_auth = mv.country) GDP14,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(year15date)  = mv.year AND somePats.appln_auth = mv.country) GDP15,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(year16date)  = mv.year AND somePats.appln_auth = mv.country) GDP16,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(year17date)  = mv.year AND somePats.appln_auth = mv.country) GDP17,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(year18date)  = mv.year AND somePats.appln_auth = mv.country) GDP18,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(year19date)  = mv.year AND somePats.appln_auth = mv.country) GDP19,
(SELECT mv.nominalGDPUSD FROM MACRO_VARS mv WHERE YEAR(year20date)  = mv.year AND somePats.appln_auth = mv.country) GDP20,


-- UNEMPLOYMENT VARIABLES
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(year1date)= mv.year AND somePats.appln_auth = mv.country) UNM1,
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(year2date)= mv.year AND somePats.appln_auth = mv.country) UNM2,
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(year3date)= mv.year AND somePats.appln_auth = mv.country) UNM3,
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(year4date)= mv.year AND somePats.appln_auth = mv.country) UNM4,
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(year5date)= mv.year AND somePats.appln_auth = mv.country) UNM5,
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(year6date)= mv.year AND somePats.appln_auth = mv.country) UNM6,
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(year7date)= mv.year AND somePats.appln_auth = mv.country) UNM7,
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(year8date)= mv.year AND somePats.appln_auth = mv.country) UNM8,
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(year9date)= mv.year AND somePats.appln_auth = mv.country) UNM9,
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(year10date)= mv.year AND somePats.appln_auth = mv.country) UNM10,
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(year11date)= mv.year AND somePats.appln_auth = mv.country) UNM11,
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(year12date)= mv.year AND somePats.appln_auth = mv.country) UNM12,
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(year13date)= mv.year AND somePats.appln_auth = mv.country) UNM13,
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(year14date)= mv.year AND somePats.appln_auth = mv.country) UNM14,
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(year15date)= mv.year AND somePats.appln_auth = mv.country) UNM15,
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(year16date)= mv.year AND somePats.appln_auth = mv.country) UNM16,
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(year17date)= mv.year AND somePats.appln_auth = mv.country) UNM17,
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(year18date)= mv.year AND somePats.appln_auth = mv.country) UNM18,
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(year19date)= mv.year AND somePats.appln_auth = mv.country) UNM19,
(SELECT mv.unemploymentRate FROM MACRO_VARS mv WHERE YEAR(year20date)= mv.year AND somePats.appln_auth = mv.country) UNM20
/*
,

-- Foreign exchange effects
*/
/*

(SELECT fxUSD FROM PAT_FEES f JOIN FX fx USING(currency) WHERE fx.year = YEAR(year1date) AND fx.month = MONTH(year1date) AND feeClass = 'fx' AND (year1date BETWEEN f.entryIntoForce AND f.endInForce) AND f.auth = PERSON_CTRY_CODE LIMIT 1) appFxUSD1,
(SELECT fxUSD FROM PAT_FEES f JOIN FX fx USING(currency) WHERE fx.year = YEAR(year2date) AND fx.month = MONTH(year2date) AND feeClass = 'fx' AND (year2date BETWEEN f.entryIntoForce AND f.endInForce) AND f.auth = PERSON_CTRY_CODE LIMIT 1) appFxUSD2,
(SELECT fxUSD FROM PAT_FEES f JOIN FX fx USING(currency) WHERE fx.year = YEAR(year3date) AND fx.month = MONTH(year3date) AND feeClass = 'fx' AND (year3date BETWEEN f.entryIntoForce AND f.endInForce) AND f.auth = PERSON_CTRY_CODE LIMIT 1) appFxUSD3,
(SELECT fxUSD FROM PAT_FEES f JOIN FX fx USING(currency) WHERE fx.year = YEAR(year4date) AND fx.month = MONTH(year4date) AND feeClass = 'fx' AND (year4date BETWEEN f.entryIntoForce AND f.endInForce) AND f.auth = PERSON_CTRY_CODE LIMIT 1) appFxUSD4,
(SELECT fxUSD FROM PAT_FEES f JOIN FX fx USING(currency) WHERE fx.year = YEAR(year5date) AND fx.month = MONTH(year5date) AND feeClass = 'fx' AND (year5date BETWEEN f.entryIntoForce AND f.endInForce) AND f.auth = PERSON_CTRY_CODE LIMIT 1) appFxUSD5,
(SELECT fxUSD FROM PAT_FEES f JOIN FX fx USING(currency) WHERE fx.year = YEAR(year6date) AND fx.month = MONTH(year6date) AND feeClass = 'fx' AND (year6date BETWEEN f.entryIntoForce AND f.endInForce) AND f.auth = PERSON_CTRY_CODE LIMIT 1) appFxUSD6,
(SELECT fxUSD FROM PAT_FEES f JOIN FX fx USING(currency) WHERE fx.year = YEAR(year7date) AND fx.month = MONTH(year7date) AND feeClass = 'fx' AND (year7date BETWEEN f.entryIntoForce AND f.endInForce) AND f.auth = PERSON_CTRY_CODE LIMIT 1) appFxUSD7,
(SELECT fxUSD FROM PAT_FEES f JOIN FX fx USING(currency) WHERE fx.year = YEAR(year8date) AND fx.month = MONTH(year8date) AND feeClass = 'fx' AND (year8date BETWEEN f.entryIntoForce AND f.endInForce) AND f.auth = PERSON_CTRY_CODE LIMIT 1) appFxUSD8,
(SELECT fxUSD FROM PAT_FEES f JOIN FX fx USING(currency) WHERE fx.year = YEAR(year9date) AND fx.month = MONTH(year9date) AND feeClass = 'fx' AND (year9date BETWEEN f.entryIntoForce AND f.endInForce) AND f.auth = PERSON_CTRY_CODE LIMIT 1) appFxUSD9,
(SELECT fxUSD FROM PAT_FEES f JOIN FX fx USING(currency) WHERE fx.year = YEAR(year10date) AND fx.month = MONTH(year10date) AND feeClass = 'fx' AND (year10date BETWEEN f.entryIntoForce AND f.endInForce) AND f.auth = PERSON_CTRY_CODE LIMIT 1) appFxUSD10,
(SELECT fxUSD FROM PAT_FEES f JOIN FX fx USING(currency) WHERE fx.year = YEAR(year11date) AND fx.month = MONTH(year11date) AND feeClass = 'fx' AND (year11date BETWEEN f.entryIntoForce AND f.endInForce) AND f.auth = PERSON_CTRY_CODE LIMIT 1) appFxUSD11,
(SELECT fxUSD FROM PAT_FEES f JOIN FX fx USING(currency) WHERE fx.year = YEAR(year12date) AND fx.month = MONTH(year12date) AND feeClass = 'fx' AND (year12date BETWEEN f.entryIntoForce AND f.endInForce) AND f.auth = PERSON_CTRY_CODE LIMIT 1) appFxUSD12,
(SELECT fxUSD FROM PAT_FEES f JOIN FX fx USING(currency) WHERE fx.year = YEAR(year13date) AND fx.month = MONTH(year13date) AND feeClass = 'fx' AND (year13date BETWEEN f.entryIntoForce AND f.endInForce) AND f.auth = PERSON_CTRY_CODE LIMIT 1) appFxUSD13,
(SELECT fxUSD FROM PAT_FEES f JOIN FX fx USING(currency) WHERE fx.year = YEAR(year14date) AND fx.month = MONTH(year14date) AND feeClass = 'fx' AND (year14date BETWEEN f.entryIntoForce AND f.endInForce) AND f.auth = PERSON_CTRY_CODE LIMIT 1) appFxUSD14,
(SELECT fxUSD FROM PAT_FEES f JOIN FX fx USING(currency) WHERE fx.year = YEAR(year15date) AND fx.month = MONTH(year15date) AND feeClass = 'fx' AND (year15date BETWEEN f.entryIntoForce AND f.endInForce) AND f.auth = PERSON_CTRY_CODE LIMIT 1) appFxUSD15,
(SELECT fxUSD FROM PAT_FEES f JOIN FX fx USING(currency) WHERE fx.year = YEAR(year16date) AND fx.month = MONTH(year16date) AND feeClass = 'fx' AND (year16date BETWEEN f.entryIntoForce AND f.endInForce) AND f.auth = PERSON_CTRY_CODE LIMIT 1) appFxUSD16,
(SELECT fxUSD FROM PAT_FEES f JOIN FX fx USING(currency) WHERE fx.year = YEAR(year17date) AND fx.month = MONTH(year17date) AND feeClass = 'fx' AND (year17date BETWEEN f.entryIntoForce AND f.endInForce) AND f.auth = PERSON_CTRY_CODE LIMIT 1) appFxUSD17,
(SELECT fxUSD FROM PAT_FEES f JOIN FX fx USING(currency) WHERE fx.year = YEAR(year18date) AND fx.month = MONTH(year18date) AND feeClass = 'fx' AND (year18date BETWEEN f.entryIntoForce AND f.endInForce) AND f.auth = PERSON_CTRY_CODE LIMIT 1) appFxUSD18,
(SELECT fxUSD FROM PAT_FEES f JOIN FX fx USING(currency) WHERE fx.year = YEAR(year19date) AND fx.month = MONTH(year19date) AND feeClass = 'fx' AND (year19date BETWEEN f.entryIntoForce AND f.endInForce) AND f.auth = PERSON_CTRY_CODE LIMIT 1) appFxUSD19,
(
SELECT fxUSD FROM PAT_FEES f JOIN FX fx USING(currency) 
WHERE 
fx.year = YEAR(year20date) AND fx.month = MONTH(year20date) -- Get FX time series value
AND feeClass = 'fx' -- Then make sure we have the special line for fx entries
AND (year20Date BETWEEN f.entryIntoForce AND f.endInForce) -- Make sure we're getting the right currency
AND f.auth = PERSON_CTRY_CODE LIMIT 1 -- Now lets get the country that matches the applicant...
) appFxUSD20
,*/


FROM 

(
SELECT * FROM tls211_pat_publn 
JOIN tls201_appln USING(appln_id)
JOIN tls207_pers_appln USING(appln_id)
JOIN EEE_PPAT_April2014 eeepat USING(person_id)
JOIN tls218_docdb_fam USING(appln_id)
JOIN tls_indicator_table USING(docdb_family_id)
JOIN prsStats prs USING (appln_id)
JOIN tls209_appln_ipc USING(appln_id)
JOIN tls221_inpadoc_prs USING(appln_id)
WHERE 
-- toss out all bum applications
appln_filing_date != '9999-12-31'
AND
-- Toss out all previous applications to save space
appln_filing_date >= '1980-01-01'

-- Granted patents

AND (


-- Full Swiss sample
-- (publn_auth = 'CH' AND appln_filing_date BETWEEN '1978-01-01' AND '2011-06-30')
-- Daily sample for austria

-- Colombia doesn't have a publn_first_grant type, so we have to use the legal codes
-- ( (publn_auth IN ('CO') AND lec_id = 503)

-- Chinese fee data starts only in year 2010...
-- OR publn_first_grant = 1 AND publn_auth ='CN' AND appln_filing_date IN ('1990-1-7',	'1990-2-9',	'1990-3-14',	'1990-4-13',	'1990-5-23',	'1990-6-24',	'1990-7-11',	'1990-8-23',	'1990-9-6',	'1990-10-11',	'1990-11-27',	'1990-12-21',	'1991-1-25',	'1991-2-13',	'1991-3-22',	'1991-4-1',	'1991-5-2',	'1991-6-19',	'1991-7-11',	'1991-8-16',	'1991-9-11',	'1991-10-11',	'1991-11-6',	'1991-12-27',	'1992-1-4',	'1992-2-4',	'1992-3-16',	'1992-4-6',	'1992-5-24',	'1992-6-17',	'1992-7-10',	'1992-8-16',	'1992-9-14',	'1992-10-8',	'1992-11-24',	'1992-12-1',	'1993-1-19',	'1993-2-1',	'1993-3-7',	'1993-4-17',	'1993-5-20',	'1993-6-14',	'1993-7-20',	'1993-8-2',	'1993-9-24',	'1993-10-21',	'1993-11-16',	'1993-12-24',	'1994-1-25',	'1994-2-3',	'1994-3-17',	'1994-4-21',	'1994-5-11',	'1994-6-11',	'1994-7-2',	'1994-8-6',	'1994-9-4',	'1994-10-17',	'1994-11-18',	'1994-12-11',	'1995-1-1',	'1995-2-7',	'1995-3-16',	'1995-4-23',	'1995-5-12',	'1995-6-25',	'1995-7-17',	'1995-8-12',	'1995-9-20',	'1995-10-23',	'1995-11-28',	'1995-12-7',	'1996-1-18',	'1996-2-2',	'1996-3-4',	'1996-4-4',	'1996-5-3',	'1996-6-28',	'1996-7-4',	'1996-8-12',	'1996-9-9',	'1996-10-3',	'1996-11-7',	'1996-12-21',	'1997-1-5',	'1997-2-17',	'1997-3-19',	'1997-4-6',	'1997-5-4',	'1997-6-7',	'1997-7-8',	'1997-8-27',	'1997-9-25',	'1997-10-11',	'1997-11-3',	'1997-12-13',	'1998-1-4',	'1998-2-4',	'1998-3-17',	'1998-4-26',	'1998-5-7',	'1998-6-6',	'1998-7-9',	'1998-8-9',	'1998-9-1',	'1998-10-11',	'1998-11-11',	'1998-12-10',	'1999-1-10',	'1999-2-20',	'1999-3-15',	'1999-4-7',	'1999-5-17',	'1999-6-14',	'1999-7-10',	'1999-8-4',	'1999-9-26',	'1999-10-7',	'1999-11-8',	'1999-12-7',	'2000-1-3',	'2000-2-23',	'2000-3-2',	'2000-4-7',	'2000-5-6',	'2000-6-26',	'2000-7-19',	'2000-8-19',	'2000-9-7',	'2000-10-6',	'2000-11-20',	'2000-12-14',	'2001-1-22',	'2001-2-17',	'2001-3-3',	'2001-4-6',	'2001-5-27',	'2001-6-16',	'2001-7-7',	'2001-8-5',	'2001-9-17',	'2001-10-27',	'2001-11-7',	'2001-12-23',	'2002-1-15',	'2002-2-22',	'2002-3-3',	'2002-4-27',	'2002-5-25',	'2002-6-22',	'2002-7-7',	'2002-8-10',	'2002-9-19',	'2002-10-24',	'2002-11-16',	'2002-12-14',	'2003-1-9',	'2003-2-3',	'2003-3-4',	'2003-4-8',	'2003-5-8',	'2003-6-13',	'2003-7-18',	'2003-8-16',	'2003-9-13',	'2003-10-3',	'2003-11-5',	'2003-12-10',	'2004-1-1',	'2004-2-16',	'2004-3-28',	'2004-4-10',	'2004-5-2',	'2004-6-14',	'2004-7-13',	'2004-8-21',	'2004-9-17',	'2004-10-7',	'2004-11-22',	'2004-12-3',	'2005-1-25',	'2005-2-4',	'2005-3-1',	'2005-4-22',	'2005-5-1',	'2005-6-5',	'2005-7-14',	'2005-8-1',	'2005-9-10',	'2005-10-5',	'2005-11-5',	'2005-12-28',	'2006-1-11',	'2006-2-5',	'2006-3-13',	'2006-4-11',	'2006-5-26',	'2006-6-11',	'2006-7-28',	'2006-8-13',	'2006-9-24',	'2006-10-18',	'2006-11-11',	'2006-12-11',	'2007-1-12',	'2007-2-15',	'2007-3-18',	'2007-4-2',	'2007-5-6',	'2007-6-14',	'2007-7-21',	'2007-8-21',	'2007-9-11',	'2007-10-14',	'2007-11-4',	'2007-12-19',	'2008-1-1',	'2008-2-19',	'2008-3-23',	'2008-4-14',	'2008-5-22',	'2008-6-17',	'2008-7-13',	'2008-8-16',	'2008-9-7',	'2008-10-18',	'2008-11-10',	'2008-12-26',	'2009-1-26',	'2009-2-12',	'2009-3-8',	'2009-4-24',	'2009-5-6',	'2009-6-19',	'2009-7-17',	'2009-8-11',	'2009-9-20',	'2009-10-28',	'2009-11-16',	'2009-12-25',	'2010-1-21',	'2010-2-9',	'2010-3-13',	'2010-4-3',	'2010-5-14','2010-6-24','2010-7-24','2010-8-23','2010-9-22','2010-9-21','2010-9-20','2010-10-19','2010-11-18','2010-12-19')
-- OR MACRO_VARSMACRO_VARS
-- (publn_first_grant = 1 AND publn_auth = 'JP' AND appln_filing_date IN ('1980-1-13',	'1980-2-20',	'1980-3-9',	'1980-4-19',	'1980-5-17',	'1980-6-19',	'1980-7-22',	'1980-8-11',	'1980-9-25',	'1980-10-16',	'1980-11-4',	'1980-12-25',	'1981-1-10',	'1981-2-3',	'1981-3-20',	'1981-4-28',	'1981-5-22',	'1981-6-5',	'1981-7-5',	'1981-8-27',	'1981-9-12',	'1981-10-2',	'1981-11-14',	'1981-12-23',	'1982-1-22',	'1982-2-16',	'1982-3-13',	'1982-4-27',	'1982-5-27',	'1982-6-14',	'1982-7-24',	'1982-8-1',	'1982-9-24',	'1982-10-25',	'1982-11-24',	'1982-12-3',	'1983-1-15',	'1983-2-16',	'1983-3-6',	'1983-4-21',	'1983-5-12',	'1983-6-27',	'1983-7-9',	'1983-8-5',	'1983-9-27',	'1983-10-7',	'1983-11-5',	'1983-12-26',	'1984-1-9',	'1984-2-4',	'1984-3-1',	'1984-4-22',	'1984-5-18',	'1984-6-25',	'1984-7-4',	'1984-8-13',	'1984-9-24',	'1984-10-8',	'1984-11-19',	'1984-12-6',	'1985-1-4',	'1985-2-9',	'1985-3-26',	'1985-4-16',	'1985-5-7',	'1985-6-17',	'1985-7-3',	'1985-8-19',	'1985-9-12',	'1985-10-21',	'1985-11-21',	'1985-12-25',	'1986-1-20',	'1986-2-26',	'1986-3-10',	'1986-4-11',	'1986-5-6',	'1986-6-12',	'1986-7-16',	'1986-8-20',	'1986-9-25',	'1986-10-15',	'1986-11-8',	'1986-12-21',	'1987-1-8',	'1987-2-5',	'1987-3-23',	'1987-4-8',	'1987-5-21',	'1987-6-10',	'1987-7-24',	'1987-8-19',	'1987-9-10',	'1987-10-11',	'1987-11-4',	'1987-12-3',	'1988-1-10',	'1988-2-15',	'1988-3-28',	'1988-4-19',	'1988-5-9',	'1988-6-10',	'1988-7-11',	'1988-8-7',	'1988-9-20',	'1988-10-16',	'1988-11-2',	'1988-12-17',	'1989-1-28',	'1989-2-25',	'1989-3-21',	'1989-4-22',	'1989-5-21',	'1989-6-14',	'1989-7-13',	'1989-8-26',	'1989-9-5',	'1989-10-10',	'1989-11-10',	'1989-12-9',	'1990-1-7',	'1990-2-9',	'1990-3-14',	'1990-4-13',	'1990-5-23',	'1990-6-24',	'1990-7-11',	'1990-8-23',	'1990-9-6',	'1990-10-11',	'1990-11-27',	'1990-12-21',	'1991-1-25',	'1991-2-13',	'1991-3-22',	'1991-4-1',	'1991-5-2',	'1991-6-19',	'1991-7-11',	'1991-8-16',	'1991-9-11',	'1991-10-11',	'1991-11-6',	'1991-12-27',	'1992-1-4',	'1992-2-4',	'1992-3-16',	'1992-4-6',	'1992-5-24',	'1992-6-17',	'1992-7-10',	'1992-8-16',	'1992-9-14',	'1992-10-8',	'1992-11-24',	'1992-12-1',	'1993-1-19',	'1993-2-1',	'1993-3-7',	'1993-4-17',	'1993-5-20',	'1993-6-14',	'1993-7-20',	'1993-8-2',	'1993-9-24',	'1993-10-21',	'1993-11-16',	'1993-12-24',	'1994-1-25',	'1994-2-3',	'1994-3-17',	'1994-4-21',	'1994-5-11',	'1994-6-11',	'1994-7-2',	'1994-8-6',	'1994-9-4',	'1994-10-17',	'1994-11-18',	'1994-12-11',	'1995-1-1',	'1995-2-7',	'1995-3-16',	'1995-4-23',	'1995-5-12',	'1995-6-25',	'1995-7-17',	'1995-8-12',	'1995-9-20',	'1995-10-23',	'1995-11-28',	'1995-12-7',	'1996-1-18',	'1996-2-2',	'1996-3-4',	'1996-4-4',	'1996-5-3',	'1996-6-28',	'1996-7-4',	'1996-8-12',	'1996-9-9',	'1996-10-3',	'1996-11-7',	'1996-12-21',	'1997-1-5',	'1997-2-17',	'1997-3-19',	'1997-4-6',	'1997-5-4',	'1997-6-7',	'1997-7-8',	'1997-8-27',	'1997-9-25',	'1997-10-11',	'1997-11-3',	'1997-12-13',	'1998-1-4',	'1998-2-4',	'1998-3-17',	'1998-4-26',	'1998-5-7',	'1998-6-6',	'1998-7-9',	'1998-8-9',	'1998-9-1',	'1998-10-11',	'1998-11-11',	'1998-12-10',	'1999-1-10',	'1999-2-20',	'1999-3-15',	'1999-4-7',	'1999-5-17',	'1999-6-14',	'1999-7-10',	'1999-8-4',	'1999-9-26',	'1999-10-7',	'1999-11-8',	'1999-12-7',	'2000-1-3',	'2000-2-23',	'2000-3-2',	'2000-4-7',	'2000-5-6',	'2000-6-26',	'2000-7-19',	'2000-8-19',	'2000-9-7',	'2000-10-6',	'2000-11-20',	'2000-12-14',	'2001-1-22',	'2001-2-17',	'2001-3-3',	'2001-4-6',	'2001-5-27',	'2001-6-16',	'2001-7-7',	'2001-8-5',	'2001-9-17',	'2001-10-27',	'2001-11-7',	'2001-12-23',	'2002-1-15',	'2002-2-22',	'2002-3-3',	'2002-4-27',	'2002-5-25',	'2002-6-22',	'2002-7-7',	'2002-8-10',	'2002-9-19',	'2002-10-24',	'2002-11-16',	'2002-12-14',	'2003-1-9',	'2003-2-3',	'2003-3-4',	'2003-4-8',	'2003-5-8',	'2003-6-13',	'2003-7-18',	'2003-8-16',	'2003-9-13',	'2003-10-3',	'2003-11-5',	'2003-12-10',	'2004-1-1',	'2004-2-16',	'2004-3-28',	'2004-4-10',	'2004-5-2',	'2004-6-14',	'2004-7-13',	'2004-8-21',	'2004-9-17',	'2004-10-7',	'2004-11-22',	'2004-12-3',	'2005-1-25',	'2005-2-4',	'2005-3-1',	'2005-4-22',	'2005-5-1',	'2005-6-5',	'2005-7-14',	'2005-8-1',	'2005-9-10',	'2005-10-5',	'2005-11-5',	'2005-12-28',	'2006-1-11',	'2006-2-5',	'2006-3-13',	'2006-4-11',	'2006-5-26',	'2006-6-11',	'2006-7-28',	'2006-8-13',	'2006-9-24',	'2006-10-18',	'2006-11-11',	'2006-12-11',	'2007-1-12',	'2007-2-15',	'2007-3-18',	'2007-4-2',	'2007-5-6',	'2007-6-14',	'2007-7-21',	'2007-8-21',	'2007-9-11',	'2007-10-14',	'2007-11-4',	'2007-12-19',	'2008-1-1',	'2008-2-19',	'2008-3-23',	'2008-4-14',	'2008-5-22',	'2008-6-17',	'2008-7-13',	'2008-8-16',	'2008-9-7',	'2008-10-18',	'2008-11-10',	'2008-12-26',	'2009-1-26',	'2009-2-12',	'2009-3-8',	'2009-4-24',	'2009-5-6',	'2009-6-19',	'2009-7-17',	'2009-8-11',	'2009-9-20',	'2009-10-28',	'2009-11-16',	'2009-12-25',	'2010-1-21',	'2010-2-9',	'2010-3-13',	'2010-4-3',	'2010-5-14',	'2010-6-24',	'2010-7-24',	'2010-8-24',	'2010-9-24',	'2010-10-21'))
-- OR (publn_first_grant = 1 AND publn_auth IN ('AT','AU','BR','CA','CH','DE','FR','GB','RU','ES','TW','NL','SE','FI','DK','BE','HU','NZ','NO','HK','PT','IE','JP','US') AND appln_filing_date IN ('1980-1-13',	'1980-2-20',	'1980-3-9',	'1980-4-19',	'1980-5-17',	'1980-6-19',	'1980-7-22',	'1980-8-11',	'1980-9-25',	'1980-10-16',	'1980-11-4',	'1980-12-25',	'1981-1-10',	'1981-2-3',	'1981-3-20',	'1981-4-28',	'1981-5-22',	'1981-6-5',	'1981-7-5',	'1981-8-27',	'1981-9-12',	'1981-10-2',	'1981-11-14',	'1981-12-23',	'1982-1-22',	'1982-2-16',	'1982-3-13',	'1982-4-27',	'1982-5-27',	'1982-6-14',	'1982-7-24',	'1982-8-1',	'1982-9-24',	'1982-10-25',	'1982-11-24',	'1982-12-3',	'1983-1-15',	'1983-2-16',	'1983-3-6',	'1983-4-21',	'1983-5-12',	'1983-6-27',	'1983-7-9',	'1983-8-5',	'1983-9-27',	'1983-10-7',	'1983-11-5',	'1983-12-26',	'1984-1-9',	'1984-2-4',	'1984-3-1',	'1984-4-22',	'1984-5-18',	'1984-6-25',	'1984-7-4',	'1984-8-13',	'1984-9-24',	'1984-10-8',	'1984-11-19',	'1984-12-6',	'1985-1-4',	'1985-2-9',	'1985-3-26',	'1985-4-16',	'1985-5-7',	'1985-6-17',	'1985-7-3',	'1985-8-19',	'1985-9-12',	'1985-10-21',	'1985-11-21',	'1985-12-25',	'1986-1-20',	'1986-2-26',	'1986-3-10',	'1986-4-11',	'1986-5-6',	'1986-6-12',	'1986-7-16',	'1986-8-20',	'1986-9-25',	'1986-10-15',	'1986-11-8',	'1986-12-21',	'1987-1-8',	'1987-2-5',	'1987-3-23',	'1987-4-8',	'1987-5-21',	'1987-6-10',	'1987-7-24',	'1987-8-19',	'1987-9-10',	'1987-10-11',	'1987-11-4',	'1987-12-3',	'1988-1-10',	'1988-2-15',	'1988-3-28',	'1988-4-19',	'1988-5-9',	'1988-6-10',	'1988-7-11',	'1988-8-7',	'1988-9-20',	'1988-10-16',	'1988-11-2',	'1988-12-17',	'1989-1-28',	'1989-2-25',	'1989-3-21',	'1989-4-22',	'1989-5-21',	'1989-6-14',	'1989-7-13',	'1989-8-26',	'1989-9-5',	'1989-10-10',	'1989-11-10',	'1989-12-9',	'1990-1-7',	'1990-2-9',	'1990-3-14',	'1990-4-13',	'1990-5-23',	'1990-6-24',	'1990-7-11',	'1990-8-23',	'1990-9-6',	'1990-10-11',	'1990-11-27',	'1990-12-21',	'1991-1-25',	'1991-2-13',	'1991-3-22',	'1991-4-1',	'1991-5-2',	'1991-6-19',	'1991-7-11',	'1991-8-16',	'1991-9-11',	'1991-10-11',	'1991-11-6',	'1991-12-27',	'1992-1-4',	'1992-2-4',	'1992-3-16',	'1992-4-6',	'1992-5-24',	'1992-6-17',	'1992-7-10',	'1992-8-16',	'1992-9-14',	'1992-10-8',	'1992-11-24',	'1992-12-1',	'1993-1-19',	'1993-2-1',	'1993-3-7',	'1993-4-17',	'1993-5-20',	'1993-6-14',	'1993-7-20',	'1993-8-2',	'1993-9-24',	'1993-10-21',	'1993-11-16',	'1993-12-24',	'1994-1-25',	'1994-2-3',	'1994-3-17',	'1994-4-21',	'1994-5-11',	'1994-6-11',	'1994-7-2',	'1994-8-6',	'1994-9-4',	'1994-10-17',	'1994-11-18',	'1994-12-11',	'1995-1-1',	'1995-2-7',	'1995-3-16',	'1995-4-23',	'1995-5-12',	'1995-6-25',	'1995-7-17',	'1995-8-12',	'1995-9-20',	'1995-10-23',	'1995-11-28',	'1995-12-7',	'1996-1-18',	'1996-2-2',	'1996-3-4',	'1996-4-4',	'1996-5-3',	'1996-6-28',	'1996-7-4',	'1996-8-12',	'1996-9-9',	'1996-10-3',	'1996-11-7',	'1996-12-21',	'1997-1-5',	'1997-2-17',	'1997-3-19',	'1997-4-6',	'1997-5-4',	'1997-6-7',	'1997-7-8',	'1997-8-27',	'1997-9-25',	'1997-10-11',	'1997-11-3',	'1997-12-13',	'1998-1-4',	'1998-2-4',	'1998-3-17',	'1998-4-26',	'1998-5-7',	'1998-6-6',	'1998-7-9',	'1998-8-9',	'1998-9-1',	'1998-10-11',	'1998-11-11',	'1998-12-10',	'1999-1-10',	'1999-2-20',	'1999-3-15',	'1999-4-7',	'1999-5-17',	'1999-6-14',	'1999-7-10',	'1999-8-4',	'1999-9-26',	'1999-10-7',	'1999-11-8',	'1999-12-7',	'2000-1-3',	'2000-2-23',	'2000-3-2',	'2000-4-7',	'2000-5-6',	'2000-6-26',	'2000-7-19',	'2000-8-19',	'2000-9-7',	'2000-10-6',	'2000-11-20',	'2000-12-14',	'2001-1-22',	'2001-2-17',	'2001-3-3',	'2001-4-6',	'2001-5-27',	'2001-6-16',	'2001-7-7',	'2001-8-5',	'2001-9-17',	'2001-10-27',	'2001-11-7',	'2001-12-23',	'2002-1-15',	'2002-2-22',	'2002-3-3',	'2002-4-27',	'2002-5-25',	'2002-6-22',	'2002-7-7',	'2002-8-10',	'2002-9-19',	'2002-10-24',	'2002-11-16',	'2002-12-14',	'2003-1-9',	'2003-2-3',	'2003-3-4',	'2003-4-8',	'2003-5-8',	'2003-6-13',	'2003-7-18',	'2003-8-16',	'2003-9-13',	'2003-10-3',	'2003-11-5',	'2003-12-10',	'2004-1-1',	'2004-2-16',	'2004-3-28',	'2004-4-10',	'2004-5-2',	'2004-6-14',	'2004-7-13',	'2004-8-21',	'2004-9-17',	'2004-10-7',	'2004-11-22',	'2004-12-3',	'2005-1-25',	'2005-2-4',	'2005-3-1',	'2005-4-22',	'2005-5-1',	'2005-6-5',	'2005-7-14',	'2005-8-1',	'2005-9-10',	'2005-10-5',	'2005-11-5',	'2005-12-28',	'2006-1-11',	'2006-2-5',	'2006-3-13',	'2006-4-11',	'2006-5-26',	'2006-6-11',	'2006-7-28',	'2006-8-13',	'2006-9-24',	'2006-10-18',	'2006-11-11',	'2006-12-11',	'2007-1-12',	'2007-2-15',	'2007-3-18',	'2007-4-2',	'2007-5-6',	'2007-6-14',	'2007-7-21',	'2007-8-21',	'2007-9-11',	'2007-10-14',	'2007-11-4',	'2007-12-19',	'2008-1-1',	'2008-2-19',	'2008-3-23',	'2008-4-14',	'2008-5-22',	'2008-6-17',	'2008-7-13',	'2008-8-16',	'2008-9-7',	'2008-10-18',	'2008-11-10',	'2008-12-26',	'2009-1-26',	'2009-2-12',	'2009-3-8',	'2009-4-24',	'2009-5-6',	'2009-6-19',	'2009-7-17',	'2009-8-11',	'2009-9-20',	'2009-10-28',	'2009-11-16',	'2009-12-25',	'2010-1-21',	'2010-2-9',	'2010-3-13',	'2010-4-3',	'2010-5-14',	'2010-6-24'))
-- OR (publn_auth IN ('AR') AND appln_filing_date IN ('1984-1-9',	'1984-2-4',	'1984-3-1',	'1984-4-22',	'1984-5-18',	'1984-6-25',	'1984-7-4',	'1984-8-13',	'1984-9-24',	'1984-10-8',	'1984-11-19',	'1984-12-6',	'1985-1-4',	'1985-2-9',	'1985-3-26',	'1985-4-16',	'1985-5-7',	'1985-6-17',	'1985-7-3',	'1985-8-19',	'1985-9-12',	'1985-10-21',	'1985-11-21',	'1985-12-25',	'1986-1-20',	'1986-2-26',	'1986-3-10',	'1986-4-11',	'1986-5-6',	'1986-6-12',	'1986-7-16',	'1986-8-20',	'1986-9-25',	'1986-10-15',	'1986-11-8',	'1986-12-21',	'1987-1-8',	'1987-2-5',	'1987-3-23',	'1987-4-8',	'1987-5-21',	'1987-6-10',	'1987-7-24',	'1987-8-19',	'1987-9-10',	'1987-10-11',	'1987-11-4',	'1987-12-3',	'1988-1-10',	'1988-2-15',	'1988-3-28',	'1988-4-19',	'1988-5-9',	'1988-6-10',	'1988-7-11',	'1988-8-7',	'1988-9-20',	'1988-10-16',	'1988-11-2',	'1988-12-17',	'1989-1-28',	'1989-2-25',	'1989-3-21',	'1989-4-22',	'1989-5-21',	'1989-6-14',	'1989-7-13',	'1989-8-26',	'1989-9-5',	'1989-10-10',	'1989-11-10',	'1989-12-9',	'1990-1-7',	'1990-2-9',	'1990-3-14',	'1990-4-13',	'1990-5-23',	'1990-6-24',	'1990-7-11',	'1990-8-23',	'1990-9-6',	'1990-10-11',	'1990-11-27',	'1990-12-21',	'1991-1-25',	'1991-2-13',	'1991-3-22',	'1991-4-1',	'1991-5-2',	'1991-6-19',	'1991-7-11',	'1991-8-16',	'1991-9-11',	'1991-10-11',	'1991-11-6',	'1991-12-27',	'1992-1-4',	'1992-2-4',	'1992-3-16',	'1992-4-6',	'1992-5-24',	'1992-6-17',	'1992-7-10',	'1992-8-16',	'1992-9-14',	'1992-10-8',	'1992-11-24',	'1992-12-1',	'1993-1-19',	'1993-2-1',	'1993-3-7',	'1993-4-17',	'1993-5-20',	'1993-6-14',	'1993-7-20',	'1993-8-2',	'1993-9-24',	'1993-10-21',	'1993-11-16',	'1993-12-24',	'1994-1-25',	'1994-2-3',	'1994-3-17',	'1994-4-21',	'1994-5-11',	'1994-6-11',	'1994-7-2',	'1994-8-6',	'1994-9-4',	'1994-10-17',	'1994-11-18',	'1994-12-11',	'1995-1-1',	'1995-2-7',	'1995-3-16',	'1995-4-23',	'1995-5-12',	'1995-6-25',	'1995-7-17',	'1995-8-12',	'1995-9-20',	'1995-10-23',	'1995-11-28',	'1995-12-7',	'1996-1-18',	'1996-2-2',	'1996-3-4',	'1996-4-4',	'1996-5-3',	'1996-6-28',	'1996-7-4',	'1996-8-12',	'1996-9-9',	'1996-10-3',	'1996-11-7',	'1996-12-21',	'1997-1-5',	'1997-2-17',	'1997-3-19',	'1997-4-6',	'1997-5-4',	'1997-6-7',	'1997-7-8',	'1997-8-27',	'1997-9-25',	'1997-10-11',	'1997-11-3',	'1997-12-13',	'1998-1-4',	'1998-2-4',	'1998-3-17',	'1998-4-26',	'1998-5-7',	'1998-6-6',	'1998-7-9',	'1998-8-9',	'1998-9-1',	'1998-10-11',	'1998-11-11',	'1998-12-10',	'1999-1-10',	'1999-2-20',	'1999-3-15',	'1999-4-7',	'1999-5-17',	'1999-6-14',	'1999-7-10',	'1999-8-4',	'1999-9-26',	'1999-10-7',	'1999-11-8',	'1999-12-7',	'2000-1-3',	'2000-2-23',	'2000-3-2',	'2000-4-7',	'2000-5-6',	'2000-6-26',	'2000-7-19',	'2000-8-19',	'2000-9-7',	'2000-10-6',	'2000-11-20',	'2000-12-14',	'2001-1-22',	'2001-2-17',	'2001-3-3',	'2001-4-6',	'2001-5-27',	'2001-6-16',	'2001-7-7',	'2001-8-5',	'2001-9-17',	'2001-10-27',	'2001-11-7',	'2001-12-23',	'2002-1-15',	'2002-2-22',	'2002-3-3',	'2002-4-27',	'2002-5-25',	'2002-6-22',	'2002-7-7',	'2002-8-10',	'2002-9-19',	'2002-10-24',	'2002-11-16',	'2002-12-14',	'2003-1-9',	'2003-2-3',	'2003-3-4',	'2003-4-8',	'2003-5-8',	'2003-6-13',	'2003-7-18',	'2003-8-16',	'2003-9-13',	'2003-10-3',	'2003-11-5',	'2003-12-10',	'2004-1-1',	'2004-2-16',	'2004-3-28',	'2004-4-10',	'2004-5-2',	'2004-6-14',	'2004-7-13',	'2004-8-21',	'2004-9-17',	'2004-10-7',	'2004-11-22',	'2004-12-3',	'2005-1-25',	'2005-2-4',	'2005-3-1',	'2005-4-22',	'2005-5-1',	'2005-6-5',	'2005-7-14',	'2005-8-1',	'2005-9-10',	'2005-10-5',	'2005-11-5',	'2005-12-28',	'2006-1-11',	'2006-2-5',	'2006-3-13',	'2006-4-11',	'2006-5-26',	'2006-6-11',	'2006-7-28',	'2006-8-13',	'2006-9-24',	'2006-10-18',	'2006-11-11',	'2006-12-11',	'2007-1-12',	'2007-2-15',	'2007-3-18',	'2007-4-2',	'2007-5-6',	'2007-6-14',	'2007-7-21',	'2007-8-21',	'2007-9-11',	'2007-10-14',	'2007-11-4',	'2007-12-19',	'2008-1-1',	'2008-2-19',	'2008-3-23',	'2008-4-14',	'2008-5-22',	'2008-6-17',	'2008-7-13',	'2008-8-16',	'2008-9-7',	'2008-10-18',	'2008-11-10',	'2008-12-26',	'2009-1-26',	'2009-2-12',	'2009-3-8',	'2009-4-24',	'2009-5-6',	'2009-6-19',	'2009-7-17',	'2009-8-11',	'2009-9-20',	'2009-10-28',	'2009-11-16',	'2009-12-25',	'2010-1-21',	'2010-2-9',	'2010-3-13',	'2010-4-3',	'2010-5-14',	'2010-6-24'))
-- OR (publn_first_grant = 1 AND publn_auth IN ('GR','CU','SV','CR','EE','LT','SK')
-- OR (publn_first_grant = 1 AND publn_auth = 'MD')
-- OR (publn_auth IN ('PL','CZ') AND appln_filing_date IN ('1990-1-7',	'1990-2-9',	'1990-3-14',	'1990-4-13',	'1990-5-23',	'1990-6-24',	'1990-7-11',	'1990-8-23',	'1990-9-6',	'1990-10-11',	'1990-11-27',	'1990-12-21',	'1991-1-25',	'1991-2-13',	'1991-3-22',	'1991-4-1',	'1991-5-2',	'1991-6-19',	'1991-7-11',	'1991-8-16',	'1991-9-11',	'1991-10-11',	'1991-11-6',	'1991-12-27',	'1992-1-4',	'1992-2-4',	'1992-3-16',	'1992-4-6',	'1992-5-24',	'1992-6-17',	'1992-7-10',	'1992-8-16',	'1992-9-14',	'1992-10-8',	'1992-11-24',	'1992-12-1',	'1993-1-19',	'1993-2-1',	'1993-3-7',	'1993-4-17',	'1993-5-20',	'1993-6-14',	'1993-7-20',	'1993-8-2',	'1993-9-24',	'1993-10-21',	'1993-11-16',	'1993-12-24',	'1994-1-25',	'1994-2-3',	'1994-3-17',	'1994-4-21',	'1994-5-11',	'1994-6-11',	'1994-7-2',	'1994-8-6',	'1994-9-4',	'1994-10-17',	'1994-11-18',	'1994-12-11',	'1995-1-1',	'1995-2-7',	'1995-3-16',	'1995-4-23',	'1995-5-12',	'1995-6-25',	'1995-7-17',	'1995-8-12',	'1995-9-20',	'1995-10-23',	'1995-11-28',	'1995-12-7',	'1996-1-18',	'1996-2-2',	'1996-3-4',	'1996-4-4',	'1996-5-3',	'1996-6-28',	'1996-7-4',	'1996-8-12',	'1996-9-9',	'1996-10-3',	'1996-11-7',	'1996-12-21',	'1997-1-5',	'1997-2-17',	'1997-3-19',	'1997-4-6',	'1997-5-4',	'1997-6-7',	'1997-7-8',	'1997-8-27',	'1997-9-25',	'1997-10-11',	'1997-11-3',	'1997-12-13',	'1998-1-4',	'1998-2-4',	'1998-3-17',	'1998-4-26',	'1998-5-7',	'1998-6-6',	'1998-7-9',	'1998-8-9',	'1998-9-1',	'1998-10-11',	'1998-11-11',	'1998-12-10',	'1999-1-10',	'1999-2-20',	'1999-3-15',	'1999-4-7',	'1999-5-17',	'1999-6-14',	'1999-7-10',	'1999-8-4',	'1999-9-26',	'1999-10-7',	'1999-11-8',	'1999-12-7',	'2000-1-3',	'2000-2-23',	'2000-3-2',	'2000-4-7',	'2000-5-6',	'2000-6-26',	'2000-7-19',	'2000-8-19',	'2000-9-7',	'2000-10-6',	'2000-11-20',	'2000-12-14',	'2001-1-22',	'2001-2-17',	'2001-3-3',	'2001-4-6',	'2001-5-27',	'2001-6-16',	'2001-7-7',	'2001-8-5',	'2001-9-17',	'2001-10-27',	'2001-11-7',	'2001-12-23',	'2002-1-15',	'2002-2-22',	'2002-3-3',	'2002-4-27',	'2002-5-25',	'2002-6-22',	'2002-7-7',	'2002-8-10',	'2002-9-19',	'2002-10-24',	'2002-11-16',	'2002-12-14',	'2003-1-9',	'2003-2-3',	'2003-3-4',	'2003-4-8',	'2003-5-8',	'2003-6-13',	'2003-7-18',	'2003-8-16',	'2003-9-13',	'2003-10-3',	'2003-11-5',	'2003-12-10',	'2004-1-1',	'2004-2-16',	'2004-3-28',	'2004-4-10',	'2004-5-2',	'2004-6-14',	'2004-7-13',	'2004-8-21',	'2004-9-17',	'2004-10-7',	'2004-11-22',	'2004-12-3',	'2005-1-25',	'2005-2-4',	'2005-3-1',	'2005-4-22',	'2005-5-1',	'2005-6-5',	'2005-7-14',	'2005-8-1',	'2005-9-10',	'2005-10-5',	'2005-11-5',	'2005-12-28',	'2006-1-11',	'2006-2-5',	'2006-3-13',	'2006-4-11',	'2006-5-26',	'2006-6-11',	'2006-7-28',	'2006-8-13',	'2006-9-24',	'2006-10-18',	'2006-11-11',	'2006-12-11',	'2007-1-12',	'2007-2-15',	'2007-3-18',	'2007-4-2',	'2007-5-6',	'2007-6-14',	'2007-7-21',	'2007-8-21',	'2007-9-11',	'2007-10-14',	'2007-11-4',	'2007-12-19',	'2008-1-1',	'2008-2-19',	'2008-3-23',	'2008-4-14',	'2008-5-22',	'2008-6-17',	'2008-7-13',	'2008-8-16',	'2008-9-7',	'2008-10-18',	'2008-11-10',	'2008-12-26',	'2009-1-26',	'2009-2-12',	'2009-3-8',	'2009-4-24',	'2009-5-6',	'2009-6-19',	'2009-7-17',	'2009-8-11',	'2009-9-20',	'2009-10-28',	'2009-11-16',	'2009-12-25',	'2010-1-21',	'2010-2-9',	'2010-3-13',	'2010-4-3',	'2010-5-14',	'2010-6-24'))
-- Grants are ambiguous for israeli documents pre-2013, so include all docs, 2103 is grant code
-- 
(publn_auth = 'IL' AND publn_kind = 'A' AND lec_id IN (2103,2095,2116) AND publn_date >= '1984-10-31')


)
AND eeepat.PERSON_CTRY_CODE NOT IN ('  ',' ','','','@@')


-- Filter out some of the od ones



/*
*/
) somePats

-- STRAIGHT_JOIN MACRO_VARS mv ON (somePats.appln_auth = mv.country AND year(somePats.appln_filing_date) = mv.year)

GROUP BY patentRight
INTO OUTFILE '/usr/local/mysql/data/IL.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'