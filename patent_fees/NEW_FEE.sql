SELECT 
ROUND(f1.Y1/fx1.fxUSD,2) AS FEE1,  
ROUND(f2.Y2/fx2.fxUSD,2) AS FEE2, 
ROUND(f3.Y3/fx3.fxUSD,2) AS FEE3,  
ROUND(f4.Y4/fx4.fxUSD,2) AS FEE4,  
ROUND(f5.Y5/fx5.fxUSD,2) AS FEE5,  
ROUND(f6.Y6/fx6.fxUSD,2) AS FEE6,  
ROUND(f7.Y7/fx7.fxUSD,2) AS FEE7,  
ROUND(f8.Y8/fx8.fxUSD,2) AS FEE8,  
ROUND(f9.Y9/fx9.fxUSD,2) AS FEE9,  
ROUND(f10.Y10/fx10.fxUSD,2) AS FEE10,  
ROUND(f11.Y11/fx11.fxUSD,2) AS FEE11,  
ROUND(f12.Y12/fx12.fxUSD,2) AS FEE12,  
ROUND(f13.Y13/fx13.fxUSD,2) AS FEE13,   
ROUND(f14.Y14/fx14.fxUSD,2) AS FEE14,  
ROUND(f15.Y15/fx15.fxUSD,2) AS FEE15,  
ROUND(f16.Y16/fx16.fxUSD,2) AS FEE16,  
ROUND(f17.Y17/fx17.fxUSD,2) AS FEE17,  
ROUND(f18.Y18/fx18.fxUSD,2) AS FEE18,  
ROUND(f19.Y19/fx19.fxUSD,2) AS FEE19,  
ROUND(f20.Y20/fx20.fxUSD,2) AS FEE20  


FROM patent_families 
STRAIGHT_JOIN PAT_FEES f1 ON ((DATE_ADD(appln_filing_date, INTERVAL 1 YEAR) BETWEEN f1.entryIntoForce AND f1.endInForce) AND (jurisdiction = f1.fee_auth))
STRAIGHT_JOIN PAT_FEES f2 ON ((DATE_ADD(appln_filing_date, INTERVAL 2 YEAR) BETWEEN f2.entryIntoForce AND f2.endInForce) AND (jurisdiction = f2.fee_auth))
STRAIGHT_JOIN PAT_FEES f3 ON ((DATE_ADD(appln_filing_date, INTERVAL 3 YEAR) BETWEEN f3.entryIntoForce AND f3.endInForce) AND (jurisdiction = f3.fee_auth))
STRAIGHT_JOIN PAT_FEES f4 ON ((DATE_ADD(appln_filing_date, INTERVAL 4 YEAR) BETWEEN f4.entryIntoForce AND f4.endInForce) AND (jurisdiction = f4.fee_auth))
STRAIGHT_JOIN PAT_FEES f5 ON ((DATE_ADD(appln_filing_date, INTERVAL 5 YEAR) BETWEEN f5.entryIntoForce AND f5.endInForce) AND (jurisdiction = f5.fee_auth))
STRAIGHT_JOIN PAT_FEES f6 ON ((DATE_ADD(appln_filing_date, INTERVAL 6 YEAR) BETWEEN f6.entryIntoForce AND f6.endInForce) AND (jurisdiction = f6.fee_auth))
STRAIGHT_JOIN PAT_FEES f7 ON ((DATE_ADD(appln_filing_date, INTERVAL 7 YEAR) BETWEEN f7.entryIntoForce AND f7.endInForce) AND (jurisdiction = f7.fee_auth))
STRAIGHT_JOIN PAT_FEES f8 ON ((DATE_ADD(appln_filing_date, INTERVAL 8 YEAR) BETWEEN f8.entryIntoForce AND f8.endInForce) AND (jurisdiction = f8.fee_auth))
STRAIGHT_JOIN PAT_FEES f9 ON ((DATE_ADD(appln_filing_date, INTERVAL 9 YEAR) BETWEEN f9.entryIntoForce AND f9.endInForce) AND (jurisdiction = f9.fee_auth))
STRAIGHT_JOIN PAT_FEES f10 ON ((DATE_ADD(appln_filing_date, INTERVAL 10 YEAR) BETWEEN f10.entryIntoForce AND f10.endInForce) AND (jurisdiction = f10.fee_auth))
STRAIGHT_JOIN PAT_FEES f11 ON ((DATE_ADD(appln_filing_date, INTERVAL 11 YEAR) BETWEEN f11.entryIntoForce AND f11.endInForce) AND (jurisdiction = f11.fee_auth))
STRAIGHT_JOIN PAT_FEES f12 ON ((DATE_ADD(appln_filing_date, INTERVAL 12 YEAR) BETWEEN f12.entryIntoForce AND f12.endInForce) AND (jurisdiction = f12.fee_auth))
STRAIGHT_JOIN PAT_FEES f13 ON ((DATE_ADD(appln_filing_date, INTERVAL 13 YEAR) BETWEEN f13.entryIntoForce AND f13.endInForce) AND (jurisdiction = f13.fee_auth))
STRAIGHT_JOIN PAT_FEES f14 ON ((DATE_ADD(appln_filing_date, INTERVAL 14 YEAR) BETWEEN f14.entryIntoForce AND f14.endInForce) AND (jurisdiction = f14.fee_auth))
STRAIGHT_JOIN PAT_FEES f15 ON ((DATE_ADD(appln_filing_date, INTERVAL 15 YEAR) BETWEEN f15.entryIntoForce AND f15.endInForce) AND (jurisdiction = f15.fee_auth))
STRAIGHT_JOIN PAT_FEES f16 ON ((DATE_ADD(appln_filing_date, INTERVAL 16 YEAR) BETWEEN f16.entryIntoForce AND f16.endInForce) AND (jurisdiction = f16.fee_auth))
STRAIGHT_JOIN PAT_FEES f17 ON ((DATE_ADD(appln_filing_date, INTERVAL 17 YEAR) BETWEEN f17.entryIntoForce AND f17.endInForce) AND (jurisdiction = f17.fee_auth))
STRAIGHT_JOIN PAT_FEES f18 ON ((DATE_ADD(appln_filing_date, INTERVAL 18 YEAR) BETWEEN f18.entryIntoForce AND f18.endInForce) AND (jurisdiction = f18.fee_auth))
STRAIGHT_JOIN PAT_FEES f19 ON ((DATE_ADD(appln_filing_date, INTERVAL 19 YEAR) BETWEEN f19.entryIntoForce AND f19.endInForce) AND (jurisdiction = f19.fee_auth))
STRAIGHT_JOIN PAT_FEES f20 ON ((DATE_ADD(appln_filing_date, INTERVAL 20 YEAR) BETWEEN f20.entryIntoForce AND f20.endInForce) AND (jurisdiction = f20.fee_auth))

STRAIGHT_JOIN FX fx1 ON (f1.currency = fx1.currency)
STRAIGHT_JOIN FX fx2 ON (f2.currency = fx2.currency)
STRAIGHT_JOIN FX fx3 ON (f3.currency = fx3.currency)
STRAIGHT_JOIN FX fx4 ON (f4.currency = fx4.currency)
STRAIGHT_JOIN FX fx5 ON (f5.currency = fx5.currency)
STRAIGHT_JOIN FX fx6 ON (f6.currency = fx6.currency)
STRAIGHT_JOIN FX fx7 ON (f7.currency = fx7.currency)
STRAIGHT_JOIN FX fx8 ON (f8.currency = fx8.currency)
STRAIGHT_JOIN FX fx9 ON (f9.currency = fx9.currency)
STRAIGHT_JOIN FX fx10 ON (f10.currency = fx10.currency)
STRAIGHT_JOIN FX fx11 ON (f11.currency = fx11.currency)
STRAIGHT_JOIN FX fx12 ON (f12.currency = fx12.currency)
STRAIGHT_JOIN FX fx13 ON (f13.currency = fx13.currency)
STRAIGHT_JOIN FX fx14 ON (f14.currency = fx14.currency)
STRAIGHT_JOIN FX fx15 ON (f15.currency = fx15.currency)
STRAIGHT_JOIN FX fx16 ON (f16.currency = fx16.currency)
STRAIGHT_JOIN FX fx17 ON (f17.currency = fx17.currency)
STRAIGHT_JOIN FX fx18 ON (f18.currency = fx18.currency)
STRAIGHT_JOIN FX fx19 ON (f19.currency = fx19.currency)
STRAIGHT_JOIN FX fx20 ON (f20.currency = fx20.currency)


WHERE 
	f1.feeClass = 'reg' AND fx1.year = (cohort + 1)
AND f2.feeClass = 'reg' AND fx2.year = (cohort + 2)
AND f3.feeClass = 'reg' AND fx3.year = (cohort + 3)
AND f4.feeClass = 'reg' AND fx4.year = (cohort + 4)
AND f5.feeClass = 'reg' AND fx5.year = (cohort + 5)
AND f6.feeClass = 'reg' AND fx6.year = (cohort + 6)
AND f7.feeClass = 'reg' AND fx7.year = (cohort + 7)
AND f8.feeClass = 'reg' AND fx8.year = (cohort + 8)
AND f9.feeClass = 'reg' AND fx9.year = (cohort + 9)
AND f10.feeClass = 'reg' AND fx10.year = (cohort + 10)
AND f11.feeClass = 'reg' AND fx11.year = (cohort + 11)
AND f12.feeClass = 'reg' AND fx12.year = (cohort + 12)
AND f13.feeClass = 'reg' AND fx13.year = (cohort + 13)
AND f14.feeClass = 'reg' AND fx14.year = (cohort + 14)
AND f15.feeClass = 'reg' AND fx15.year = (cohort + 15)
AND f16.feeClass = 'reg' AND fx16.year = (cohort + 16)
AND f17.feeClass = 'reg' AND fx17.year = (cohort + 17)
AND f18.feeClass = 'reg' AND fx18.year = (cohort + 18)
AND f19.feeClass = 'reg' AND fx19.year = (cohort + 19)
AND f20.feeClass = 'reg' AND fx20.year = (cohort + 20)
AND fx1.month = cohortMonth
AND fx2.month = cohortMonth
AND fx3.month = cohortMonth
AND fx4.month = cohortMonth
AND fx5.month = cohortMonth
AND fx6.month = cohortMonth
AND fx7.month = cohortMonth
AND fx8.month = cohortMonth
AND fx9.month = cohortMonth
AND fx10.month = cohortMonth
AND fx11.month = cohortMonth
AND fx12.month = cohortMonth
AND fx13.month = cohortMonth
AND fx14.month = cohortMonth
AND fx15.month = cohortMonth
AND fx16.month = cohortMonth
AND fx17.month = cohortMonth
AND fx18.month = cohortMonth
AND fx19.month = cohortMonth
AND fx20.month = cohortMonth
AND jurisdiction = 'DE'
AND cohort = 1993;




