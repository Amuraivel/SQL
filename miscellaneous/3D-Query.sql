SELECT *, FROM (
SELECT Person_name_clean, count(DISTINCT docdb_family_id) AS totalPatentCount,person_id
FROM tls201_appln
JOIN tls207_pers_appln USING(appln_id)
JOIN 201407_HAN_PERSON USING(person_id) 

JOIN tls218_docdb_fam USING(appln_id)
WHERE
appln_filing_date > '1994-11-23'
GROUP BY Person_name_clean 

) AS totalCountTable


JOIN

(SELECT Person_name_clean,count(DISTINCT docdb_family_id) AS threeDPatentCount,person_id
FROM tls209_appln_ipc 
JOIN tls207_pers_appln USING(appln_id)
JOIN 201407_HAN_PERSON USING(person_id) 
JOIN tls201_appln USING(appln_id)
JOIN tls218_docdb_fam USING(appln_id)

WHERE
appln_filing_date > '1994-11-23'
AND
ipc_class_symbol 

IN (
'B29C  67/00',
'B29C  35/00',
'B29C  47/24',
'B22F   3/105',
'B23K  26/04',
'G03F   7/004',
'G06F  17/50',
'B28B   1/00',
'G01N  33/574',
'C12Q   1/68'

)

AND
Person_name_clean NOT IN (
'CONCEPT LASER GMBH',
'STRATASYS INC','SLM SOLUTIONS GMBH','STRATASYS LTD','STRATASYS INC','ARCAM AB','3D SYSTEMS INC','3D SYSTEMS INC VALENCIA CALIF US','EOS GMBH ELECTRO OPTICAL SYSTEMS',
'EOS BIOTECH INC',
'EOS GMBH ELECTRO OPTICAL SYSTEMS 82152 PLANEGG DE',
'EOS WERKE GUENTHER GMBH',
'EOS CO LTD',
'EOS IMAGING',
'EOS SYSTEM CO LTD',
'EOS ECZACIBASI OZGUN KIMYASAL URUNLER SAN VE TIC AS',
'EOS CORP',
'EOS TECH CO LTD')

GROUP BY Person_name_clean ORDER BY patentCount DESC) AS threeDCountTable

USING(person_id)

LIMIT 30