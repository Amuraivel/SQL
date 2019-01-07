
DROP PROCEDURE IF EXISTS feeUpdate;
delimiter //
CREATE PROCEDURE feeUpdate(cc CHAR(2),cohortYear INT(11)) -- ,monat INT(11))
BEGIN
SET SQL_SAFE_UPDATES = 0;
UPDATE patent_families pf
JOIN 
(SELECT appln_id, 
-- CAST THE VALUE TO USD
Y20/IFNULL(fxUSD20,fxUSDmax) AS feeUSD20,
Y19/IFNULL(fxUSD19,fxUSDmax) AS feeUSD19,
Y18/IFNULL(fxUSD18,fxUSDmax) AS feeUSD18,
Y16/IFNULL(fxUSD17,fxUSDmax) AS feeUSD17,
Y16/IFNULL(fxUSD16,fxUSDmax) AS feeUSD16,
Y15/IFNULL(fxUSD15,fxUSDmax) AS feeUSD15,
Y14/IFNULL(fxUSD14,fxUSDmax) AS feeUSD14,
Y13/IFNULL(fxUSD13,fxUSDmax) AS feeUSD13,
Y12/IFNULL(fxUSD12,fxUSDmax) AS feeUSD12,
Y11/IFNULL(fxUSD11,fxUSDmax) AS feeUSD11,
Y10/IFNULL(fxUSD10,fxUSDmax) AS feeUSD10,
Y9/IFNULL(fxUSD9,fxUSDmax) AS feeUSD9,
Y8/IFNULL(fxUSD8,fxUSDmax) AS feeUSD8,
Y7/IFNULL(fxUSD7,fxUSDmax) AS feeUSD7,
Y6/IFNULL(fxUSD6,fxUSDmax) AS feeUSD6,
Y5/IFNULL(fxUSD5,fxUSDmax) AS feeUSD5,
Y4/IFNULL(fxUSD4,fxUSDmax) AS feeUSD4,
Y3/IFNULL(fxUSD3,fxUSDmax) AS feeUSD3,
Y2/IFNULL(fxUSD2,fxUSDmax) AS feeUSD2,
Y1/IFNULL(fxUSD1,fxUSDmax) AS feeUSD1

FROM patent_families fams
LEFT OUTER JOIN (SELECT Y20, entryIntoForce AS entryIntoForce20, endInForce AS endInForce20, fee_auth AS fee_auth20, currency AS currency20 FROM PAT_FEES WHERE feeClass='reg') AS f20 ON ((DATE_ADD(appln_filing_date, INTERVAL 20 YEAR) BETWEEN f20.entryIntoForce20 AND f20.endInForce20) AND (jurisdiction = f20.fee_auth20))
LEFT OUTER JOIN (SELECT Y19, entryIntoForce AS entryIntoForce19, endInForce AS endInForce19, fee_auth AS fee_auth19, currency AS currency19 FROM PAT_FEES WHERE feeClass='reg') AS f19 ON ((DATE_ADD(appln_filing_date, INTERVAL 19 YEAR) BETWEEN f19.entryIntoForce19 AND f19.endInForce19) AND (jurisdiction = f19.fee_auth19))
LEFT OUTER JOIN (SELECT Y18, entryIntoForce AS entryIntoForce18, endInForce AS endInForce18, fee_auth AS fee_auth18, currency AS currency18 FROM PAT_FEES WHERE feeClass='reg') AS f18 ON ((DATE_ADD(appln_filing_date, INTERVAL 18 YEAR) BETWEEN f18.entryIntoForce18 AND f18.endInForce18) AND (jurisdiction = f18.fee_auth18))
LEFT OUTER JOIN (SELECT Y17, entryIntoForce AS entryIntoForce17, endInForce AS endInForce17, fee_auth AS fee_auth17, currency AS currency17 FROM PAT_FEES WHERE feeClass='reg') AS f17 ON ((DATE_ADD(appln_filing_date, INTERVAL 17 YEAR) BETWEEN f17.entryIntoForce17 AND f17.endInForce17) AND (jurisdiction = f17.fee_auth17))
LEFT OUTER JOIN (SELECT Y16, entryIntoForce AS entryIntoForce16, endInForce AS endInForce16, fee_auth AS fee_auth16, currency AS currency16 FROM PAT_FEES WHERE feeClass='reg') AS f16 ON ((DATE_ADD(appln_filing_date, INTERVAL 16 YEAR) BETWEEN f16.entryIntoForce16 AND f16.endInForce16) AND (jurisdiction = f16.fee_auth16))
LEFT OUTER JOIN (SELECT Y15, entryIntoForce AS entryIntoForce15, endInForce AS endInForce15, fee_auth AS fee_auth15, currency AS currency15 FROM PAT_FEES WHERE feeClass='reg') AS f15 ON ((DATE_ADD(appln_filing_date, INTERVAL 15 YEAR) BETWEEN f15.entryIntoForce15 AND f15.endInForce15) AND (jurisdiction = f15.fee_auth15))
LEFT OUTER JOIN (SELECT Y14, entryIntoForce AS entryIntoForce14, endInForce AS endInForce14, fee_auth AS fee_auth14, currency AS currency14 FROM PAT_FEES WHERE feeClass='reg') AS f14 ON ((DATE_ADD(appln_filing_date, INTERVAL 14 YEAR) BETWEEN f14.entryIntoForce14 AND f14.endInForce14) AND (jurisdiction = f14.fee_auth14))
LEFT OUTER JOIN (SELECT Y13, entryIntoForce AS entryIntoForce13, endInForce AS endInForce13, fee_auth AS fee_auth13, currency AS currency13 FROM PAT_FEES WHERE feeClass='reg') AS f13 ON ((DATE_ADD(appln_filing_date, INTERVAL 13 YEAR) BETWEEN f13.entryIntoForce13 AND f13.endInForce13) AND (jurisdiction = f13.fee_auth13))
LEFT OUTER JOIN (SELECT Y12, entryIntoForce AS entryIntoForce12, endInForce AS endInForce12, fee_auth AS fee_auth12, currency AS currency12 FROM PAT_FEES WHERE feeClass='reg') AS f12 ON ((DATE_ADD(appln_filing_date, INTERVAL 12 YEAR) BETWEEN f12.entryIntoForce12 AND f12.endInForce12) AND (jurisdiction = f12.fee_auth12))
LEFT OUTER JOIN (SELECT Y11, entryIntoForce AS entryIntoForce11, endInForce AS endInForce11, fee_auth AS fee_auth11, currency AS currency11 FROM PAT_FEES WHERE feeClass='reg') AS f11 ON ((DATE_ADD(appln_filing_date, INTERVAL 11 YEAR) BETWEEN f11.entryIntoForce11 AND f11.endInForce11) AND (jurisdiction = f11.fee_auth11))
LEFT OUTER JOIN (SELECT Y10, entryIntoForce AS entryIntoForce10, endInForce AS endInForce10, fee_auth AS fee_auth10, currency AS currency10 FROM PAT_FEES WHERE feeClass='reg') AS f10 ON ((DATE_ADD(appln_filing_date, INTERVAL 10 YEAR) BETWEEN f10.entryIntoForce10 AND f10.endInForce10) AND (jurisdiction = f10.fee_auth10))
LEFT OUTER JOIN (SELECT Y9, entryIntoForce AS entryIntoForce9, endInForce AS endInForce9, fee_auth AS fee_auth9, currency AS currency9 FROM PAT_FEES WHERE feeClass='reg') AS f9 ON ((DATE_ADD(appln_filing_date, INTERVAL 9 YEAR) BETWEEN f9.entryIntoForce9 AND f9.endInForce9) AND (jurisdiction = f9.fee_auth9))
LEFT OUTER JOIN (SELECT Y8, entryIntoForce AS entryIntoForce8, endInForce AS endInForce8, fee_auth AS fee_auth8, currency AS currency8 FROM PAT_FEES WHERE feeClass='reg') AS f8 ON ((DATE_ADD(appln_filing_date, INTERVAL 8 YEAR) BETWEEN f8.entryIntoForce8 AND f8.endInForce8) AND (jurisdiction = f8.fee_auth8))
LEFT OUTER JOIN (SELECT Y7, entryIntoForce AS entryIntoForce7, endInForce AS endInForce7, fee_auth AS fee_auth7, currency AS currency7 FROM PAT_FEES WHERE feeClass='reg') AS f7 ON ((DATE_ADD(appln_filing_date, INTERVAL 7 YEAR) BETWEEN f7.entryIntoForce7 AND f7.endInForce7) AND (jurisdiction = f7.fee_auth7))
LEFT OUTER JOIN (SELECT Y6, entryIntoForce AS entryIntoForce6, endInForce AS endInForce6, fee_auth AS fee_auth6, currency AS currency6 FROM PAT_FEES WHERE feeClass='reg') AS f6 ON ((DATE_ADD(appln_filing_date, INTERVAL 6 YEAR) BETWEEN f6.entryIntoForce6 AND f6.endInForce6) AND (jurisdiction = f6.fee_auth6))
LEFT OUTER JOIN (SELECT Y5, entryIntoForce AS entryIntoForce5, endInForce AS endInForce5, fee_auth AS fee_auth5, currency AS currency5 FROM PAT_FEES WHERE feeClass='reg') AS f5 ON ((DATE_ADD(appln_filing_date, INTERVAL 5 YEAR) BETWEEN f5.entryIntoForce5 AND f5.endInForce5) AND (jurisdiction = f5.fee_auth5))
LEFT OUTER JOIN (SELECT Y4, entryIntoForce AS entryIntoForce4, endInForce AS endInForce4, fee_auth AS fee_auth4, currency AS currency4 FROM PAT_FEES WHERE feeClass='reg') AS f4 ON ((DATE_ADD(appln_filing_date, INTERVAL 4 YEAR) BETWEEN f4.entryIntoForce4 AND f4.endInForce4) AND (jurisdiction = f4.fee_auth4))
LEFT OUTER JOIN (SELECT Y3, entryIntoForce AS entryIntoForce3, endInForce AS endInForce3, fee_auth AS fee_auth3, currency AS currency3 FROM PAT_FEES WHERE feeClass='reg') AS f3 ON ((DATE_ADD(appln_filing_date, INTERVAL 3 YEAR) BETWEEN f3.entryIntoForce3 AND f3.endInForce3) AND (jurisdiction = f3.fee_auth3))
LEFT OUTER JOIN (SELECT Y2, entryIntoForce AS entryIntoForce2, endInForce AS endInForce2, fee_auth AS fee_auth2, currency AS currency2 FROM PAT_FEES WHERE feeClass='reg') AS f2 ON ((DATE_ADD(appln_filing_date, INTERVAL 2 YEAR) BETWEEN f2.entryIntoForce2 AND f2.endInForce2) AND (jurisdiction = f2.fee_auth2))
LEFT OUTER JOIN (SELECT Y1, entryIntoForce AS entryIntoForce1, endInForce AS endInForce1, fee_auth AS fee_auth1, currency AS currency1 FROM PAT_FEES WHERE feeClass='reg') AS f1 ON ((DATE_ADD(appln_filing_date, INTERVAL 1 YEAR) BETWEEN f1.entryIntoForce1 AND f1.endInForce1) AND (jurisdiction = f1.fee_auth1))

LEFT OUTER JOIN (SELECT fxUSD AS fxUSD20,currency AS currency20, year AS fxYear20, month AS fxMonth20 FROM FX) fx20 ON ((f20.currency20 = fx20.currency20) AND (fx20.fxYear20 = (cohort+20) AND fx20.fxMonth20 = fams.cohortMonth))
LEFT OUTER JOIN (SELECT fxUSD AS fxUSD19,currency AS currency19, year AS fxYear19, month AS fxMonth19 FROM FX) fx19 ON ((f19.currency19 = fx19.currency19) AND (fx19.fxYear19 = (cohort+19) AND fx19.fxMonth19 = fams.cohortMonth))
LEFT OUTER JOIN (SELECT fxUSD AS fxUSD18,currency AS currency18, year AS fxYear18, month AS fxMonth18 FROM FX) fx18 ON ((f18.currency18 = fx18.currency18) AND (fx18.fxYear18 = (cohort+18) AND fx18.fxMonth18 = fams.cohortMonth))
LEFT OUTER JOIN (SELECT fxUSD AS fxUSD17,currency AS currency17, year AS fxYear17, month AS fxMonth17 FROM FX) fx17 ON ((f17.currency17 = fx17.currency17) AND (fx17.fxYear17 = (cohort+17) AND fx17.fxMonth17 = fams.cohortMonth))
LEFT OUTER JOIN (SELECT fxUSD AS fxUSD16,currency AS currency16, year AS fxYear16, month AS fxMonth16 FROM FX) fx16 ON ((f16.currency16 = fx16.currency16) AND (fx16.fxYear16 = (cohort+16) AND fx16.fxMonth16 = fams.cohortMonth))
LEFT OUTER JOIN (SELECT fxUSD AS fxUSD15,currency AS currency15, year AS fxYear15, month AS fxMonth15 FROM FX) fx15 ON ((f15.currency15 = fx15.currency15) AND (fx15.fxYear15 = (cohort+15) AND fx15.fxMonth15 = fams.cohortMonth))
LEFT OUTER JOIN (SELECT fxUSD AS fxUSD14,currency AS currency14, year AS fxYear14, month AS fxMonth14 FROM FX) fx14 ON ((f14.currency14 = fx14.currency14) AND (fx14.fxYear14 = (cohort+14) AND fx14.fxMonth14 = fams.cohortMonth))
LEFT OUTER JOIN (SELECT fxUSD AS fxUSD13,currency AS currency13, year AS fxYear13, month AS fxMonth13 FROM FX) fx13 ON ((f13.currency13 = fx13.currency13) AND (fx13.fxYear13 = (cohort+13) AND fx13.fxMonth13 = fams.cohortMonth))
LEFT OUTER JOIN (SELECT fxUSD AS fxUSD12,currency AS currency12, year AS fxYear12, month AS fxMonth12 FROM FX) fx12 ON ((f12.currency12 = fx12.currency12) AND (fx12.fxYear12 = (cohort+12) AND fx12.fxMonth12 = fams.cohortMonth))
LEFT OUTER JOIN (SELECT fxUSD AS fxUSD11,currency AS currency11, year AS fxYear11, month AS fxMonth11 FROM FX) fx11 ON ((f11.currency11 = fx11.currency11) AND (fx11.fxYear11 = (cohort+11) AND fx11.fxMonth11 = fams.cohortMonth))
LEFT OUTER JOIN (SELECT fxUSD AS fxUSD10,currency AS currency10, year AS fxYear10, month AS fxMonth10 FROM FX) fx10 ON ((f10.currency10 = fx10.currency10) AND (fx10.fxYear10 = (cohort+10) AND fx10.fxMonth10 = fams.cohortMonth))
LEFT OUTER JOIN (SELECT fxUSD AS fxUSD9,currency AS currency9, year AS fxYear9, month AS fxMonth9 FROM FX) fx9 ON ((f9.currency9 = fx9.currency9) AND (fx9.fxYear9 = (cohort+9) AND fx9.fxMonth9 = fams.cohortMonth))
LEFT OUTER JOIN (SELECT fxUSD AS fxUSD8,currency AS currency8, year AS fxYear8, month AS fxMonth8 FROM FX) fx8 ON ((f8.currency8 = fx8.currency8) AND (fx8.fxYear8 = (cohort+8) AND fx8.fxMonth8 = fams.cohortMonth))
LEFT OUTER JOIN (SELECT fxUSD AS fxUSD7,currency AS currency7, year AS fxYear7, month AS fxMonth7 FROM FX) fx7 ON ((f7.currency7 = fx7.currency7) AND (fx7.fxYear7 = (cohort+7) AND fx7.fxMonth7 = fams.cohortMonth))
LEFT OUTER JOIN (SELECT fxUSD AS fxUSD6,currency AS currency6, year AS fxYear6, month AS fxMonth6 FROM FX) fx6 ON ((f6.currency6 = fx6.currency6) AND (fx6.fxYear6 = (cohort+6) AND fx6.fxMonth6 = fams.cohortMonth))
LEFT OUTER JOIN (SELECT fxUSD AS fxUSD5,currency AS currency5, year AS fxYear5, month AS fxMonth5 FROM FX) fx5 ON ((f5.currency5 = fx5.currency5) AND (fx5.fxYear5 = (cohort+5) AND fx5.fxMonth5 = fams.cohortMonth))
LEFT OUTER JOIN (SELECT fxUSD AS fxUSD4,currency AS currency4, year AS fxYear4, month AS fxMonth4 FROM FX) fx4 ON ((f4.currency4 = fx4.currency4) AND (fx4.fxYear4 = (cohort+4) AND fx4.fxMonth4 = fams.cohortMonth))
LEFT OUTER JOIN (SELECT fxUSD AS fxUSD3,currency AS currency3, year AS fxYear3, month AS fxMonth3 FROM FX) fx3 ON ((f3.currency3 = fx3.currency3) AND (fx3.fxYear3 = (cohort+3) AND fx3.fxMonth3 = fams.cohortMonth))
LEFT OUTER JOIN (SELECT fxUSD AS fxUSD2,currency AS currency2, year AS fxYear2, month AS fxMonth2 FROM FX) fx2 ON ((f2.currency2 = fx2.currency2) AND (fx2.fxYear2 = (cohort+2) AND fx2.fxMonth2 = fams.cohortMonth))
LEFT OUTER JOIN (SELECT fxUSD AS fxUSD1,currency AS currency1, year AS fxYear1, month AS fxMonth1 FROM FX) fx1 ON ((f1.currency1 = fx1.currency1) AND (fx1.fxYear1 = (cohort+1) AND fx1.fxMonth1 = fams.cohortMonth))

-- FALL BACK CURRENCY IF OUT OF SAMPLE
JOIN (
(SELECT fxUSD AS fxUSDmax,currencyMax FROM FX fx JOIN 
(SELECT currency AS currencyMax, MAX(date) AS dateMax FROM FX WHERE fxUSD IS NOT NULL OR fxUSD != 0 GROUP BY currency) maxCur 
ON((maxCur.currencyMax = fx.currency) AND (maxCur.dateMax=fx.date)))
) j ON(f20.currency20 = j.currencyMax)
WHERE
fams.jurisdiction = cc
AND fams.cohort = cohortYear) t USING (appln_id)
SET 
pf.FEE1 = ROUND(feeUSD1,2),
pf.FEE2 = ROUND(feeUSD2,2),
pf.FEE3 = ROUND(feeUSD3,2),
pf.FEE4 = ROUND(feeUSD4,2),
pf.FEE5 = ROUND(feeUSD5,2),
pf.FEE6 = ROUND(feeUSD6,2),
pf.FEE7 = ROUND(feeUSD7,2),
pf.FEE8 = ROUND(feeUSD8,2),
pf.FEE9 = ROUND(feeUSD9,2),
pf.FEE10 = ROUND(feeUSD10,2),
pf.FEE11 = ROUND(feeUSD11,2),
pf.FEE12 = ROUND(feeUSD12,2),
pf.FEE13 = ROUND(feeUSD13,2),
pf.FEE14 = ROUND(feeUSD14,2),
pf.FEE15 = ROUND(feeUSD15,2),
pf.FEE16 = ROUND(feeUSD16,2),
pf.FEE17 = ROUND(feeUSD17,2),
pf.FEE18 = ROUND(feeUSD18,2),
pf.FEE19 = ROUND(feeUSD19,2),
pf.FEE20 = ROUND(feeUSD20,2);

END//
COMMIT;
DELIMITER ;
COMMIT;

CALL feeUpdate('CH',1993);


