SET SQL_SAFE_UPDATES = 0;
-- Get all the families
ALTER TABLE patentIndicators 
ADD numInventors INT, -- proxy for project size
ADD numApplicants INT, -- proxy for cross-organization cooperation
ADD priorDate DATE, -- initial date of the patent in its earliest form
ADD totalActiveLife INT, -- Current total active life of the patent
ADD bwCites INT, -- bwCitations
ADD bwXYcites INT, -- BW XY citations which are detrimental
ADD IPC4bitString varchar(1000), -- IPC four classes in a single string with each digit having a length;
ADD totalActiveLife INT, -- Total Active Life;
ADD PCT INT;

-- INSERT INTO patentIndicators (docdb_family_id) SELECT DISTINCT docdb_family_id FROM tls218_docdb_fam;
-- Number of inventors by patent family
/*
UPDATE patentIndicators, 
(
SELECT docdb_family_id, COUNT(DISTINCT HRM_L2_ID) AS numInventors 
FROM patentIndicators
JOIN tls218_docdb_fam USING(docdb_family_id) 
LEFT OUTER JOIN tls211_pat_publn USING(appln_id)
JOIN tls227_pers_publn USING(pat_publn_id)
JOIN tls201_appln USING(appln_id)
JOIN EEE_PPAT_April2014 USING (person_id)
WHERE 
invt_seq_nr > 0

-- AND patentIndicators.numInventors IS NULL
GROUP BY docdb_family_id
) AS updator

SET patentIndicators.numInventors = updator.numInventors
WHERE    patentIndicators.docdb_family_id = updator.docdb_family_id
AND patentIndicators.numInventors IS NULL;
COMMIT;



-- Number of applicants
UPDATE patentIndicators, 
(
SELECT docdb_family_id, COUNT(DISTINCT HRM_L2_ID) AS numApplicants
FROM patentIndicators
JOIN tls218_docdb_fam USING(docdb_family_id) 
LEFT OUTER JOIN tls211_pat_publn USING(appln_id)
JOIN tls227_pers_publn USING(pat_publn_id)
JOIN tls201_appln USING(appln_id)
JOIN EEE_PPAT_April2014 USING (person_id)
WHERE 
applt_seq_nr > 0

-- AND patentIndicators.numInventors IS NULL
GROUP BY docdb_family_id
) AS updator

SET patentIndicators.numApplicants = updator.numApplicants
WHERE    patentIndicators.docdb_family_id = updator.docdb_family_id
AND patentIndicators.numApplicants IS NULL;
COMMIT;

-- Total Active Life
UPDATE patentIndicators, 
(SELECT docdb_family_id, SUM(ROUND(EXP(age),0)) AS totalActiveLife FROM imputed_age
GROUP BY docdb_family_id) AS updator
SET patentIndicators.totalActiveLife = updator.totalActiveLife
WHERE 
patentIndicators.docdb_family_id = updator.docdb_family_id;
COMMIT;

-- Backward NPL Citations
UPDATE patentIndicators inds  JOIN 
(SELECT docdb_family_id, IFNULL(COUNT(npl_publn_id),0) as NPLCites FROM tls212_citation c 
JOIN tls211_pat_publn p ON (c.pat_publn_id=p.pat_publn_id) 
JOIN tls201_appln a ON (p.appln_id = a.appln_id)
WHERE npl_publn_id > 0 
GROUP BY docdb_family_id) updator USING(docdb_family_id)
SET inds.NPLCites = updator.NPLCites;
COMMIT;

-- PCT
SET SQL_SAFE_UPDATES = 0;
UPDATE patentIndicators
SET patentIndicators.PCT = 0;
COMMIT;
UPDATE patentIndicators JOIN
(SELECT DISTINCT docdb_family_id, 1 AS PCT
FROM patentIndicators
JOIN tls201_appln USING(docdb_family_id) 
JOIN tls211_pat_publn USING(appln_id) -- true
WHERE 
-- OPPOSITION events
publn_auth = 'WO'
) AS updator
SET patentIndicators.PCT = updator.PCT
WHERE 
patentIndicators.docdb_family_id = updator.docdb_family_id;
COMMIT;


*/





-- Gives each family a date
UPDATE patentIndicators, 
(
SELECT docdb_family_id, min(appln_filing_date) AS priorDate
FROM patentIndicators
JOIN tls218_docdb_fam USING(docdb_family_id) 
JOIN tls201_appln USING(appln_id)
WHERE 
-- Remove missing application dates
appln_filing_date != '9999-12-31'
AND
-- Select only empty entries
patentIndicators.priorDate IS NULL
GROUP BY docdb_family_id
-- LIMIT 1000000 -- 1m at a time
) AS updator
SET patentIndicators.priorDate = updator.priorDate
WHERE 
patentIndicators.priorDate IS NULL
AND
patentIndicators.docdb_family_id = updator.docdb_family_id;
COMMIT;

/*


-- Applicant country
UPDATE patentIndicators, 
(
SELECT docdb_family_id, min(appln_filing_date) AS priorDate, LEFT(PERSON_CTRY_CODE,2) AS applicantCountry
FROM patentIndicators
JOIN tls218_docdb_fam USING(docdb_family_id) 
JOIN tls207_pers_appln pa USING(appln_id) -- true
STRAIGHT_JOIN EEE_PPAT_April2014 hp ON (pa.person_id = hp.person_id) -- TRUE
JOIN tls201_appln USING(appln_id) -- true
WHERE 
-- Remove missing application dates
-- AND Person_ctry_code != ''

-- Select only empty entries
patentIndicators.applicantCountry IS NULL
GROUP BY docdb_family_id
-- LIMIT 100000
) AS updator
SET patentIndicators.applicantCountry = updator.applicantCountry
WHERE 
patentIndicators.applicantCountry IS NULL
AND
patentIndicators.docdb_family_id = updator.docdb_family_id;

COMMIT;




-- Jurisdictions
UPDATE patentIndicators, 
(
SELECT docdb_family_id, count(DISTINCT publn_auth) AS jurisdictions
FROM patentIndicators
LEFT OUTER JOIN tls218_docdb_fam USING(docdb_family_id) 
LEFT OUTER JOIN tls211_pat_publn USING(appln_id) -- true
-- Remove missing application dates
-- Select only empty entries
-- patentIndicators.jurisdictions IS NULL

GROUP BY docdb_family_id
-- LIMIT 1000000
) AS updator
SET patentIndicators.jurisdictions = updator.jurisdictions
WHERE 
patentIndicators.docdb_family_id = updator.docdb_family_id;


COMMIT;


-- Finds the unique opposition codes counting them
-- Oppositions
UPDATE patentIndicators, 
(
SELECT docdb_family_id, IFNULL(count(DISTINCT lec_id),0) AS oppositions
FROM patentIndicators
LEFT OUTER JOIN tls218_docdb_fam USING(docdb_family_id) 
LEFT OUTER JOIN tls221_inpadoc_prs USING(appln_id)
JOIN legal_event_code USING(lec_id) -- true
-- Remove missing application dates
-- Select only empty entries
WHERE

lecg_id = 4

GROUP BY docdb_family_id
-- LIMIT 1000000
) AS updator
SET patentIndicators.oppositions = updator.oppositions
WHERE 
patentIndicators.docdb_family_id = updator.docdb_family_id;
COMMIT;

-- FW Citations based on families
DROP PROCEDURE IF EXISTS fwCites;
delimiter //
CREATE PROCEDURE `fwCites`(minDocFBfam INT, maxDocFBfam INT, blockSize INT)
BEGIN
DECLARE x INT DEFAULT minDocFBfam;

-- explain extended
WHILE x < maxDocFBfam DO

UPDATE patentIndicators inds  JOIN 
(SELECT citedFam.docdb_family_id AS famID, IFNULL(count(DISTINCT citingFam.docdb_family_id),0) as fwCites
FROM 
patentIndicators indTab
INNER JOIN tls218_docdb_fam citedFam USING(docdb_family_id)
LEFT OUTER JOIN tls211_pat_publn citedPats ON(citedFam.appln_id = citedPats.appln_id) 
JOIN tls212_citation cites ON (citedPats.pat_publn_id = cites.cited_pat_publn_id)
JOIN tls211_pat_publn citingPats ON (cites.pat_publn_id = citingPats.pat_publn_id)
JOIN tls218_docdb_fam citingFam ON (citingFam.appln_id = citingPats.appln_id)
-- JOIN tls215_citn_categ USING(citn_id) 
WHERE indTab.docdb_family_id BETWEEN x AND  x + blockSize
GROUP BY citedFam.docdb_family_id
) as updator
ON (inds.docdb_family_id = updator.famID)
SET inds.fwCites = updator.fwCites;
    SET x = x + blockSize;
	COMMIT;
 END WHILE;

END //
DELIMITER ; 
	

CALL fwCites(9900000,49999594,10000);#


-- BW Citations based on families
DROP PROCEDURE IF EXISTS bwCites;
delimiter //
CREATE PROCEDURE `bwCites`(minDocFBfam INT, maxDocFBfam INT, blockSize INT)
BEGIN
DECLARE x INT DEFAULT minDocFBfam;

-- explain extended
WHILE x < maxDocFBfam DO

UPDATE patentIndicators inds  JOIN 
(SELECT citedFam.docdb_family_id AS famID, IFNULL(count(DISTINCT citedFam.docdb_family_id),0) as bwCites
FROM 
patentIndicators indTab
INNER JOIN tls218_docdb_fam citingFam USING(docdb_family_id)
LEFT OUTER JOIN tls211_pat_publn citingPats ON(citingFam.appln_id = citingPats.appln_id) 
JOIN tls212_citation cites ON (citingPats.pat_publn_id = cites.pat_publn_id)
JOIN tls211_pat_publn citedPats ON (cites.cited_pat_publn_id = citedPats.pat_publn_id)
JOIN tls218_docdb_fam citedFam ON (citedFam.appln_id = citedPats.appln_id)
-- JOIN tls215_citn_categ USING(citn_id) 
WHERE indTab.docdb_family_id BETWEEN x AND  x + blockSize
GROUP BY citingFam.docdb_family_id
) as updator
ON (inds.docdb_family_id = updator.famID)
SET inds.bwCites = updator.bwCites;
	
    SET x = x + blockSize;
	COMMIT;
 END WHILE;

END //
DELIMITER ; 
CALL bwCites(0,49999594,10000);#


	-- BW XY Citations based on families
	DROP PROCEDURE IF EXISTS bwXYCites;
	delimiter //
	CREATE PROCEDURE `bwXYCites`(minDocFBfam INT, maxDocFBfam INT, blockSize INT)
	BEGIN
	DECLARE x INT DEFAULT minDocFBfam;

	-- explain extended
	WHILE x < maxDocFBfam DO

	UPDATE patentIndicators inds  JOIN 
	(SELECT citedFam.docdb_family_id AS famID, IFNULL(count(DISTINCT citedFam.docdb_family_id),0) as bwXYCites
	FROM 
    -- Limit to key vars
	patentIndicators indTab
	INNER JOIN tls218_docdb_fam citingFam USING(docdb_family_id)
	LEFT OUTER JOIN tls211_pat_publn citingPats ON(citingFam.appln_id = citingPats.appln_id) 
	JOIN tls212_citation cites ON (citingPats.pat_publn_id = cites.pat_publn_id)
	JOIN tls211_pat_publn citedPats ON (cites.cited_pat_publn_id = citedPats.pat_publn_id)
	JOIN tls218_docdb_fam citedFam ON (citedFam.appln_id = citedPats.appln_id)
	JOIN tls215_citn_categ citeCatg USING(citn_id) 
	WHERE indTab.docdb_family_id BETWEEN x AND  x + blockSize
	AND
    -- invalidating
	citeCatg.citn_categ IN ('X','Y')
    
	GROUP BY citingFam.docdb_family_id
	) as updator
	ON (inds.docdb_family_id = updator.famID)
	SET inds.bwXYCites = updator.bwXYCites;
		
		SET x = x + blockSize;
		COMMIT;
	 END WHILE;

	END //
	DELIMITER ; 
		

	CALL bwXYCites(3497968,28000000,1000);#






-- Num Claims
UPDATE patentIndicators, 
(
SELECT docdb_family_id, IFNULL(MAX(publn_claims),AVG(publn_claims)) AS numClaims
FROM patentIndicators
LEFT OUTER JOIN tls218_docdb_fam USING(docdb_family_id) 
LEFT OUTER JOIN tls211_pat_publn USING(appln_id) -- true
GROUP BY docdb_family_id

) AS updator
SET patentIndicators.numClaims = updator.numClaims
WHERE 
patentIndicators.docdb_family_id = updator.docdb_family_id;
COMMIT;






-- Grants
UPDATE patentIndicators, 
(
SELECT docdb_family_id, IFNULL(COUNT(DISTINCT pat_publn_id),0) AS grantCount
FROM patentIndicators
LEFT OUTER JOIN tls218_docdb_fam USING(docdb_family_id) 
LEFT OUTER JOIN tls211_pat_publn USING(appln_id) -- true
WHERE 
publn_first_grant = 1
GROUP BY docdb_family_id

) AS updator
SET patentIndicators.grantCount = updator.grantCount
WHERE 
patentIndicators.docdb_family_id = updator.docdb_family_id;
COMMIT;

-- PATENT SCOPE
UPDATE patentIndicators, 
(
SELECT docdb_family_id, COUNT(DISTINCT LEFT(ipc_class_symbol,4)) AS scope
FROM patentIndicators
LEFT OUTER JOIN tls218_docdb_fam USING(docdb_family_id) 
LEFT OUTER JOIN tls209_appln_ipc USING(appln_id) -- true

GROUP BY docdb_family_id

) AS updator
SET patentIndicators.scope = updator.scope
WHERE 
patentIndicators.docdb_family_id = updator.docdb_family_id;
*/


-- SUMS up life and then exports its

UPDATE patentIndicators, 
(
SELECT docdb_family_id, SUM(age) AS totalActiveLife
FROM patentIndicators
LEFT OUTER JOIN tls201_appln USING(docdb_family_id) 
LEFT OUTER JOIN tls221_inpadoc_prs USING(appln_id) -- true
JOIN legal_event_code USING(lec_id)
WHERE 
-- OPPOSITION events
lecg_id = 4
AND
-- Adverse events
impact = '-'
GROUP BY docdb_family_id

) AS updator
SET patentIndicators.oppositions = updator.oppositions
WHERE 
patentIndicators.docdb_family_id = updator.docdb_family_id;
COMMIT;





-- OPPOSITIONS
ALTER TABLE patentIndicators ADD oppositions INT;
UPDATE patentIndicators, 
(
SELECT docdb_family_id, COUNT(DISTINCT lec_id) AS oppositions
FROM patentIndicators
LEFT OUTER JOIN tls201_appln USING(docdb_family_id) 
LEFT OUTER JOIN tls221_inpadoc_prs USING(appln_id) -- true
JOIN legal_event_code USING(lec_id)
WHERE 
-- OPPOSITION events
lecg_id = 4
AND
-- Adverse events
impact = '-'
GROUP BY docdb_family_id

) AS updator
SET patentIndicators.oppositions = updator.oppositions
WHERE 
patentIndicators.docdb_family_id = updator.docdb_family_id;
COMMIT;


-- GRANT LAG
ALTER TABLE patentIndicators ADD grantLag INT;
UPDATE patentIndicators, 
(
SELECT docdb_family_id, DATEDIFF(MIN(publn_date),MIN(appln_filing_date)) AS grantLag
FROM patentIndicators
LEFT OUTER JOIN tls201_appln USING(docdb_family_id) 
LEFT OUTER JOIN tls211_pat_publn USING(appln_id) -- true
JOIN tls201_appln USING(appln_id)
WHERE 
-- OPPOSITION events
publn_first_grant = 1
GROUP BY docdb_family_id
) AS updator
SET patentIndicators.grantLag = updator.grantLag
WHERE 
patentIndicators.docdb_family_id = updator.docdb_family_id;
COMMIT;









-- TRADES and ASSIGMENT ACTIVITY: measures trades/ownership
ALTER TABLE patentIndicators ADD titleActivity INT;
UPDATE patentIndicators, 
(
SELECT docdb_family_id, COUNT(DISTINCT lec_id) AS titleActivity
FROM patentIndicators
LEFT OUTER JOIN tls218_docdb_fam USING(docdb_family_id) 
LEFT OUTER JOIN tls221_inpadoc_prs USING(appln_id)
JOIN legal_event_code USING(lec_id)
WHERE 
-- Ownership events
lec_id IN (449,1108,151,450,1109,150,940,875,1193,16,32,536,547,615,531,737,1149,162,64,893,63,1075,300,1001,1288,481,1056,1057,1218,353,408,461,858,859,1018)
GROUP BY docdb_family_id

) AS updator
SET patentIndicators.titleActivity = updator.titleActivity
WHERE 
patentIndicators.docdb_family_id = updator.docdb_family_id;
COMMIT;






-- Triadic patents
UPDATE patentIndicators, 
(
	SELECT  docdb_family_id, IF(COUNT(*)>0,1,0) AS triadic FROM
		(SELECT docdb_family_id
		FROM patentIndicators
		LEFT OUTER JOIN tls218_docdb_fam USING(docdb_family_id) 
		JOIN tls211_pat_publn p1 USING(appln_id) 
		WHERE 
		-- OPPOSITION events
		p1.publn_auth = 'US'
		GROUP BY docdb_family_id
        ) f1 
	JOIN 
		(SELECT docdb_family_id
		FROM patentIndicators
		LEFT OUTER JOIN tls218_docdb_fam USING(docdb_family_id) 
		JOIN tls211_pat_publn p2 USING(appln_id) 
		WHERE 
		-- OPPOSITION events
		p2.publn_auth = 'EP'
		GROUP BY docdb_family_id
		) f2 
	USING(docdb_family_id) 
	JOIN 
		(SELECT docdb_family_id
		FROM patentIndicators
		LEFT OUTER JOIN tls218_docdb_fam USING(docdb_family_id) 
		JOIN tls211_pat_publn p3 USING(appln_id) 
		WHERE 
		-- OPPOSITION events
		p3.publn_auth = 'JP'
		GROUP BY docdb_family_id
		) f3
	USING(docdb_family_id)
    GROUP BY docdb_family_id
) AS updator
SET patentIndicators.triadic = updator.triadic
WHERE 
patentIndicators.docdb_family_id = updator.docdb_family_id;
COMMIT;





-- ACTIVE LIFE
UPDATE patentIndicators, 
(SELECT docdb_family_id, SUM(jurisdictionLife) AS activeLife FROM 
	( -- get each patent within the family
	SELECT docdb_family_id, DATEDIFF(MAX(prs_gazette_date),appln_filing_date) AS jurisdictionLife
	FROM patentIndicators
	LEFT OUTER JOIN tls218_docdb_fam USING(docdb_family_id) 
	LEFT OUTER JOIN tls221_inpadoc_prs USING(appln_id) 
    JOIN tls201_appln
	WHERE 
	prs_gazette_date != '9999-12-31' -- eliminate bad dates
	AND
	appln_filing_date != '9999-12-31'
	GROUP BY appln_auth
	) AS jurisdiction 
) AS updator
SET patentIndicators.activeLife = updator.activeLife
WHERE 
patentIndicators.docdb_family_id = updator.docdb_family_id;

COMMIT;


-- fwXYCites


