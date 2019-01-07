SELECT docdb_family_id,inpadoc_family_id, publn_auth,rand() as rand,
publn_nr, appln_filing_date, 
prs_gazette_date,
publn_kind,
-- PRS Table status columns
prs_code,l501ep,l502ep,
DATEDIFF(prs_gazette_date, appln_filing_date) AS max_days_alive

FROM (((INPADOC JOIN tls211_pat_publn USING (appln_id)) 
JOIN TLS218_DOCDB_FAM USING (appln_id))
JOIN tls201_appln USING (appln_id))
JOIN INPADOC_FAMILY USING (appln_id)
WHERE 
-- Get the families
-- appln_filing_date BETWEEN '1993-01-01' AND '2013-12-31'
-- docdb_family_id IN (27803547)
-- publn_nr = '2401949' and publn_auth = 'GB'

inpadoc_family_id = 3550929


-- AND 
-- kill codes by country
-- nested kill code for the EP patents

 AND  concat(publn_auth,concat(prs_code,l501ep,l502ep)) IN (
'CNC02',
'CNC04',
'CNC12',
'CNC17',
'CNC19',
'CNC20',
'CNC25',
'CNC28',
'CNC35',
'GBAT',
'GBGBPC',
'GBGBPR',
'GBGBV',
'GBPCNP',
'GBPE',
'GBPE20',
'GBPLNP',
'GBPR',
'GBRJ',	
'GBS29',
'GBS73',
'GBWAP',
'GB728R',
'GB7281',
'GB7282',
'GB729C',
'GB729S',
'GB729U',
'GB772B',
'GB772E',
'GB772K',
'GB772L',
'GB772M',
'GB772R',
'GB772S',
'GB772X',
'GB773K',
'GB773L',
'GB773M',
'GB775E',
'ATAZ',
'ATA1AW',
'ATA1J',
'ATA1V',
'ATA1Z',
'ATEDES',
'ATEEGN',
'ATEELA',
'ATEELV',
'ATEEN',
'ATEGA',
'ATELJ',
'ATELV',
'ATEN',
'ATMM9K',
'ATMN9K',
'ATREN',
'ATRER',
'ATREZ',
'ATRH',
'ATRZN',
'AUCFC',
'AUCLAC',
'AUMAK',
'AUMAL',
'AUMAY',
'AUMFS',
'AUMK1',
'AUMK10',
'AUMK12',
'AUMK14',
'AUMK15',
'AUMK16',
'AUMK17',
'AUMK18',
'AUMK19',
'AUMK20',
'AUMK21',
'AUMK22',
'AUMK23',
'AUMK24',
'AUMK25',
'AUMK3',
'AUMK4',
'AUMK5',
'AUMK6',
'AUMK7',
'AUMK8',
'AUMK9',
'AUROP',
'EPAKY',
'EPD18D',
'EPD18Z',
'EPGBAW',
'EPPG25',
'EP18D',
'EP18R',
'EP18W',
'EP27W'
)



GROUP BY concat(docdb_family_id,appln_auth)

ORDER BY rand;