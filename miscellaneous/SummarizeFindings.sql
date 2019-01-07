-- THIS TABLE CREATES A UNION OF THE PATENT FAMILIES ACROSS both our datasets
-- We'll then subset from there.
SELECT DISTINCT appln_id,mark.docdb_family_id AS docdb_family_id, 
florian.inpadoc_family_id AS inpadoc_family_id,
mark."ubaNr" AS markUba,
florian."ubaNr" AS florianUba
INTO union_innopanel_patentfamilies
FROM 
tls218_docdb_fam docfam JOIN 
tls219_inpadoc_fam inpafam USING (appln_id)
FULL OUTER JOIN "ubasToDOCDBFamiliesMark" mark ON (mark.docdb_family_id = docfam.docdb_family_id)
FULL OUTER JOIN "ubasToINPADOCFamiliesFlorian" florian ON(florian.inpadoc_family_id = inpafam.inpadoc_family_id);


-- INTERSECTION TABLE OF COMMON FINDINGS
-- USING docdb_family_id AS PRIMARY KEY because stable across versions
SELECT DISTINCT fam.docdb_family_id,fam.inpadoc_family_id, 
-- Florian last did matching so prefer his answer
 CASE WHEN florianUba IS NULL THEN markUba ELSE florianUba END AS uba
-- Shoul be a list of all families
INTO intersection_innopanel_patentfamilies
FROM "union_innopanel_patentfamilies" fam
JOIN tls218_docdb_fam docfam USING(docdb_family_id)
JOIN tls207_pers_appln persApp ON (persApp."appln_id" = docFam."appln_id")
JOIN "EEE_PPAT" eee USING(person_id)
JOIN tls201_appln app ON (app."appln_id" = persApp."appln_id")
-- WHERE mar."ubaNr" IS NOT NULL OR flo."ubaNr" IS NOT NULL
WHERE
-- Match the owners according to our dataset 
-- mar."ubaNr" = flo."ubaNr" -- 20025 families in common
--We' matched application id's in the union, now we're matching owners:
markUba = florianUba
-- Add in Mark's findings (because he needs 3 year period for earliest 1990 cross), but only conservatively if they are before the beginning of florian's period
-- and double checking against the Belgian's origin table (because this was spotty.
OR ("PERSON_CTRY_CODE" = 'CH' AND appln_filing_date < '1990-01-01');




-- COMPLEMENT TABLE OF MISMATCHES
-- USING docdb_family_id AS PRIMARY KEY because stable across versions
SELECT DISTINCT fam.docdb_family_id,fam.inpadoc_family_id, 
-- Florian last did matching so prefer his answer
 CASE WHEN florianUba IS NULL THEN markUba ELSE florianUba END AS uba
-- Shoul be a list of all families
INTO complement_innopanel_patentfamilies
FROM "union_innopanel_patentfamilies" fam
JOIN tls218_docdb_fam docfam USING(docdb_family_id)
JOIN tls207_pers_appln persApp ON (persApp."appln_id" = docFam."appln_id")
JOIN "EEE_PPAT" eee USING(person_id)
JOIN tls201_appln app ON (app."appln_id" = persApp."appln_id")
-- WHERE mar."ubaNr" IS NOT NULL OR flo."ubaNr" IS NOT NULL
WHERE
-- Dump those in another table where they don't match
-- But again constrain using Belgian's origin table to filter some detritus of usign the bad origin table...
markUba != florianUba
-- 
AND ("PERSON_CTRY_CODE" = 'CH' AND appln_filing_date >= '1990-01-01');




