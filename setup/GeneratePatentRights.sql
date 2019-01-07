/*
--THIS FILE GENERATES PATENT RIGHTS
*/ 
-- EP PATENTS FIRST BECAUSE COMPLEX, this needs to be reworked
/*
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
STRAIGHT_JOIN tls221_inpadoc_prs USING(appln_id)
WHERE publn_auth = 'EP'
AND publn_kind = 'B1' -- Only grants 
AND l501ep != '' -- Exclude missing
GROUP BY docdb_family_id, l501ep;



INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, pub1.publn_auth, appln_filing_date, pub1.publn_date, pub1.publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn pub1 USING(appln_id)
STRAIGHT_JOIN tls211_pat_publn pub2 USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE pub1.publn_auth = 'EP'
AND pub1.publn_kind = 'A1' -- Only grants 
AND pub2.publn_kind != 'B1' 
GROUP BY docdb_family_id;


-- ARGENTINA
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'AR'
GROUP BY docdb_family_id, publn_auth;


-- AUSTRIA
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'AT'
AND publn_kind NOT IN ('U','U1','U2','U3','XE')
GROUP BY docdb_family_id, publn_auth;


-- AUSTRALIA
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'AU'
AND publn_kind NOT IN ('B3')
GROUP BY docdb_family_id, publn_auth;


-- BELGIUM
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'BE'
GROUP BY docdb_family_id;


-- BRAZIL
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'BR'
AND publn_kind NOT IN ('U','U8')
GROUP BY docdb_family_id;


-- CANADA
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'CA'
-- AND publn_kind NOT IN ('U','U8')
GROUP BY docdb_family_id;

-- CH : Switzerland
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'CH'
-- AND publn_kind NOT IN ('U','U8')
GROUP BY docdb_family_id;

-- CHINA
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'CN'
AND publn_kind NOT IN ('U','Y')
GROUP BY docdb_family_id;



-- COLOMBIA
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'CO'
GROUP BY docdb_family_id;



-- COSTA RICA
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'CR'
GROUP BY docdb_family_id;



-- CUBA
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'CU'
GROUP BY docdb_family_id;


-- CZECH REPUBLIC
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'CZ'
AND publn_kind NOT IN ('U1')
GROUP BY docdb_family_id;


-- GERMANY 
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'DE'
AND publn_kind NOT IN ('U','U1')
GROUP BY docdb_family_id;

INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'DK'
AND publn_kind NOT IN ('U1','U3','U4','X0','Y3','Y4','Y5','Y6')
GROUP BY docdb_family_id;

-- ESTONIA
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'EE'
-- AND publn_kind NOT IN ('U1','U3','U4','X0','Y3','Y4','Y5','Y6')
GROUP BY docdb_family_id;

-- SPAIN
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'ES'
AND publn_kind NOT IN ('U','U4','UA','Y','Y1','Y4','Y8','YA')
GROUP BY docdb_family_id;



INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'FI'
AND publn_kind NOT IN ('U0','U1','X0')
GROUP BY docdb_family_id;



INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'FR'
AND publn_kind NOT IN ('A7','A8','B3','B4')
GROUP BY docdb_family_id;



INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'GB'
-- AND publn_kind NOT IN ('A7','A8','B3','B4')
GROUP BY docdb_family_id;



INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'GR'
AND publn_kind NOT IN ('U','Y')
GROUP BY docdb_family_id;



INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'HK'
-- AND publn_kind NOT IN ('U','Y')
GROUP BY docdb_family_id;


INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'HU'
AND publn_kind NOT IN ('U','U0')
GROUP BY docdb_family_id;

--IRELAND
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'IE'
AND publn_kind NOT IN ('B3')
GROUP BY docdb_family_id;



-- ISRAEL
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'IL'
GROUP BY docdb_family_id;


-- JAPAN
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'JP'
AND appln_filing_date IN ('1980-01-07',
'1980-02-01',
'1980-03-05',
'1980-04-03',
'1980-05-09',
'1980-06-13',
'1980-07-25',
'1980-08-14',
'1980-09-05',
'1980-10-01',
'1980-11-11',
'1980-12-30',
'1981-01-12',
'1981-02-25',
'1981-03-31',
'1981-04-20',
'1981-05-01',
'1981-06-02',
'1981-07-21',
'1981-08-11',
'1981-09-17',
'1981-10-23',
'1981-11-26',
'1981-12-18',
'1982-01-09',
'1982-02-03',
'1982-03-03',
'1982-04-20',
'1982-05-01',
'1982-06-02',
'1982-07-30',
'1982-08-27',
'1982-09-08',
'1982-10-04',
'1982-11-01',
'1982-12-24',
'1983-01-29',
'1983-02-01',
'1983-03-03',
'1983-04-06',
'1983-05-02',
'1983-06-08',
'1983-07-04',
'1983-08-01',
'1983-09-02',
'1983-10-21',
'1983-11-28',
'1983-12-29',
'1984-01-10',
'1984-02-02',
'1984-03-02',
'1984-04-04',
'1984-05-15',
'1984-06-14',
'1984-07-10',
'1984-08-01',
'1984-09-07',
'1984-10-19',
'1984-11-12',
'1984-12-27',
'1985-01-09',
'1985-02-01',
'1985-03-16',
'1985-04-09',
'1985-05-02',
'1985-06-25',
'1985-07-02',
'1985-08-01',
'1985-09-13',
'1985-10-04',
'1985-11-04',
'1985-12-27',
'1986-01-17',
'1986-02-07',
'1986-03-13',
'1986-04-15',
'1986-05-27',
'1986-06-02',
'1986-07-02',
'1986-08-25',
'1986-09-16',
'1986-10-24',
'1986-11-07',
'1986-12-12',
'1987-01-16',
'1987-02-03',
'1987-03-02',
'1987-04-14',
'1987-05-14',
'1987-06-25',
'1987-07-27',
'1987-08-27',
'1987-09-01',
'1987-10-20',
'1987-11-20',
'1987-12-15',
'1988-01-08',
'1988-02-18',
'1988-03-04',
'1988-04-19',
'1988-05-05',
'1988-06-13',
'1988-07-01',
'1988-08-02',
'1988-09-24',
'1988-10-24',
'1988-11-18',
'1988-12-23',
'1989-01-06',
'1989-02-01',
'1989-03-02',
'1989-04-07',
'1989-05-13',
'1989-06-06',
'1989-07-20',
'1989-08-23',
'1989-09-01',
'1989-10-04',
'1989-11-24',
'1989-12-15',
'1990-01-08',
'1990-02-09',
'1990-03-22',
'1990-04-09',
'1990-05-01',
'1990-06-22',
'1990-07-27',
'1990-08-17',
'1990-09-03',
'1990-10-26',
'1990-11-21',
'1990-12-04',
'1991-01-03',
'1991-02-08',
'1991-03-20',
'1991-04-26',
'1991-05-31',
'1991-06-18',
'1991-07-08',
'1991-08-10',
'1991-09-17',
'1991-10-31',
'1991-11-01',
'1991-12-17',
'1992-01-29',
'1992-02-21',
'1992-03-24',
'1992-04-13',
'1992-05-25',
'1992-06-11',
'1992-07-22',
'1992-08-12',
'1992-09-09',
'1992-10-09',
'1992-11-04',
'1992-12-08',
'1993-01-08',
'1993-02-22',
'1993-03-11',
'1993-04-20',
'1993-05-03',
'1993-06-08',
'1993-07-22',
'1993-08-02',
'1993-09-16',
'1993-10-06',
'1993-11-10',
'1993-12-06',
'1994-01-28',
'1994-02-01',
'1994-03-02',
'1994-04-01',
'1994-05-03',
'1994-06-03',
'1994-07-29',
'1994-08-12',
'1994-09-02',
'1994-10-05',
'1994-11-04',
'1994-12-09',
'1995-01-25',
'1995-02-28',
'1995-03-01',
'1995-04-28',
'1995-05-30',
'1995-06-02',
'1995-07-20',
'1995-08-29',
'1995-09-04',
'1995-10-13',
'1995-11-21',
'1995-12-21',
'1996-01-23',
'1996-02-13',
'1996-03-15',
'1996-04-26',
'1996-05-29',
'1996-06-14',
'1996-07-12',
'1996-08-01',
'1996-09-02',
'1996-10-03',
'1996-11-27',
'1996-12-20',
'1997-01-20',
'1997-02-04',
'1997-03-18',
'1997-04-22',
'1997-05-26',
'1997-06-12',
'1997-07-11',
'1997-08-15',
'1997-09-01',
'1997-10-09',
'1997-11-12',
'1997-12-11',
'1998-01-12',
'1998-02-13',
'1998-03-13',
'1998-04-20',
'1998-05-01',
'1998-06-10',
'1998-07-29',
'1998-08-28',
'1998-09-01',
'1998-10-02',
'1998-11-02',
'1998-12-01',
'1999-01-21',
'1999-02-08',
'1999-03-11',
'1999-04-09',
'1999-05-11',
'1999-06-15',
'1999-07-01',
'1999-08-10',
'1999-09-01',
'1999-10-28',
'1999-11-16',
'1999-12-21',
'2000-01-07',
'2000-02-03',
'2000-03-21',
'2000-04-13',
'2000-05-16',
'2000-06-23',
'2000-07-27',
'2000-08-23',
'2000-09-20',
'2000-10-03',
'2000-11-21',
'2000-12-01',
'2001-01-12',
'2001-02-08',
'2001-03-06',
'2001-04-24',
'2001-05-08',
'2001-06-07',
'2001-07-19',
'2001-08-24',
'2001-09-17',
'2001-10-03',
'2001-11-07',
'2001-12-19',
'2002-01-04',
'2002-02-04',
'2002-03-05',
'2002-04-17',
'2002-05-07',
'2002-06-04',
'2002-07-16',
'2002-08-01',
'2002-09-13',
'2002-10-02',
'2002-11-11',
'2002-12-27',
'2003-01-16',
'2003-02-13',
'2003-03-20',
'2003-04-11',
'2003-05-08',
'2003-06-05',
'2003-07-03',
'2003-08-21',
'2003-09-04',
'2003-10-14',
'2003-11-13',
'2003-12-18',
'2004-01-27',
'2004-02-20',
'2004-03-19',
'2004-04-02',
'2004-05-19',
'2004-06-01',
'2004-07-12',
'2004-08-25',
'2004-09-14',
'2004-10-08',
'2004-11-11',
'2004-12-02',
'2005-01-19',
'2005-02-04',
'2005-03-30',
'2005-04-04',
'2005-05-31',
'2005-06-28',
'2005-07-01',
'2005-08-10',
'2005-09-20',
'2005-10-04',
'2005-11-28',
'2005-12-06',
'2006-01-04',
'2006-02-22',
'2006-03-16',
'2006-04-03',
'2006-05-05',
'2006-06-16',
'2006-07-31',
'2006-08-14',
'2006-09-13',
'2006-10-31',
'2006-11-09',
'2006-12-20',
'2007-01-24',
'2007-02-21',
'2007-03-12',
'2007-04-16',
'2007-05-17',
'2007-06-22',
'2007-07-30',
'2007-08-21',
'2007-09-03',
'2007-10-29',
'2007-11-14',
'2007-12-27',
'2008-01-28',
'2008-02-12',
'2008-03-24',
'2008-04-10',
'2008-05-01',
'2008-06-09',
'2008-07-15',
'2008-08-12',
'2008-09-18',
'2008-10-17',
'2008-11-21',
'2008-12-03',
'2009-01-05',
'2009-02-16',
'2009-03-24',
'2009-04-08',
'2009-05-25',
'2009-06-09',
'2009-07-27',
'2009-08-21',
'2009-09-28',
'2009-10-02',
'2009-11-27',
'2009-12-22',
'2010-01-20',
'2010-02-12',
'2010-03-29',
'2010-04-19',
'2010-05-18',
'2010-06-09',
'2010-07-02',
'2010-08-20',
'2010-09-17',
'2010-10-14',
'2010-11-09',
'2010-12-06',
'2011-01-21',
'2011-02-01',
'2011-03-08',
'2011-04-28',
'2011-05-24',
'2011-06-10',
'2011-07-20',
'2011-08-02',
'2011-09-22',
'2011-10-11',
'2011-11-10',
'2011-12-13',
'2012-01-06',
'2012-02-03',
'2012-03-22',
'2012-04-25',
'2012-05-14',
'2012-06-28',
'2012-07-13',
'2012-08-06',
'2012-09-18',
'2012-10-11',
'2012-11-05',
'2012-12-05',
'2013-01-18',
'2013-02-21',
'2013-03-13',
'2013-04-10')
AND publn_kind NOT IN ('U1','U3')
GROUP BY docdb_family_id;


-- LITHUANIA
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'LT'
-- AND publn_kind NOT IN ('U1','U3')
GROUP BY docdb_family_id;


-- MOLDOVA
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'MD'
AND publn_kind NOT IN ('U','W1','W2','Y1','Y2')
GROUP BY docdb_family_id;



-- NETHERLANDS
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'NL'
AND publn_kind NOT IN ('C1')
GROUP BY docdb_family_id;


-- NORWAY
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'NO'
-- AND publn_kind NOT IN ('C1')
GROUP BY docdb_family_id;



-- NEW ZEALAND
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'NZ'
-- AND publn_kind NOT IN ('C1')
GROUP BY docdb_family_id;




-- POLAND
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'PL'
AND publn_kind NOT IN ('U1','U3','Y1','Y3')
GROUP BY docdb_family_id;



-- PORTUGAL
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'PT'
AND publn_kind NOT IN ('U','Y','X')
GROUP BY docdb_family_id;



-- RUSSIA
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'RU'
AND publn_kind NOT IN ('T','U')
GROUP BY docdb_family_id;


-- SWEDEN
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'SE'
AND publn_kind NOT IN ('X0')
GROUP BY docdb_family_id;


-- Republic of Slovenia
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'SI'
-- AND publn_kind NOT IN ('X0')
GROUP BY docdb_family_id;


-- Slovak Republic
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'SK'
-- AND publn_kind NOT IN ('X0')
GROUP BY docdb_family_id;


-- El Salvador 
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'SV'
-- AND publn_kind NOT IN ('X0')
GROUP BY docdb_family_id;

-- TAIWAN
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'TW'
AND publn_kind NOT IN ('Y')
GROUP BY docdb_family_id;



-- UNITED STATES
INSERT INTO patent_families (appln_id,docdb_family_id, publn_auth, appln_filing_date, publn_date, jurisdiction, death)
SELECT appln_id,docdb_family_id, publn_auth, MIN(appln_filing_date), publn_date, publn_auth AS jurisdiction, NULL AS death 
FROM tls201_appln 
STRAIGHT_JOIN tls211_pat_publn USING(appln_id)
STRAIGHT_JOIN tls218_docdb_fam USING(appln_id)
WHERE publn_auth = 'US'
AND publn_kind IN ('A','A1','A2','A4','A9','AB','B9','BA','BB')
AND appln_filing_date IN ('1980-01-07',
'1980-02-01',
'1980-03-05',
'1980-04-03',
'1980-05-09',
'1980-06-13',
'1980-07-25',
'1980-08-14',
'1980-09-05',
'1980-10-01',
'1980-11-11',
'1980-12-30',
'1981-01-12',
'1981-02-25',
'1981-03-31',
'1981-04-20',
'1981-05-01',
'1981-06-02',
'1981-07-21',
'1981-08-11',
'1981-09-17',
'1981-10-23',
'1981-11-26',
'1981-12-18',
'1982-01-09',
'1982-02-03',
'1982-03-03',
'1982-04-20',
'1982-05-01',
'1982-06-02',
'1982-07-30',
'1982-08-27',
'1982-09-08',
'1982-10-04',
'1982-11-01',
'1982-12-24',
'1983-01-29',
'1983-02-01',
'1983-03-03',
'1983-04-06',
'1983-05-02',
'1983-06-08',
'1983-07-04',
'1983-08-01',
'1983-09-02',
'1983-10-21',
'1983-11-28',
'1983-12-29',
'1984-01-10',
'1984-02-02',
'1984-03-02',
'1984-04-04',
'1984-05-15',
'1984-06-14',
'1984-07-10',
'1984-08-01',
'1984-09-07',
'1984-10-19',
'1984-11-12',
'1984-12-27',
'1985-01-09',
'1985-02-01',
'1985-03-16',
'1985-04-09',
'1985-05-02',
'1985-06-25',
'1985-07-02',
'1985-08-01',
'1985-09-13',
'1985-10-04',
'1985-11-04',
'1985-12-27',
'1986-01-17',
'1986-02-07',
'1986-03-13',
'1986-04-15',
'1986-05-27',
'1986-06-02',
'1986-07-02',
'1986-08-25',
'1986-09-16',
'1986-10-24',
'1986-11-07',
'1986-12-12',
'1987-01-16',
'1987-02-03',
'1987-03-02',
'1987-04-14',
'1987-05-14',
'1987-06-25',
'1987-07-27',
'1987-08-27',
'1987-09-01',
'1987-10-20',
'1987-11-20',
'1987-12-15',
'1988-01-08',
'1988-02-18',
'1988-03-04',
'1988-04-19',
'1988-05-05',
'1988-06-13',
'1988-07-01',
'1988-08-02',
'1988-09-24',
'1988-10-24',
'1988-11-18',
'1988-12-23',
'1989-01-06',
'1989-02-01',
'1989-03-02',
'1989-04-07',
'1989-05-13',
'1989-06-06',
'1989-07-20',
'1989-08-23',
'1989-09-01',
'1989-10-04',
'1989-11-24',
'1989-12-15',
'1990-01-08',
'1990-02-09',
'1990-03-22',
'1990-04-09',
'1990-05-01',
'1990-06-22',
'1990-07-27',
'1990-08-17',
'1990-09-03',
'1990-10-26',
'1990-11-21',
'1990-12-04',
'1991-01-03',
'1991-02-08',
'1991-03-20',
'1991-04-26',
'1991-05-31',
'1991-06-18',
'1991-07-08',
'1991-08-10',
'1991-09-17',
'1991-10-31',
'1991-11-01',
'1991-12-17',
'1992-01-29',
'1992-02-21',
'1992-03-24',
'1992-04-13',
'1992-05-25',
'1992-06-11',
'1992-07-22',
'1992-08-12',
'1992-09-09',
'1992-10-09',
'1992-11-04',
'1992-12-08',
'1993-01-08',
'1993-02-22',
'1993-03-11',
'1993-04-20',
'1993-05-03',
'1993-06-08',
'1993-07-22',
'1993-08-02',
'1993-09-16',
'1993-10-06',
'1993-11-10',
'1993-12-06',
'1994-01-28',
'1994-02-01',
'1994-03-02',
'1994-04-01',
'1994-05-03',
'1994-06-03',
'1994-07-29',
'1994-08-12',
'1994-09-02',
'1994-10-05',
'1994-11-04',
'1994-12-09',
'1995-01-25',
'1995-02-28',
'1995-03-01',
'1995-04-28',
'1995-05-30',
'1995-06-02',
'1995-07-20',
'1995-08-29',
'1995-09-04',
'1995-10-13',
'1995-11-21',
'1995-12-21',
'1996-01-23',
'1996-02-13',
'1996-03-15',
'1996-04-26',
'1996-05-29',
'1996-06-14',
'1996-07-12',
'1996-08-01',
'1996-09-02',
'1996-10-03',
'1996-11-27',
'1996-12-20',
'1997-01-20',
'1997-02-04',
'1997-03-18',
'1997-04-22',
'1997-05-26',
'1997-06-12',
'1997-07-11',
'1997-08-15',
'1997-09-01',
'1997-10-09',
'1997-11-12',
'1997-12-11',
'1998-01-12',
'1998-02-13',
'1998-03-13',
'1998-04-20',
'1998-05-01',
'1998-06-10',
'1998-07-29',
'1998-08-28',
'1998-09-01',
'1998-10-02',
'1998-11-02',
'1998-12-01',
'1999-01-21',
'1999-02-08',
'1999-03-11',
'1999-04-09',
'1999-05-11',
'1999-06-15',
'1999-07-01',
'1999-08-10',
'1999-09-01',
'1999-10-28',
'1999-11-16',
'1999-12-21',
'2000-01-07',
'2000-02-03',
'2000-03-21',
'2000-04-13',
'2000-05-16',
'2000-06-23',
'2000-07-27',
'2000-08-23',
'2000-09-20',
'2000-10-03',
'2000-11-21',
'2000-12-01',
'2001-01-12',
'2001-02-08',
'2001-03-06',
'2001-04-24',
'2001-05-08',
'2001-06-07',
'2001-07-19',
'2001-08-24',
'2001-09-17',
'2001-10-03',
'2001-11-07',
'2001-12-19',
'2002-01-04',
'2002-02-04',
'2002-03-05',
'2002-04-17',
'2002-05-07',
'2002-06-04',
'2002-07-16',
'2002-08-01',
'2002-09-13',
'2002-10-02',
'2002-11-11',
'2002-12-27',
'2003-01-16',
'2003-02-13',
'2003-03-20',
'2003-04-11',
'2003-05-08',
'2003-06-05',
'2003-07-03',
'2003-08-21',
'2003-09-04',
'2003-10-14',
'2003-11-13',
'2003-12-18',
'2004-01-27',
'2004-02-20',
'2004-03-19',
'2004-04-02',
'2004-05-19',
'2004-06-01',
'2004-07-12',
'2004-08-25',
'2004-09-14',
'2004-10-08',
'2004-11-11',
'2004-12-02',
'2005-01-19',
'2005-02-04',
'2005-03-30',
'2005-04-04',
'2005-05-31',
'2005-06-28',
'2005-07-01',
'2005-08-10',
'2005-09-20',
'2005-10-04',
'2005-11-28',
'2005-12-06',
'2006-01-04',
'2006-02-22',
'2006-03-16',
'2006-04-03',
'2006-05-05',
'2006-06-16',
'2006-07-31',
'2006-08-14',
'2006-09-13',
'2006-10-31',
'2006-11-09',
'2006-12-20',
'2007-01-24',
'2007-02-21',
'2007-03-12',
'2007-04-16',
'2007-05-17',
'2007-06-22',
'2007-07-30',
'2007-08-21',
'2007-09-03',
'2007-10-29',
'2007-11-14',
'2007-12-27',
'2008-01-28',
'2008-02-12',
'2008-03-24',
'2008-04-10',
'2008-05-01',
'2008-06-09',
'2008-07-15',
'2008-08-12',
'2008-09-18',
'2008-10-17',
'2008-11-21',
'2008-12-03',
'2009-01-05',
'2009-02-16',
'2009-03-24',
'2009-04-08',
'2009-05-25',
'2009-06-09',
'2009-07-27',
'2009-08-21',
'2009-09-28',
'2009-10-02',
'2009-11-27',
'2009-12-22',
'2010-01-20',
'2010-02-12',
'2010-03-29',
'2010-04-19',
'2010-05-18',
'2010-06-09',
'2010-07-02',
'2010-08-20',
'2010-09-17',
'2010-10-14',
'2010-11-09',
'2010-12-06',
'2011-01-21',
'2011-02-01',
'2011-03-08',
'2011-04-28',
'2011-05-24',
'2011-06-10',
'2011-07-20',
'2011-08-02',
'2011-09-22',
'2011-10-11',
'2011-11-10',
'2011-12-13',
'2012-01-06',
'2012-02-03',
'2012-03-22',
'2012-04-25',
'2012-05-14',
'2012-06-28',
'2012-07-13',
'2012-08-06',
'2012-09-18',
'2012-10-11',
'2012-11-05',
'2012-12-05',
'2013-01-18',
'2013-02-21',
'2013-03-13',
'2013-04-10')
GROUP BY docdb_family_id

-- Stratified Sampling based on relative statistics
DELETE FROM patent_families 
WHERE
   (jurisdiction = 'AU' AND DAY(appln_filing_date) >25)
OR (jurisdiction = 'HU' AND DAY(appln_filing_date) >17)
OR (jurisdiction = 'BR' AND DAY(appln_filing_date) >16)
OR (jurisdiction = 'PL' AND DAY(appln_filing_date) >15)
OR (jurisdiction = 'SK' AND DAY(appln_filing_date) >15)
OR (jurisdiction = 'LT' AND DAY(appln_filing_date) >15)
OR (jurisdiction = 'LV' AND DAY(appln_filing_date) >12)
OR (jurisdiction = 'EE' AND DAY(appln_filing_date) >12)
OR (jurisdiction = 'IS' AND DAY(appln_filing_date) >11)
OR (jurisdiction = 'CZ' AND DAY(appln_filing_date) >10)
OR (jurisdiction = 'SI' AND DAY(appln_filing_date) >10)
OR (jurisdiction = 'LU' AND DAY(appln_filing_date) >10)
OR (jurisdiction = 'PT' AND DAY(appln_filing_date) >9)
OR (jurisdiction = 'IE' AND DAY(appln_filing_date) >9)
OR (jurisdiction = 'FI' AND DAY(appln_filing_date) >9)
OR (jurisdiction = 'RO' AND DAY(appln_filing_date) >9)
OR (jurisdiction = 'HR' AND DAY(appln_filing_date) >8)
OR (jurisdiction = 'BG' AND DAY(appln_filing_date) >8)
OR (jurisdiction = 'LI' AND DAY(appln_filing_date) >8)
OR (jurisdiction = 'DK' AND DAY(appln_filing_date) >8)
OR (jurisdiction = 'TR' AND DAY(appln_filing_date) >8)
OR (jurisdiction = 'MC' AND DAY(appln_filing_date) >8)
OR (jurisdiction = 'GR' AND DAY(appln_filing_date) >8)
OR (jurisdiction = 'CA' AND DAY(appln_filing_date) >7)
OR (jurisdiction = 'TW' AND DAY(appln_filing_date) >7)
OR (jurisdiction = 'ES' AND DAY(appln_filing_date) >6)
OR (jurisdiction = 'SE' AND DAY(appln_filing_date) >6)
OR (jurisdiction = 'BE' AND DAY(appln_filing_date) >6)
OR (jurisdiction = 'CY' AND DAY(appln_filing_date) >6)
OR (jurisdiction = 'GB' AND DAY(appln_filing_date) >6)
OR (jurisdiction = 'CH' AND DAY(appln_filing_date) >6)
OR (jurisdiction = 'IT' AND DAY(appln_filing_date) >6)
OR (jurisdiction = 'NL' AND DAY(appln_filing_date) >5)
OR (jurisdiction = 'RU' AND DAY(appln_filing_date) >5)
OR (jurisdiction = 'AT' AND DAY(appln_filing_date) >4)
OR (jurisdiction = 'EP' AND DAY(appln_filing_date) >3)
OR (jurisdiction = 'FR' AND DAY(appln_filing_date) >3)
OR (jurisdiction = 'CN' AND DAY(appln_filing_date) >3)
OR (jurisdiction = 'DE' AND DAY(appln_filing_date) >2)
-- JP and US are handled directly given volume, the fraction of days retained is based on JP
COMMIT;


/*
-- INDICES TO MAKE THINGS FASTER

DELETE FROM patent_families WHERE appln_filing_date = '9999-12-31';


ALTER TABLE `patstat2014a`.`patent_families` 
ADD INDEX `appln_id` (`appln_id` ASC);

ALTER TABLE `patstat2014a`.`patent_families` 
ADD INDEX `appln_id` (`appln_id` ASC);

---------------------------------------
-- UPDATE THE NORMAL PATENT'S END DATES
---------------------------------------

-- GENERAL AGE : Every patent gets an age
UPDATE patent_families patfams 
STRAIGHT_JOIN tls221_inpadoc_prs prs USING(appln_id)
STRAIGHT_JOIN legal_event_code USING(lec_id)
SET patfams.death = prs.prs_gazette_date
WHERE
lecg_id IN (3,6,7);

-- GENERAL AGE : Overwrite all of the them with the l525ep effective if it is good
UPDATE patent_families patfams 
STRAIGHT_JOIN tls221_inpadoc_prs prs USING(appln_id)
STRAIGHT_JOIN legal_event_code USING(lec_id)
SET patfams.death = prs.l525ep
WHERE
lecg_id IN (3,6,7)
AND
l525ep != '9999-12-31';

#######################################
-- SPECIFIC TO SWITZERLAND USING BAGIS..good info
UPDATE patent_families 
STRAIGHT_JOIN 
-- HERE ARE THE NATIONAL PATENTS FROM BAGIS
(SELECT appln_id, EREIGNISDATUM
FROM tls211_pat_publn pub STRAIGHT_JOIN BAGIS ON (LEFT(BAGISNUMMER,LENGTH(BAGISNUMMER)-1) = pub.publn_nr)
WHERE
publn_auth = 'CH'
AND
auth = 'CH'
) updator USING(appln_id)

SET patent_families.death = updator.EREIGNISDATUM
WHERE
patent_families.publn_auth = 'CH';


-- HERE ARE THE NATIONAL PATENTS FROM BAGIS
UPDATE patent_families 
STRAIGHT_JOIN 
(SELECT appln_id, EREIGNISDATUM
FROM tls211_pat_publn pub STRAIGHT_JOIN BAGIS ON (LEFT(BAGISNUMMER,LENGTH(BAGISNUMMER)-1) = pub.publn_nr)
WHERE
publn_auth = 'EP'
AND
auth = 'EP'
) updator USING(appln_id)

SET patent_families.death = updator.EREIGNISDATUM

WHERE
patent_families.publn_auth = 'EP'
AND
patent_families.jurisdiction = 'CH';
###########END BAGIS UPDATE################
*/

-- MAX DAYS ALIVE 
INSERT INTO patent_families (daysAlive)
SELECT DATEDIFF(death,appln_filing_date) AS daysAlive
FROM patent_families
WHERE death IS NOT NULL;


/*
-- NOW PURGE MISSING OR BAD RECORDS BASED ON PERIOD
#############
#TRIMMING DEAD DATA
#########
DELETE FROM patent_families WHERE
jurisdiction = 'AR'
AND
appln_filing_date < '1995-01-01';
COMMIT;
#AUSTRIA
DELETE FROM patent_families WHERE
jurisdiction = 'AT'
AND
appln_filing_date < '1980-01-01';
COMMIT;

###
#AUSTRALIA
DELETE FROM patent_families WHERE
jurisdiction = 'AU'
AND
appln_filing_date < '1980-01-01';
COMMIT;

SELECT COUNT(*) FROM patent_families;


###
#BELGIUM
DELETE FROM patent_families WHERE
jurisdiction = 'BE'
AND
appln_filing_date < '1980-01-01';
COMMIT;


###
#BRAZIL
DELETE FROM patent_families WHERE
jurisdiction = 'BR'
AND
appln_filing_date < '1988-01-01';
COMMIT;


###
#CH: Switzerland
###
DELETE FROM patent_families WHERE
jurisdiction = 'CH'
AND
appln_filing_date < '1980-01-01';
COMMIT;


###
#CA
###
DELETE FROM patent_families WHERE
jurisdiction = 'CA'
AND
appln_filing_date < '1997-01-01';
COMMIT;
###
#CN
###
DELETE FROM patent_families WHERE
jurisdiction = 'CN'
AND
appln_filing_date < '1985-01-01';
COMMIT;

###
#CO
###
DELETE FROM patent_families WHERE
jurisdiction = 'CO'
AND
appln_filing_date < '1997-01-01';
COMMIT;
###
#CR
###
DELETE FROM patent_families WHERE
jurisdiction = 'CR'
AND
appln_filing_date < '1992-01-01';
COMMIT;

###CU
DELETE FROM patent_families WHERE
jurisdiction = 'CU'
AND
appln_filing_date < '1992-01-01';
COMMIT;

DELETE FROM patent_families WHERE
jurisdiction = 'DE'
AND
appln_filing_date < '1980-01-01';
COMMIT;


DELETE FROM patent_families WHERE
jurisdiction = 'DK'
AND
appln_filing_date < '1980-01-01';
COMMIT;


DELETE FROM patent_families WHERE
publn_auth = 'EP'
AND
appln_filing_date < '1980-01-01';
COMMIT;


DELETE FROM patent_families WHERE
publn_auth = 'ES'
AND
appln_filing_date < '1980-01-01';
COMMIT;


DELETE FROM patent_families WHERE
publn_auth = 'FI'
AND
appln_filing_date < '1980-01-01';
COMMIT;

DELETE FROM patent_families WHERE
publn_auth = 'FR'
AND
appln_filing_date < '1980-01-01';
COMMIT;

DELETE FROM patent_families WHERE
publn_auth = 'FR'
AND
appln_filing_date < '1980-01-01';
COMMIT;

DELETE FROM patent_families WHERE
jurisdiction = 'HK'
AND
appln_filing_date < '1992-01-01';
COMMIT;

DELETE FROM patent_families WHERE
jurisdiction = 'HU'
AND
appln_filing_date < '1991-01-01';
COMMIT;

DELETE FROM patent_families WHERE
jurisdiction = 'IE'
AND
appln_filing_date < '1980-01-01';
COMMIT;

DELETE FROM patent_families WHERE
jurisdiction = 'IL'
AND
appln_filing_date < '1980-01-01';
COMMIT;



DELETE FROM patent_families WHERE
jurisdiction = 'JP'
AND
appln_filing_date < '1980-01-01';
COMMIT;


DELETE FROM patent_families WHERE
jurisdiction = 'LT'
AND
appln_filing_date < '1992-01-01';
COMMIT;

DELETE FROM patent_families WHERE
jurisdiction = 'MD'
AND
appln_filing_date < '1992-01-01';
COMMIT;


DELETE FROM patent_families WHERE
jurisdiction = 'NL'
AND
appln_filing_date < '1980-01-01';
COMMIT;


DELETE FROM patent_families WHERE
jurisdiction = 'NO'
AND
appln_filing_date < '1980-01-01';
COMMIT;


DELETE FROM patent_families WHERE
jurisdiction = 'NZ'
AND
appln_filing_date < '1990-01-01';
COMMIT;


DELETE FROM patent_families WHERE
jurisdiction = 'PL'
AND
appln_filing_date < '1980-01-01';
COMMIT;

DELETE FROM patent_families WHERE
jurisdiction = 'PT'
AND
appln_filing_date < '1980-01-01';
COMMIT;

DELETE FROM patent_families WHERE
jurisdiction = 'RU'
AND
appln_filing_date < '1992-01-01';
COMMIT;

DELETE FROM patent_families WHERE
jurisdiction = 'SI'
AND
appln_filing_date < '1994-01-01';
COMMIT;


DELETE FROM patent_families WHERE
jurisdiction = 'TW'
AND
appln_filing_date < '1992-01-01';
COMMIT;



DELETE FROM patent_families WHERE
jurisdiction = 'SE'
AND
appln_filing_date < '1980-01-01';
COMMIT;


DELETE FROM patent_families WHERE
jurisdiction = 'GR'
AND
appln_filing_date < '1986-01-01';
COMMIT;

*/



/*
-- NOW COMPUTE DAYS

SET SQL_SAFE_UPDATES = 0;
UPDATE patent_families
SET daysAlive = DATEDIFF(death,appln_filing_date);
COMMIT;

-- ADD IN FEE COLUMNS
ALTER TABLE patent_families
ADD COLUMN `FEE1` DOUBLE(64,3) AFTER `daysAlive`,
ADD COLUMN `FEE2` DOUBLE(64,3) AFTER `FEE1`,
ADD COLUMN `FEE3` DOUBLE(64,3) AFTER `FEE2`,
ADD COLUMN `FEE4` DOUBLE(64,3) AFTER `FEE3`,
ADD COLUMN `FEE5` DOUBLE(64,3) AFTER `FEE4`,
ADD COLUMN `FEE6` DOUBLE(64,3) AFTER `FEE5`,
ADD COLUMN `FEE7` DOUBLE(64,3) AFTER `FEE6`,
ADD COLUMN `FEE8` DOUBLE(64,3) AFTER `FEE7`,
ADD COLUMN `FEE9` DOUBLE(64,3) AFTER `FEE8`,
ADD COLUMN `FEE10` DOUBLE(64,3) AFTER `FEE9`,
ADD COLUMN `FEE11` DOUBLE(64,3) AFTER `FEE10`,
ADD COLUMN `FEE12` DOUBLE(64,3) AFTER `FEE11`,
ADD COLUMN `FEE13` DOUBLE(64,3) AFTER `FEE12`,
ADD COLUMN `FEE14` DOUBLE(64,3) AFTER `FEE13`,
ADD COLUMN `FEE15` DOUBLE(64,3)AFTER `FEE14`,
ADD COLUMN `FEE16` DOUBLE(64,3) AFTER `FEE15`,
ADD COLUMN `FEE17` DOUBLE(64,3) AFTER `FEE16`,
ADD COLUMN `FEE18` DOUBLE(64,3) AFTER `FEE17`,
ADD COLUMN `FEE19` DOUBLE(64,3) AFTER `FEE18`,
ADD COLUMN `FEE20` DOUBLE(64,3) AFTER `FEE19`;



#Hello 
SET SQL_SAFE_UPDATES = 0;
UPDATE patent_families
SET daysAlive = DATEDIFF(death,appln_filing_date);
COMMIT;


ALTER TABLE patent_families ADD cohort YEAR AFTER jurisdiction;
SET SQL_SAFE_UPDATES = 0;

UPDATE patent_families
SET cohort = YEAR(appln_filing_date);
COMMIT;

SET SQL_SAFE_UPDATES = 0;
ALTER TABLE patent_families ADD cohortMonth TINYINT AFTER cohort;
UPDATE patent_families
SET cohortMonth = MONTH(appln_filing_date);
COMMIT;
*/

-- START FEE SET UP...
DROP PROCEDURE IF EXISTS feeUpdate;
delimiter //
CREATE PROCEDURE feeUpdate(cc CHAR(2),cohortYear INT(11)) -- ,monat INT(11))
BEGIN
DECLARE censorYear INT(11);
SET censorYear = 2030;#Data ends in 2014, so this This is the year after the last place in the 
SET SQL_SAFE_UPDATES = 0;
UPDATE patent_families 
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

SET
FEE1 = ROUND(f1.Y1/fx1.fxUSD,2),
FEE2 = ROUND(f2.Y2/fx2.fxUSD,2), 
FEE3 = ROUND(f3.Y3/fx3.fxUSD,2),  
FEE4 = ROUND(f4.Y4/fx4.fxUSD,2), 
FEE5 = ROUND(f5.Y5/fx5.fxUSD,2),  
FEE6 = ROUND(f6.Y6/fx6.fxUSD,2),  
FEE7 = ROUND(f7.Y7/fx7.fxUSD,2),  
FEE8 = ROUND(f8.Y8/fx8.fxUSD,2),  
FEE9 = ROUND(f9.Y9/fx9.fxUSD,2),  
FEE10 = ROUND(f10.Y10/fx10.fxUSD,2),  
FEE11 = ROUND(f11.Y11/fx11.fxUSD,2),  
FEE12 = ROUND(f12.Y12/fx12.fxUSD,2),  
FEE13 = ROUND(f13.Y13/fx13.fxUSD,2),   
FEE14 = ROUND(f14.Y14/fx14.fxUSD,2),  
FEE15 = ROUND(f15.Y15/fx15.fxUSD,2),  
FEE16 = ROUND(f16.Y16/fx16.fxUSD,2),  
FEE17 = ROUND(f17.Y17/fx17.fxUSD,2),  
FEE18 = ROUND(f18.Y18/fx18.fxUSD,2),  
FEE19 = ROUND(f19.Y19/fx19.fxUSD,2),  
FEE20 = ROUND(f20.Y20/fx20.fxUSD,2)  

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
AND jurisdiction = cc
AND cohort = cohortYear;




COMMIT;



/*
SET @jahr = 1;
UPDATE patent_families 
STRAIGHT_JOIN PAT_FEES f ON ((DATE_ADD(appln_filing_date, INTERVAL @jahr YEAR) BETWEEN f.entryIntoForce AND f.endInForce) AND (jurisdiction = f.fee_auth))
STRAIGHT_JOIN FX fx ON (f.currency = fx.currency)
SET FEE1 = ROUND(Y1/fxUSD,2)
WHERE f.feeClass = 'reg' AND fx.year = (cohort+@jahr) AND fx.month = cohortMonth
AND jurisdiction = cc
AND cohort = cohortYear;
COMMIT;

SET @jahr = 2;
UPDATE patent_families 
STRAIGHT_JOIN PAT_FEES f ON ((DATE_ADD(appln_filing_date, INTERVAL @jahr YEAR) BETWEEN f.entryIntoForce AND f.endInForce) AND (jurisdiction = f.fee_auth))
STRAIGHT_JOIN FX fx ON (f.currency = fx.currency)
SET FEE2 = ROUND(Y2/fxUSD,2)
WHERE f.feeClass = 'reg' AND fx.year = (cohort+@jahr) AND fx.month = cohortMonth
AND jurisdiction = cc
AND cohort = cohortYear;
COMMIT;

SET @jahr = 3;
UPDATE patent_families 
STRAIGHT_JOIN PAT_FEES f ON ((DATE_ADD(appln_filing_date, INTERVAL @jahr YEAR) BETWEEN f.entryIntoForce AND f.endInForce) AND (jurisdiction = f.fee_auth))
STRAIGHT_JOIN FX fx ON (f.currency = fx.currency)
SET FEE3 = ROUND(Y3/fxUSD,2)
WHERE f.feeClass = 'reg' AND fx.year = (cohort+@jahr) AND fx.month = cohortMonth
AND jurisdiction = cc
AND cohort = cohortYear;
COMMIT;

SET @jahr = 4;
UPDATE patent_families 
STRAIGHT_JOIN PAT_FEES f ON ((DATE_ADD(appln_filing_date, INTERVAL @jahr YEAR) BETWEEN f.entryIntoForce AND f.endInForce) AND (jurisdiction = f.fee_auth))
STRAIGHT_JOIN FX fx ON (f.currency = fx.currency)
SET FEE4 = ROUND(Y4/fxUSD,2)
WHERE f.feeClass = 'reg' AND fx.year = (cohort+@jahr) AND fx.month = cohortMonth
AND jurisdiction = cc
AND cohort = cohortYear;
COMMIT;

SET @jahr = 5;
UPDATE patent_families 
STRAIGHT_JOIN PAT_FEES f ON ((DATE_ADD(appln_filing_date, INTERVAL @jahr YEAR) BETWEEN f.entryIntoForce AND f.endInForce) AND (jurisdiction = f.fee_auth))
STRAIGHT_JOIN FX fx ON (f.currency = fx.currency)
SET FEE5 = ROUND(Y5/fxUSD,2)
WHERE f.feeClass = 'reg' AND fx.year = (cohort+@jahr) AND fx.month = cohortMonth
AND jurisdiction = cc
AND cohort = cohortYear;
COMMIT;

SET @jahr = 6;
UPDATE patent_families 
STRAIGHT_JOIN PAT_FEES f ON ((DATE_ADD(appln_filing_date, INTERVAL @jahr YEAR) BETWEEN f.entryIntoForce AND f.endInForce) AND (jurisdiction = f.fee_auth))
STRAIGHT_JOIN FX fx ON (f.currency = fx.currency)
SET FEE6 = ROUND(Y6/fxUSD,2)
WHERE f.feeClass = 'reg' AND fx.year = (cohort+@jahr) AND fx.month = cohortMonth
AND jurisdiction = cc
AND cohort = cohortYear;
COMMIT;

SET @jahr = 7;
UPDATE patent_families 
STRAIGHT_JOIN PAT_FEES f ON ((DATE_ADD(appln_filing_date, INTERVAL @jahr YEAR) BETWEEN f.entryIntoForce AND f.endInForce) AND (jurisdiction = f.fee_auth))
STRAIGHT_JOIN FX fx ON (f.currency = fx.currency)
SET FEE7 = ROUND(Y7/fxUSD,2)
WHERE f.feeClass = 'reg' AND fx.year = (cohort+@jahr) AND fx.month = cohortMonth
AND jurisdiction = cc
AND cohort = cohortYear;
COMMIT;

SET @jahr = 8;
UPDATE patent_families 
STRAIGHT_JOIN PAT_FEES f ON ((DATE_ADD(appln_filing_date, INTERVAL @jahr YEAR) BETWEEN f.entryIntoForce AND f.endInForce) AND (jurisdiction = f.fee_auth))
STRAIGHT_JOIN FX fx ON (f.currency = fx.currency)
SET FEE8 = ROUND(Y8/fxUSD,2)
WHERE f.feeClass = 'reg' AND fx.year = (cohort+@jahr) AND fx.month = cohortMonth
AND jurisdiction = cc
AND cohort = cohortYear;
COMMIT;

SET @jahr = 9;
UPDATE patent_families 
STRAIGHT_JOIN PAT_FEES f ON ((DATE_ADD(appln_filing_date, INTERVAL @jahr YEAR) BETWEEN f.entryIntoForce AND f.endInForce) AND (jurisdiction = f.fee_auth))
STRAIGHT_JOIN FX fx ON (f.currency = fx.currency)
SET FEE9 = ROUND(Y9/fxUSD,2)
WHERE f.feeClass = 'reg' AND fx.year = (cohort+@jahr) AND fx.month = cohortMonth
AND jurisdiction = cc
AND cohort = cohortYear;
COMMIT;

SET @jahr = 10;
UPDATE patent_families 
STRAIGHT_JOIN PAT_FEES f ON ((DATE_ADD(appln_filing_date, INTERVAL @jahr YEAR) BETWEEN f.entryIntoForce AND f.endInForce) AND (jurisdiction = f.fee_auth))
STRAIGHT_JOIN FX fx ON (f.currency = fx.currency)
SET FEE10 = ROUND(Y10/fxUSD,2)
WHERE f.feeClass = 'reg' AND fx.year = (cohort+@jahr) AND fx.month = cohortMonth
AND jurisdiction = cc
AND cohort = cohortYear;
COMMIT;

SET @jahr = 11;
UPDATE patent_families 
STRAIGHT_JOIN PAT_FEES f ON ((DATE_ADD(appln_filing_date, INTERVAL @jahr YEAR) BETWEEN f.entryIntoForce AND f.endInForce) AND (jurisdiction = f.fee_auth))
STRAIGHT_JOIN FX fx ON (f.currency = fx.currency)
SET FEE11 = ROUND(Y11/fxUSD,2)
WHERE f.feeClass = 'reg' AND fx.year = (cohort+@jahr) AND fx.month = cohortMonth
AND jurisdiction = cc
AND cohort = cohortYear;
COMMIT;

SET @jahr = 12;
UPDATE patent_families 
STRAIGHT_JOIN PAT_FEES f ON ((DATE_ADD(appln_filing_date, INTERVAL @jahr YEAR) BETWEEN f.entryIntoForce AND f.endInForce) AND (jurisdiction = f.fee_auth))
STRAIGHT_JOIN FX fx ON (f.currency = fx.currency)
SET FEE12 = ROUND(Y12/fxUSD,2)
WHERE f.feeClass = 'reg' AND fx.year = (cohort+@jahr) AND fx.month = cohortMonth
AND jurisdiction = cc
AND cohort = cohortYear;
COMMIT;

SET @jahr = 13;
UPDATE patent_families 
STRAIGHT_JOIN PAT_FEES f ON ((DATE_ADD(appln_filing_date, INTERVAL @jahr YEAR) BETWEEN f.entryIntoForce AND f.endInForce) AND (jurisdiction = f.fee_auth))
STRAIGHT_JOIN FX fx ON (f.currency = fx.currency)
SET FEE13 = ROUND(Y13/fxUSD,2)
WHERE f.feeClass = 'reg' AND fx.year = (cohort + @jahr) AND fx.month = cohortMonth
AND jurisdiction = cc
AND cohort = cohortYear;
COMMIT;

SET @jahr = 14;
UPDATE patent_families 
STRAIGHT_JOIN PAT_FEES f ON ((DATE_ADD(appln_filing_date, INTERVAL @jahr YEAR) BETWEEN f.entryIntoForce AND f.endInForce) AND (jurisdiction = f.fee_auth))
STRAIGHT_JOIN FX fx ON (f.currency = fx.currency)
SET FEE14 = ROUND(Y14/fxUSD,2)
WHERE f.feeClass = 'reg' AND fx.year = (cohort + @jahr) AND fx.month = cohortMonth
AND jurisdiction = cc
AND cohort = cohortYear;
COMMIT;

SET @jahr = 15;
UPDATE patent_families 
STRAIGHT_JOIN PAT_FEES f ON ((DATE_ADD(appln_filing_date, INTERVAL @jahr YEAR) BETWEEN f.entryIntoForce AND f.endInForce) AND (jurisdiction = f.fee_auth))
STRAIGHT_JOIN FX fx ON (f.currency = fx.currency)
SET FEE15 = ROUND(Y15/fxUSD,2)
WHERE f.feeClass = 'reg' AND fx.year = (cohort + @jahr) AND fx.month = cohortMonth
AND jurisdiction = cc
AND cohort = cohortYear;
COMMIT;

SET @jahr = 16;
UPDATE patent_families 
STRAIGHT_JOIN PAT_FEES f ON ((DATE_ADD(appln_filing_date, INTERVAL @jahr YEAR) BETWEEN f.entryIntoForce AND f.endInForce) AND (jurisdiction = f.fee_auth))
STRAIGHT_JOIN FX fx ON (f.currency = fx.currency)
SET FEE16 = ROUND(Y16/fxUSD,2)
WHERE f.feeClass = 'reg' AND fx.year = (cohort + @jahr) AND fx.month = cohortMonth
AND jurisdiction = cc
AND cohort = cohortYear;
COMMIT;

SET @jahr = 17;
UPDATE patent_families 
STRAIGHT_JOIN PAT_FEES f ON ((DATE_ADD(appln_filing_date, INTERVAL @jahr YEAR) BETWEEN f.entryIntoForce AND f.endInForce) AND (jurisdiction = f.fee_auth))
STRAIGHT_JOIN FX fx ON (f.currency = fx.currency)
SET FEE17 = ROUND(Y17/fxUSD,2)
WHERE f.feeClass = 'reg' AND fx.year = (cohort + @jahr) AND fx.month = cohortMonth
AND jurisdiction = cc
AND cohort = cohortYear;
COMMIT;

SET @jahr = 18;
UPDATE patent_families 
STRAIGHT_JOIN PAT_FEES f ON ((DATE_ADD(appln_filing_date, INTERVAL @jahr YEAR) BETWEEN f.entryIntoForce AND f.endInForce) AND (jurisdiction = f.fee_auth))
STRAIGHT_JOIN FX fx ON (f.currency = fx.currency)
SET FEE18 = ROUND(Y18/fxUSD,2)
WHERE f.feeClass = 'reg' AND fx.year = (cohort + @jahr) AND fx.month = cohortMonth
AND jurisdiction = cc
AND cohort = cohortYear;
COMMIT;

SET @jahr = 19;
UPDATE patent_families 
STRAIGHT_JOIN PAT_FEES f ON ((DATE_ADD(appln_filing_date, INTERVAL @jahr YEAR) BETWEEN f.entryIntoForce AND f.endInForce) AND (jurisdiction = f.fee_auth))
STRAIGHT_JOIN FX fx ON (f.currency = fx.currency)
SET FEE19 = ROUND(Y19/fxUSD,2)
WHERE f.feeClass = 'reg' AND fx.year = (cohort + @jahr) AND fx.month = cohortMonth
AND jurisdiction = cc
AND cohort = cohortYear;
COMMIT;

SET @jahr = 20;
UPDATE patent_families 
STRAIGHT_JOIN PAT_FEES f ON ((DATE_ADD(appln_filing_date, INTERVAL @jahr YEAR) BETWEEN f.entryIntoForce AND f.endInForce) AND (jurisdiction = f.fee_auth))
STRAIGHT_JOIN FX fx ON (f.currency = fx.currency)
SET FEE20 = ROUND(Y20/fxUSD,2)
WHERE f.feeClass = 'reg' AND fx.year = (cohort + @jahr) AND fx.month = cohortMonth
AND jurisdiction = cc
AND cohort = cohortYear;
*/


COMMIT;
END//
DELIMITER ;


#Do the general case first, then we will over write the EP patents later

/*
##########
#MACRO VARIABLES
##########
-- ADD IN FEE COLUMNS
ALTER TABLE patent_families
ADD COLUMN `GDP1` BIGINT AFTER `FEE20`,
ADD COLUMN `GDP2` BIGINT AFTER `GDP1`,
ADD COLUMN `GDP3` BIGINT AFTER `GDP2`,
ADD COLUMN `GDP4` BIGINT AFTER `GDP3`,
ADD COLUMN `GDP5` BIGINT AFTER `GDP4`,
ADD COLUMN `GDP6` BIGINT AFTER `GDP5`,
ADD COLUMN `GDP7` BIGINT AFTER `GDP6`,
ADD COLUMN `GDP8` BIGINT AFTER `GDP7`,
ADD COLUMN `GDP9` BIGINT AFTER `GDP8`,
ADD COLUMN `GDP10` BIGINT AFTER `GDP9`,
ADD COLUMN `GDP11` BIGINT AFTER `GDP10`,
ADD COLUMN `GDP12` BIGINT AFTER `GDP11`,
ADD COLUMN `GDP13` BIGINT AFTER `GDP12`,
ADD COLUMN `GDP14` BIGINT AFTER `GDP13`,
ADD COLUMN `GDP15` BIGINT AFTER `GDP14`,
ADD COLUMN `GDP16` BIGINT AFTER `GDP15`,
ADD COLUMN `GDP17` BIGINT AFTER `GDP16`,
ADD COLUMN `GDP18` BIGINT AFTER `GDP17`,
ADD COLUMN `GDP19` BIGINT AFTER `GDP18`,
ADD COLUMN `GDP20` BIGINT AFTER `GDP19`;

-- ADD POPULATION
-- ADD IN FEE COLUMNS
ALTER TABLE patent_families
ADD COLUMN `POP1` BIGINT UNSIGNED AFTER `GDP20`,
ADD COLUMN `POP2` BIGINT UNSIGNED AFTER `POP1`,
ADD COLUMN `POP3` BIGINT UNSIGNED AFTER `POP2`,
ADD COLUMN `POP4` BIGINT UNSIGNED AFTER `POP3`,
ADD COLUMN `POP5` BIGINT UNSIGNED AFTER `POP4`,
ADD COLUMN `POP6` BIGINT UNSIGNED AFTER `POP5`,
ADD COLUMN `POP7` BIGINT UNSIGNED AFTER `POP6`,
ADD COLUMN `POP8` BIGINT UNSIGNED AFTER `POP7`,
ADD COLUMN `POP9` BIGINT UNSIGNED AFTER `POP8`,
ADD COLUMN `POP10` BIGINT UNSIGNED AFTER `POP9`,
ADD COLUMN `POP11` BIGINT UNSIGNED AFTER `POP10`,
ADD COLUMN `POP12` BIGINT UNSIGNED AFTER `POP11`,
ADD COLUMN `POP13` BIGINT UNSIGNED AFTER `POP12`,
ADD COLUMN `POP14` BIGINT UNSIGNED AFTER `POP13`,
ADD COLUMN `POP15` BIGINT UNSIGNED AFTER `POP14`,
ADD COLUMN `POP16` BIGINT UNSIGNED AFTER `POP15`,
ADD COLUMN `POP17` BIGINT UNSIGNED AFTER `POP16`,
ADD COLUMN `POP18` BIGINT UNSIGNED AFTER `POP17`,
ADD COLUMN `POP19` BIGINT UNSIGNED AFTER `POP18`,
ADD COLUMN `POP20` BIGINT UNSIGNED AFTER `POP19`;

-- UNEMPLOYMENT
-- ADD IN FEE COLUMNS
ALTER TABLE patent_families
ADD COLUMN `UNM1` DOUBLE(3,3) AFTER `POP20`,
ADD COLUMN `UNM2` DOUBLE(3,3) AFTER `UNM1`,
ADD COLUMN `UNM3` DOUBLE(3,3) AFTER `UNM2`,
ADD COLUMN `UNM4` DOUBLE(3,3) AFTER `UNM3`,
ADD COLUMN `UNM5` DOUBLE(3,3) AFTER `UNM4`,
ADD COLUMN `UNM6` DOUBLE(3,3) AFTER `UNM5`,
ADD COLUMN `UNM7` DOUBLE(3,3) AFTER `UNM6`,
ADD COLUMN `UNM8` DOUBLE(3,3) AFTER `UNM7`,
ADD COLUMN `UNM9` DOUBLE(3,3) AFTER `UNM8`,
ADD COLUMN `UNM10` DOUBLE(3,3) AFTER `UNM9`,
ADD COLUMN `UNM11` DOUBLE(3,3) AFTER `UNM10`,
ADD COLUMN `UNM12` DOUBLE(3,3) AFTER `UNM11`,
ADD COLUMN `UNM13` DOUBLE(3,3) AFTER `UNM12`,
ADD COLUMN `UNM14` DOUBLE(3,3) AFTER `UNM13`,
ADD COLUMN `UNM15` DOUBLE(3,3) AFTER `UNM14`,
ADD COLUMN `UNM16` DOUBLE(3,3) AFTER `UNM15`,
ADD COLUMN `UNM17` DOUBLE(3,3) AFTER `UNM16`,
ADD COLUMN `UNM18` DOUBLE(3,3) AFTER `UNM17`,
ADD COLUMN `UNM19` DOUBLE(3,3) AFTER `UNM18`,
ADD COLUMN `UNM20` DOUBLE(3,3) AFTER `UNM19`;
*/

/*
-- START MACRO SET UP...
DROP PROCEDURE IF EXISTS macroUpdate;
delimiter //
CREATE PROCEDURE macroUpdate(cc CHAR(2),cohortYear INT(11))
BEGIN
DECLARE censorYear INT(11);
SET censorYear = 2015;#Data ends in 2014, so this This is the year after the last place in the 
SET SQL_SAFE_UPDATES = 0;
SET @jahr = 1;

-- IF cohortYear <= (censorYear - @jahr) THEN
UPDATE patent_families 
STRAIGHT_JOIN MACRO_VARS mv ON (mv.year = (cohort+@jahr) AND jurisdiction = country)
SET 
GDP1 = nominalGDPUSD,
UNM1 = unemploymentRate,
POP1 = population
WHERE 
cohort = cohortYear
AND jurisdiction = cc;
-- END IF;

-- IF cohortYear <= (censorYear - @jahr) THEN
SET @jahr = 2;
UPDATE patent_families 
STRAIGHT_JOIN MACRO_VARS mv ON (mv.year = (cohort+@jahr) AND jurisdiction = country)
SET 
GDP2 = nominalGDPUSD,
UNM2 = unemploymentRate,
POP2 = population
WHERE 
cohort = cohortYear
AND jurisdiction = cc;
-- END IF;


-- IF cohortYear <= (censorYear - @jahr) THEN
SET @jahr = 3;
UPDATE patent_families 
STRAIGHT_JOIN MACRO_VARS mv ON (mv.year = (cohort+@jahr) AND jurisdiction = country)
SET
GDP3 = nominalGDPUSD,
UNM3 = unemploymentRate,
POP3 = population
WHERE 
cohort = cohortYear
AND jurisdiction = cc;
-- END IF;


-- IF cohortYear <= (censorYear - @jahr) THEN
SET @jahr = 4;
UPDATE patent_families 
STRAIGHT_JOIN MACRO_VARS mv ON (mv.year = (cohort+@jahr) AND jurisdiction = country)
SET 
GDP4 = nominalGDPUSD,
UNM4 = unemploymentRate,
POP4 = population
WHERE 
cohort = cohortYear
AND jurisdiction = cc;
-- END IF;


-- IF cohortYear <= (censorYear - @jahr) THEN
SET @jahr = 5;
UPDATE patent_families 
STRAIGHT_JOIN MACRO_VARS mv ON (mv.year = (cohort+@jahr) AND jurisdiction = country)
SET 
GDP5 = nominalGDPUSD,
UNM5 = unemploymentRate,
POP5 = population
WHERE 
cohort = cohortYear
AND jurisdiction = cc;
-- END IF;

-- IF cohortYear <= (censorYear - @jahr) THEN
SET @jahr = 6;
UPDATE patent_families 
STRAIGHT_JOIN MACRO_VARS mv ON (mv.year = (cohort+@jahr) AND jurisdiction = country)
SET 
GDP6 = nominalGDPUSD,
UNM6 = unemploymentRate,
POP6 = population
WHERE 
cohort = cohortYear
AND jurisdiction = cc;
-- END IF;


-- IF cohortYear <= (censorYear - @jahr) THEN
SET @jahr = 7;
UPDATE patent_families 
STRAIGHT_JOIN MACRO_VARS mv ON (mv.year = (cohort+@jahr) AND jurisdiction = country)
SET 
GDP7 = nominalGDPUSD,
UNM7 = unemploymentRate,
POP7 = population
WHERE 
cohort = cohortYear
AND jurisdiction = cc;
-- END IF;


-- IF cohortYear <= (censorYear - @jahr) THEN
SET @jahr = 8;
UPDATE patent_families 
STRAIGHT_JOIN MACRO_VARS mv ON (mv.year = (cohort+@jahr) AND jurisdiction = country)
SET 
GDP8 = nominalGDPUSD,
UNM8 = unemploymentRate,
POP8 = population
WHERE 
cohort = cohortYear
AND jurisdiction = cc;
-- END IF;


-- IF cohortYear <= (censorYear - @jahr) THEN
SET @jahr = 9;
UPDATE patent_families 
STRAIGHT_JOIN MACRO_VARS mv ON (mv.year = (cohort+@jahr) AND jurisdiction = country)
SET 
GDP9 = nominalGDPUSD,
UNM9 = unemploymentRate,
POP9 = population
WHERE 
cohort = cohortYear
AND jurisdiction = cc;
-- END IF;


-- IF cohortYear <= (censorYear - @jahr) THEN
SET @jahr = 10;
UPDATE patent_families 
STRAIGHT_JOIN MACRO_VARS mv ON (mv.year = (cohort+@jahr) AND jurisdiction = country)
SET 
GDP10 = nominalGDPUSD,
UNM10 = unemploymentRate,
POP10 = population
WHERE 
cohort = cohortYear
AND jurisdiction = cc;
-- END IF;


-- IF cohortYear <= (censorYear - @jahr) THEN
SET @jahr = 11;
UPDATE patent_families 
STRAIGHT_JOIN MACRO_VARS mv ON (mv.year = (cohort+@jahr) AND jurisdiction = country)
SET 
GDP11 = nominalGDPUSD,
UNM11 = unemploymentRate,
POP11 = population
WHERE 
cohort = cohortYear
AND jurisdiction = cc;
-- END IF;


-- IF cohortYear <= (censorYear - @jahr) THEN
SET @jahr = 12;
UPDATE patent_families 
STRAIGHT_JOIN MACRO_VARS mv ON (mv.year = (cohort+@jahr) AND jurisdiction = country)
SET 
GDP12 = nominalGDPUSD,
UNM12 = unemploymentRate,
POP12 = population
WHERE 
cohort = cohortYear
AND jurisdiction = cc;
-- END IF;


-- IF cohortYear <= (censorYear - @jahr) THEN
SET @jahr = 13;
UPDATE patent_families 
STRAIGHT_JOIN MACRO_VARS mv ON (mv.year = (cohort+@jahr) AND jurisdiction = country)
SET 
GDP13 = nominalGDPUSD,
UNM13 = unemploymentRate,
POP13 = population
WHERE 
cohort = cohortYear
AND jurisdiction = cc;
-- END IF;


-- IF cohortYear <= (censorYear - @jahr) THEN
SET @jahr = 14;
UPDATE patent_families 
STRAIGHT_JOIN MACRO_VARS mv ON (mv.year = (cohort+@jahr) AND jurisdiction = country)
SET 
GDP14 = nominalGDPUSD,
UNM14 = unemploymentRate,
POP14 = population
WHERE 
cohort = cohortYear
AND jurisdiction = cc;
-- END IF;


-- IF cohortYear <= (censorYear - @jahr) THEN
SET @jahr = 15;
UPDATE patent_families 
STRAIGHT_JOIN MACRO_VARS mv ON (mv.year = (cohort+@jahr) AND jurisdiction = country)
SET 
GDP15 = nominalGDPUSD,
UNM15 = unemploymentRate,
POP15 = population
WHERE 
cohort = cohortYear
AND jurisdiction = cc;
-- END IF;

-- IF cohortYear <= (censorYear - @jahr) THEN
SET @jahr = 16;
UPDATE patent_families 
STRAIGHT_JOIN MACRO_VARS mv ON (mv.year = (cohort+@jahr) AND jurisdiction = country)
SET 
GDP16 = nominalGDPUSD,
UNM16 = unemploymentRate,
POP16 = population
WHERE 
cohort = cohortYear
AND jurisdiction = cc;
-- END IF;

-- IF cohortYear <= (censorYear - @jahr) THEN
SET @jahr = 17;
UPDATE patent_families 
STRAIGHT_JOIN MACRO_VARS mv ON (mv.year = (cohort+@jahr) AND jurisdiction = country)
SET 
GDP17 = nominalGDPUSD,
UNM17 = unemploymentRate,
POP17 = population
WHERE 
cohort = cohortYear
AND jurisdiction = cc;
-- END IF;


-- IF cohortYear <= (censorYear - @jahr) THEN
SET @jahr = 18;
UPDATE patent_families 
STRAIGHT_JOIN MACRO_VARS mv ON (mv.year = (cohort+@jahr) AND jurisdiction = country)
SET 
GDP18 = nominalGDPUSD,
UNM18 = unemploymentRate,
POP18 = population
WHERE 
cohort = cohortYear
AND jurisdiction = cc;
-- END IF;

-- IF cohortYear <= (censorYear - @jahr) THEN
SET @jahr = 19;
UPDATE patent_families 
STRAIGHT_JOIN MACRO_VARS mv ON (mv.year = (cohort+@jahr) AND jurisdiction = country)
SET 
GDP19 = nominalGDPUSD,
UNM19 = unemploymentRate,
POP19 = population
WHERE 
cohort = cohortYear
AND jurisdiction = cc;
-- END IF;


-- IF cohortYear <= (censorYear - @jahr) THEN
SET @jahr = 20;
UPDATE patent_families 
STRAIGHT_JOIN MACRO_VARS mv ON (mv.year = (cohort+@jahr) AND jurisdiction = country)
SET 
GDP20 = nominalGDPUSD,
UNM20 = unemploymentRate,
POP20 = population
WHERE 
cohort = cohortYear
AND
jurisdiction = cc;
-- END IF;

COMMIT;
END//

DELIMITER ;

*/
##################################
-- UPDATES BLOCK
################################
DROP PROCEDURE IF EXISTS dataUpdate;
delimiter //
CREATE PROCEDURE dataUpdate(startCohort INT, endCohort INT)
BEGIN
DECLARE cohortYear INT;
SET cohortYear = startCohort;
updatesWhile: WHILE (cohortYear <= endCohort) DO
SELECT CONCAT('Starting fee loop for cohort ',cohortYear);
CALL feeUpdate('AL',cohortYear);
COMMIT;
-- SELECT 'AL fees called';
CALL feeUpdate('AU',cohortYear);
COMMIT;
-- SELECT 'AU fees called';
 CALL feeUpdate('AR',cohortYear);
COMMIT;
-- SELECT 'AR fees called';
CALL feeUpdate('AT',cohortYear);
COMMIT;
-- SELECT 'AT fees called';
CALL feeUpdate('BE',cohortYear);
COMMIT;
-- SELECT 'Belgium fees called';
CALL feeUpdate('BG',cohortYear);
-- SELECT 'BG fees called';
CALL feeUpdate('BR',cohortYear);
COMMIT;
-- SELECT 'BR fees called';
CALL feeUpdate('CH',cohortYear);
COMMIT;
-- SELECT 'CH fees called';
CALL feeUpdate('CN',cohortYear);
COMMIT;
-- SELECT 'CN fees called';
CALL feeUpdate('CY',cohortYear);
COMMIT;
-- SELECT 'CY fees called';
CALL feeUpdate('CA',cohortYear);
COMMIT;
-- SELECT 'CA fees called';
CALL feeUpdate('CO',cohortYear);
COMMIT;
-- SELECT 'CO fees called';
CALL feeUpdate('CU',cohortYear);
COMMIT;
-- SELECT 'CU fees called';
CALL feeUpdate('CR',cohortYear);
COMMIT;
-- SELECT 'CR fees called';
CALL feeUpdate('CZ',cohortYear);
COMMIT;
-- SELECT 'CZ fees called';
CALL feeUpdate('DE',cohortYear);
COMMIT;
-- SELECT 'DE fees called';
CALL feeUpdate('DK',cohortYear);
COMMIT;
-- SELECT 'DK fees called';
CALL feeUpdate('EP',cohortYear);
COMMIT;
-- SELECT 'EP fees called';
CALL feeUpdate('EE',cohortYear);
COMMIT;
-- SELECT 'EE fees called';
CALL feeUpdate('ES',cohortYear);
COMMIT;
-- SELECT 'ES fees called';
CALL feeUpdate('FI',cohortYear);
COMMIT;
-- SELECT 'FI fees called';
CALL feeUpdate('FR',cohortYear);
COMMIT;
-- SELECT 'FR fees called';
CALL feeUpdate('GB',cohortYear);
COMMIT;
-- SELECT 'GB fees called';
CALL feeUpdate('GR',cohortYear);
COMMIT;
-- SELECT 'GR fees called';
CALL feeUpdate('HK',cohortYear);
COMMIT;
-- SELECT 'NK fees called';
CALL feeUpdate('HR',cohortYear);
COMMIT;
-- SELECT 'Croatian fees called';
CALL feeUpdate('HU',cohortYear);
-- SELECT 'Hungarian fees called';
COMMIT;
CALL feeUpdate('IL',cohortYear);
COMMIT;
-- SELECT 'IL fees called';
CALL feeUpdate('IT',cohortYear);
COMMIT;
-- SELECT 'IT fees called';
CALL feeUpdate('IE',cohortYear);
COMMIT;
-- SELECT 'IE fees called';
CALL feeUpdate('IS',cohortYear);
COMMIT;
-- SELECT 'IS fees called';
CALL feeUpdate('JP',cohortYear);
COMMIT;
-- SELECT 'JP fees called';
CALL feeUpdate('LU',cohortYear);
COMMIT;
-- SELECT 'LU fees called';
CALL feeUpdate('LI',cohortYear);
COMMIT;
-- SELECT 'LI fees called';
CALL feeUpdate('LT',cohortYear);
COMMIT;
-- SELECT 'LT fees called';
CALL feeUpdate('LV',cohortYear);
COMMIT;
-- SELECT 'LV fees called';
CALL feeUpdate('MK',cohortYear);
COMMIT;
-- SELECT 'MK fees called';
CALL feeUpdate('MC',cohortYear);
COMMIT;
-- SELECT 'MC fees called';
CALL feeUpdate('MD',cohortYear);
COMMIT;
-- SELECT 'MD fees called';
CALL feeUpdate('MT',cohortYear);
COMMIT;
-- SELECT 'MT fees called';
CALL feeUpdate('NL',cohortYear);
COMMIT;
-- SELECT 'Netherlands fees called';
CALL feeUpdate('NO',cohortYear);
COMMIT;
-- SELECT 'Norway fees called';
CALL feeUpdate('NZ',cohortYear);
COMMIT;
-- SELECT 'NZ fees called';
CALL feeUpdate('PL',cohortYear);
COMMIT;
-- SELECT 'NZ fees called';
CALL feeUpdate('PT',cohortYear);
COMMIT;
-- SELECT 'PT fees called';
CALL feeUpdate('RO',cohortYear);
COMMIT;
-- SELECT 'Romanian fees called';
CALL feeUpdate('RU',cohortYear);
COMMIT;
-- SELECT 'RU fees called';
CALL feeUpdate('RS',cohortYear);
COMMIT;
-- SELECT 'RS fees called';
CALL feeUpdate('SE',cohortYear);
COMMIT;
-- SELECT 'SE fees called';
CALL feeUpdate('SI',cohortYear);
COMMIT;
-- SELECT 'SI fees called';
CALL feeUpdate('SM',cohortYear);
COMMIT;
-- SELECT 'SM fees called';
CALL feeUpdate('SK',cohortYear);
COMMIT;
-- SELECT 'SK fees called';
CALL feeUpdate('TW',cohortYear);
COMMIT;
-- SELECT 'TW fees called';
CALL feeUpdate('TR',cohortYear);
-- SELECT 'TR fees called';
COMMIT;
CALL feeUpdate('US',cohortYear);
-- SELECT 'US fees called';
COMMIT;
SELECT 'United States fees called';
/*
CALL macroUpdate('MK',cohortYear);
CALL macroUpdate('AL',cohortYear);
CALL macroUpdate('CH',cohortYear);
CALL macroUpdate('RS',cohortYear);
CALL macroUpdate('SM',cohortYear);
CALL macroUpdate('HR',cohortYear);
CALL macroUpdate('MT',cohortYear);
CALL macroUpdate('RO',cohortYear);
CALL macroUpdate('BG',cohortYear);
CALL macroUpdate('IS',cohortYear);
CALL macroUpdate('LV',cohortYear);
CALL macroUpdate('TR',cohortYear);
CALL macroUpdate('CY',cohortYear);
CALL macroUpdate('CA',cohortYear);
CALL macroUpdate('CO',cohortYear);
CALL macroUpdate('AR',cohortYear);
CALL macroUpdate('CU',cohortYear);
CALL macroUpdate('EE',cohortYear);
CALL macroUpdate('SI',cohortYear);
CALL macroUpdate('MD',cohortYear);
CALL macroUpdate('CR',cohortYear);
CALL macroUpdate('CZ',cohortYear);
CALL macroUpdate('HK',cohortYear);
CALL macroUpdate('RU',cohortYear);
CALL macroUpdate('HU',cohortYear);
CALL macroUpdate('LT',cohortYear);
CALL macroUpdate('MC',cohortYear);
CALL macroUpdate('TW',cohortYear);
CALL macroUpdate('NZ',cohortYear);
CALL macroUpdate('BR',cohortYear);
CALL macroUpdate('PL',cohortYear);
CALL macroUpdate('SK',cohortYear);
CALL macroUpdate('GR',cohortYear);
CALL macroUpdate('CN',cohortYear);
CALL macroUpdate('LI',cohortYear);
CALL macroUpdate('BE',cohortYear);
CALL macroUpdate('EP',cohortYear);
CALL macroUpdate('FI',cohortYear);
CALL macroUpdate('IL',cohortYear);
CALL macroUpdate('IT',cohortYear);
CALL macroUpdate('LU',cohortYear);
CALL macroUpdate('AT',cohortYear);
CALL macroUpdate('CH',cohortYear);
CALL macroUpdate('DE',cohortYear);
CALL macroUpdate('DK',cohortYear);
CALL macroUpdate('ES',cohortYear);
CALL macroUpdate('FR',cohortYear);
CALL macroUpdate('GB',cohortYear);
CALL macroUpdate('IE',cohortYear);
CALL macroUpdate('JP',cohortYear);
CALL macroUpdate('NL',cohortYear);
CALL macroUpdate('NO',cohortYear);
CALL macroUpdate('PT',cohortYear);
CALL macroUpdate('SE',cohortYear);
CALL macroUpdate('AU',cohortYear);
CALL macroUpdate('US',cohortYear);

*/

COMMIT;
SELECT 'Changes committed';
SET cohortYear = cohortYear + 1;
END WHILE updatesWhile;
END //
delimiter ;


/* */
-- CALL dataUpdate(1980,1980);
-- CALL dataUpdate(1981,1981);
-- CALL dataUpdate(1982,1982);
-- CALL dataUpdate(1983,1983);
-- CALL dataUpdate(1984,1984);
-- CALL dataUpdate(1985,1985);
-- CALL dataUpdate(1986,1986);
-- CALL dataUpdate(1987,1987);
-- CALL dataUpdate(1988,1988);
CALL dataUpdate(1989,1989);
CALL dataUpdate(1990,1990);
CALL dataUpdate(1991,1991);
SELECT 'FINISHED';
CALL dataUpdate(1992,1992);
SELECT 'FINISHED';
CALL dataUpdate(1993,1993);
SELECT 'FINISHED';
CALL dataUpdate(1994,1994);
SELECT 'FINISHED';
CALL dataUpdate(1995,1995);
SELECT 'FINISHED';
CALL dataUpdate(1996,1996);
SELECT 'FINISHED';
CALL dataUpdate(1997,1997);
SELECT 'FINISHED';
CALL dataUpdate(1998,1998);
SELECT 'FINISHED';
CALL dataUpdate(1999,1999);
SELECT 'FINISHED';
CALL dataUpdate(2000,2000);
SELECT 'FINISHED';
CALL dataUpdate(2001,2001);
SELECT 'FINISHED';
CALL dataUpdate(2002,2002);
SELECT 'FINISHED';
CALL dataUpdate(2003,2003);
SELECT 'FINISHED';
CALL dataUpdate(2004,2004);
SELECT 'FINISHED';
CALL dataUpdate(2005,2005);
SELECT 'FINISHED';
CALL dataUpdate(2006,2006);
SELECT 'FINISHED';
CALL dataUpdate(2007,2007);
SELECT 'FINISHED';
CALL dataUpdate(2008,2008);
SELECT 'FINISHED';
CALL dataUpdate(2009,2009);
SELECT 'FINISHED';
CALL dataUpdate(2010,2010);
SELECT 'FINISHED';
CALL dataUpdate(2011,2011);
SELECT 'FINISHED';
CALL dataUpdate(2012,2012);
SELECT 'FINISHED';
CALL dataUpdate(2013,2013);
SELECT 'FINISHED';
CALL dataUpdate(2014,2014);
SELECT 'FINISHED';
CALL dataUpdate(2015,2015);
SELECT 'FINISHED';
