DROP  PROCEDURE IF EXISTS FAMILYPRIORITY;
DELIMITER ;;

CREATE PROCEDURE FAMILYPRIORITY()
BEGIN
DECLARE n INT DEFAULT 0;
DECLARE i INT DEFAULT 0;
SELECT COUNT(*) INTO n FROM tls_indicator_table WHERE priorDate IS NULL;
SET SQL_SAFE_UPDATES = 0;
SET i=0;
WHILE i<10 DO
UPDATE tls_indicator_table, 
(
SELECT docdb_family_id, min(appln_filing_date) AS priorDate
FROM tls_indicator_table
JOIN tls218_docdb_fam USING(docdb_family_id) 
JOIN tls201_appln USING(appln_id)
WHERE 
-- Remove missing application dates
appln_filing_date != '9999-12-31'
AND
-- Select only empty entries
tls_indicator_table.priorDate IS NULL
GROUP BY docdb_family_id
LIMIT i,1
) AS updator
SET tls_indicator_table.priorDate = updator.priorDate
WHERE 
tls_indicator_table.priorDate IS NULL
AND
tls_indicator_table.docdb_family_id = updator.docdb_family_id;
  SET i = i + 1;
END WHILE;
SET SQL_SAFE_UPDATES = 1;
End;
;;
DELIMITER ;


CALL ROWPERROW;


SET @a = 0;
SELECT COUNT(*) INTO @a FROM tls_indicator_table WHERE priorDate IS NOT NULL;
SELECT @a;

SET @b = 0;
SELECT COUNT(*) INTO @b FROM tls_indicator_table WHERE priorDate IS NULL;
SELECT @b;
