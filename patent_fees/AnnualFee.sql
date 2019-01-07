-- EXPLAIN EXTENDED
SELECT  publn_auth, appln_filing_date, publn_nr, Y_1.Y1, Y_2.Y2, Y_3.Y3, Y_4.Y4,Y_5.Y5,Y_6.Y6,Y_10.Y10,Y_20.Y20 FROM 

(SELECT publn_auth, appln_filing_date,publn_nr FROM tls211_pat_publn JOIN tls201_appln USING(appln_id)

WHERE publn_auth = 'CH' 
AND
appln_filing_date >  '1993-12-30' -- BETWEEN AND '1994-01-07'
AND publn_nr > 1000
LIMIT 10) somePats 
JOIN (SELECT Y1,entryIntoForce,endInForce  FROM PAT_FEES_2014) Y_1
JOIN (SELECT Y2,entryIntoForce,endInForce FROM PAT_FEES_2014) Y_2
JOIN (SELECT Y3,entryIntoForce,endInForce FROM PAT_FEES_2014) Y_3
JOIN (SELECT Y4,entryIntoForce,endInForce FROM PAT_FEES_2014) Y_4
JOIN (SELECT Y5,entryIntoForce,endInForce FROM PAT_FEES_2014) Y_5
JOIN (SELECT Y6,entryIntoForce,endInForce FROM PAT_FEES_2014) Y_6
JOIN (SELECT Y7,entryIntoForce,endInForce FROM PAT_FEES_2014) Y_7
JOIN (SELECT Y8,entryIntoForce,endInForce FROM PAT_FEES_2014) Y_8
JOIN (SELECT Y9,entryIntoForce,endInForce FROM PAT_FEES_2014) Y_9
JOIN (SELECT Y10,entryIntoForce,endInForce FROM PAT_FEES_2014) Y_10
JOIN (SELECT Y11,entryIntoForce,endInForce FROM PAT_FEES_2014) Y_11
JOIN (SELECT Y12,entryIntoForce,endInForce FROM PAT_FEES_2014) Y_12
JOIN (SELECT Y13,entryIntoForce,endInForce FROM PAT_FEES_2014) Y_13
JOIN (SELECT Y14,entryIntoForce,endInForce FROM PAT_FEES_2014) Y_14
JOIN (SELECT Y15,entryIntoForce,endInForce FROM PAT_FEES_2014) Y_15
JOIN (SELECT Y16,entryIntoForce,endInForce FROM PAT_FEES_2014) Y_16
JOIN (SELECT Y17,entryIntoForce,endInForce FROM PAT_FEES_2014) Y_17
JOIN (SELECT Y18,entryIntoForce,endInForce FROM PAT_FEES_2014) Y_18
JOIN (SELECT Y19,entryIntoForce,endInForce FROM PAT_FEES_2014) Y_19
JOIN (SELECT Y20,entryIntoForce,endInForce FROM PAT_FEES_2014) Y_20


WHERE
DATE_ADD(appln_filing_date, INTERVAL 1 YEAR) BETWEEN Y_1.entryIntoForce AND Y_1.endInForce
AND
DATE_ADD(appln_filing_date, INTERVAL 2 YEAR) BETWEEN Y_2.entryIntoForce AND Y_2.endInForce
AND
DATE_ADD(appln_filing_date, INTERVAL 3 YEAR) BETWEEN Y_3.entryIntoForce AND Y_3.endInForce
AND
DATE_ADD(appln_filing_date, INTERVAL 4 YEAR) BETWEEN Y_4.entryIntoForce AND Y_4.endInForce
AND
DATE_ADD(appln_filing_date, INTERVAL 5 YEAR) BETWEEN Y_5.entryIntoForce AND Y_5.endInForce
AND
DATE_ADD(appln_filing_date, INTERVAL 6 YEAR) BETWEEN Y_6.entryIntoForce AND Y_6.endInForce
AND
DATE_ADD(appln_filing_date, INTERVAL 7 YEAR) BETWEEN Y_7.entryIntoForce AND Y_7.endInForce
AND
DATE_ADD(appln_filing_date, INTERVAL 8 YEAR) BETWEEN Y_8.entryIntoForce AND Y_8.endInForce
AND
DATE_ADD(appln_filing_date, INTERVAL 9 YEAR) BETWEEN Y_9.entryIntoForce AND Y_9.endInForce
AND
DATE_ADD(appln_filing_date, INTERVAL 10 YEAR) BETWEEN Y_10.entryIntoForce AND Y_10.endInForce
AND
DATE_ADD(appln_filing_date, INTERVAL 11 YEAR) BETWEEN Y_11.entryIntoForce AND Y_11.endInForce
AND
DATE_ADD(appln_filing_date, INTERVAL 12 YEAR) BETWEEN Y_12.entryIntoForce AND Y_12.endInForce
AND
DATE_ADD(appln_filing_date, INTERVAL 13 YEAR) BETWEEN Y_10.entryIntoForce AND Y_13.endInForce
AND
DATE_ADD(appln_filing_date, INTERVAL 14 YEAR) BETWEEN Y_10.entryIntoForce AND Y_14.endInForce
AND
DATE_ADD(appln_filing_date, INTERVAL 15 YEAR) BETWEEN Y_10.entryIntoForce AND Y_15.endInForce
AND
DATE_ADD(appln_filing_date, INTERVAL 16 YEAR) BETWEEN Y_10.entryIntoForce AND Y_16.endInForce
AND
DATE_ADD(appln_filing_date, INTERVAL 17 YEAR) BETWEEN Y_10.entryIntoForce AND Y_17.endInForce
AND
DATE_ADD(appln_filing_date, INTERVAL 18 YEAR) BETWEEN Y_10.entryIntoForce AND Y_18.endInForce
AND
DATE_ADD(appln_filing_date, INTERVAL 19 YEAR) BETWEEN Y_10.entryIntoForce AND Y_19.endInForce
AND
DATE_ADD(appln_filing_date, INTERVAL 20 YEAR) BETWEEN Y_20.entryIntoForce AND Y_20.endInForce

GROUP BY publn_nr 




;




-- 


