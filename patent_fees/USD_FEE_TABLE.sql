SELECT tmp.fee_auth AS 
fee_auth, datum, fxUSD,
appln_fee/fxUSD AS appln_fee,
add_thru_grant/fxUSD AS appln_fee,
Y1/fxUSD AS Y1,
Y2/fxUSD AS Y2,
Y3/fxUSD AS Y3,
Y4/fxUSD AS Y4,
Y5/fxUSD AS Y5,
Y6/fxUSD AS Y6,
Y7/fxUSD AS Y7,
Y8/fxUSD AS Y8,
Y9/fxUSD AS Y9,
Y10/fxUSD AS Y10,
Y11/fxUSD AS Y11,
Y12/fxUSD AS Y12,
Y13/fxUSD AS Y13,
Y14/fxUSD AS Y14,
Y15/fxUSD AS Y15,
Y16/fxUSD AS Y16,
Y17/fxUSD AS Y17,
Y18/fxUSD AS Y18,
Y19/fxUSD AS Y19,
Y20/fxUSD AS Y20
FROM (
SELECT feeFX.fee_auth AS fee_auth, date AS datum, fxUSD
FROM 
(SELECT currency, date, fxUSD FROM FX AS DATE ) fx 
JOIN 
(SELECT fee_auth,currency, entryIntoForce, endInForce FROM fees WHERE feeClass = 'fx') 
feeFX ON (fx.date BETWEEN feeFX.entryIntoForce AND feeFX.endInForce AND fx.currency = feeFX.currency)
WHERE
feeFX.fee_auth = 'CH'
) tmp


JOIN fees fee ON (

tmp.fee_auth = fee.fee_auth 
AND
datum >= fee.entryIntoForce
AND
datum <= fee.endInForce
)

WHERE feeClass = 'reg'
AND datum >= '1980-01-01'
ORDER BY YEAR(datum),MONTH(datum)
