SELECT docdb_family_id, publn_auth,
publn_nr, appln_filing_date, 
prs_gazette_date,
publn_auth,
prs_code,l501ep,l502ep,
DATEDIFF(prs_gazette_date,appln_filing_date) AS max_days_alive

FROM ((INPADOC JOIN tls211_pat_publn USING (appln_id)) 
JOIN TLS218_DOCDB_FAM USING (appln_id))
JOIN tls201_appln USING (appln_id)

WHERE 
-- Get the families
appln_filing_date BETWEEN '1990-01-01' AND '1990-12-31'
AND
publn_auth IN ('EP','CH')

AND docdb_family_id IN (10649125,10648559,10648912)

AND 
-- kill codes by country
-- nested kill code for the EP patents

concat(publn_auth,concat(prs_code,l501ep,l502ep)) IN (
'EPREGCHAZW',
'EPREGCHPL',
'EPREGCHPLVZ',
'EPREGCHPZW',
'EPREGCHPZZ'
'CHAZW',
'CHPL',
'CHPLVZ',
'CHPZW',
'CHPZZ'
)


-- GROUP BY concat(docdb_family_id,appln_auth)

LIMIT 10