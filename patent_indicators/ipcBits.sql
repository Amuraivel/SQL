DELIMITER $$
CREATE DEFINER=`mark`@`%` FUNCTION `cast_to_bit`(N INT) RETURNS bit(1)
BEGIN
   RETURN N;
END;
DELIMITER ;

DROP TABLE IF EXISTS GEO.ipcBits;
CREATE TABLE GEO.ipcBits
ENGINE=MYISAM 
 AS (
SELECT appln_id,
cast_to_bit(
			CASE WHEN left(ipc_class_symbol,4) = 'A01B' 
            THEN 1 
            ELSE 0 
		END  )
   AS A01B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A01C'
            THEN 1
            ELSE 0 
        END  )
   AS A01C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A01D'
            THEN 1
            ELSE 0 
        END  )
   AS A01D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A01F'
            THEN 1
            ELSE 0 
        END  )
   AS A01F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A01G'
            THEN 1
            ELSE 0 
        END  )
   AS A01G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A01H'
            THEN 1
            ELSE 0 
        END  )
   AS A01H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A01J'
            THEN 1
            ELSE 0 
        END  )
   AS A01J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A01K'
            THEN 1
            ELSE 0 
        END  )
   AS A01K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A01L'
            THEN 1
            ELSE 0 
        END  )
   AS A01L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A01M'
            THEN 1
            ELSE 0 
        END  )
   AS A01M,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A01N'
            THEN 1
            ELSE 0 
        END  )
   AS A01N,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A01P'
            THEN 1
            ELSE 0 
        END  )
   AS A01P,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A21B'
            THEN 1
            ELSE 0 
        END  )
   AS A21B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A21C'
            THEN 1
            ELSE 0 
        END  )
   AS A21C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A21D'
            THEN 1
            ELSE 0 
        END  )
   AS A21D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A22B'
            THEN 1
            ELSE 0 
        END  )
   AS A22B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A22C'
            THEN 1
            ELSE 0 
        END  )
   AS A22C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A23B'
            THEN 1
            ELSE 0 
        END  )
   AS A23B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A23C'
            THEN 1
            ELSE 0 
        END  )
   AS A23C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A23D'
            THEN 1
            ELSE 0 
        END  )
   AS A23D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A23F'
            THEN 1
            ELSE 0 
        END  )
   AS A23F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A23G'
            THEN 1
            ELSE 0 
        END  )
   AS A23G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A23J'
            THEN 1
            ELSE 0 
        END  )
   AS A23J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A23K'
            THEN 1
            ELSE 0 
        END  )
   AS A23K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A23L'
            THEN 1
            ELSE 0 
        END  )
   AS A23L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A23N'
            THEN 1
            ELSE 0 
        END  )
   AS A23N,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A23P'
            THEN 1
            ELSE 0 
        END  )
   AS A23P,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A24B'
            THEN 1
            ELSE 0 
        END  )
   AS A24B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A24C'
            THEN 1
            ELSE 0 
        END  )
   AS A24C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A24D'
            THEN 1
            ELSE 0 
        END  )
   AS A24D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A24F'
            THEN 1
            ELSE 0 
        END  )
   AS A24F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A41B'
            THEN 1
            ELSE 0 
        END  )
   AS A41B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A41C'
            THEN 1
            ELSE 0 
        END  )
   AS A41C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A41D'
            THEN 1
            ELSE 0 
        END  )
   AS A41D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A41F'
            THEN 1
            ELSE 0 
        END  )
   AS A41F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A41G'
            THEN 1
            ELSE 0 
        END  )
   AS A41G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A41H'
            THEN 1
            ELSE 0 
        END  )
   AS A41H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A42B'
            THEN 1
            ELSE 0 
        END  )
   AS A42B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A42C'
            THEN 1
            ELSE 0 
        END  )
   AS A42C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A43B'
            THEN 1
            ELSE 0 
        END  )
   AS A43B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A43C'
            THEN 1
            ELSE 0 
        END  )
   AS A43C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A43D'
            THEN 1
            ELSE 0 
        END  )
   AS A43D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A44B'
            THEN 1
            ELSE 0 
        END  )
   AS A44B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A44C'
            THEN 1
            ELSE 0 
        END  )
   AS A44C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A45B'
            THEN 1
            ELSE 0 
        END  )
   AS A45B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A45C'
            THEN 1
            ELSE 0 
        END  )
   AS A45C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A45D'
            THEN 1
            ELSE 0 
        END  )
   AS A45D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A45F'
            THEN 1
            ELSE 0 
        END  )
   AS A45F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A46B'
            THEN 1
            ELSE 0 
        END  )
   AS A46B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A46D'
            THEN 1
            ELSE 0 
        END  )
   AS A46D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A47B'
            THEN 1
            ELSE 0 
        END  )
   AS A47B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A47C'
            THEN 1
            ELSE 0 
        END  )
   AS A47C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A47D'
            THEN 1
            ELSE 0 
        END  )
   AS A47D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A47F'
            THEN 1
            ELSE 0 
        END  )
   AS A47F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A47G'
            THEN 1
            ELSE 0 
        END  )
   AS A47G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A47H'
            THEN 1
            ELSE 0 
        END  )
   AS A47H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A47J'
            THEN 1
            ELSE 0 
        END  )
   AS A47J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A47K'
            THEN 1
            ELSE 0 
        END  )
   AS A47K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A47L'
            THEN 1
            ELSE 0 
        END  )
   AS A47L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A61B'
            THEN 1
            ELSE 0 
        END  )
   AS A61B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A61C'
            THEN 1
            ELSE 0 
        END  )
   AS A61C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A61D'
            THEN 1
            ELSE 0 
        END  )
   AS A61D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A61F'
            THEN 1
            ELSE 0 
        END  )
   AS A61F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A61G'
            THEN 1
            ELSE 0 
        END  )
   AS A61G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A61H'
            THEN 1
            ELSE 0 
        END  )
   AS A61H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A61J'
            THEN 1
            ELSE 0 
        END  )
   AS A61J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A61K'
            THEN 1
            ELSE 0 
        END  )
   AS A61K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A61L'
            THEN 1
            ELSE 0 
        END  )
   AS A61L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A61M'
            THEN 1
            ELSE 0 
        END  )
   AS A61M,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A61N'
            THEN 1
            ELSE 0 
        END  )
   AS A61N,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A61P'
            THEN 1
            ELSE 0 
        END  )
   AS A61P,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A61Q'
            THEN 1
            ELSE 0 
        END  )
   AS A61Q,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A62B'
            THEN 1
            ELSE 0 
        END  )
   AS A62B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A62C'
            THEN 1
            ELSE 0 
        END  )
   AS A62C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A62D'
            THEN 1
            ELSE 0 
        END  )
   AS A62D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A63B'
            THEN 1
            ELSE 0 
        END  )
   AS A63B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A63C'
            THEN 1
            ELSE 0 
        END  )
   AS A63C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A63D'
            THEN 1
            ELSE 0 
        END  )
   AS A63D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A63F'
            THEN 1
            ELSE 0 
        END  )
   AS A63F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A63G'
            THEN 1
            ELSE 0 
        END  )
   AS A63G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A63H'
            THEN 1
            ELSE 0 
        END  )
   AS A63H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A63J'
            THEN 1
            ELSE 0 
        END  )
   AS A63J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A63K'
            THEN 1
            ELSE 0 
        END  )
   AS A63K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'A99Z'
            THEN 1
            ELSE 0 
        END  )
   AS A99Z,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B01B'
            THEN 1
            ELSE 0 
        END  )
   AS B01B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B01D'
            THEN 1
            ELSE 0 
        END  )
   AS B01D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B01F'
            THEN 1
            ELSE 0 
        END  )
   AS B01F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B01J'
            THEN 1
            ELSE 0 
        END  )
   AS B01J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B01L'
            THEN 1
            ELSE 0 
        END  )
   AS B01L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B02B'
            THEN 1
            ELSE 0 
        END  )
   AS B02B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B02C'
            THEN 1
            ELSE 0 
        END  )
   AS B02C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B03B'
            THEN 1
            ELSE 0 
        END  )
   AS B03B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B03C'
            THEN 1
            ELSE 0 
        END  )
   AS B03C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B03D'
            THEN 1
            ELSE 0 
        END  )
   AS B03D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B04B'
            THEN 1
            ELSE 0 
        END  )
   AS B04B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B04C'
            THEN 1
            ELSE 0 
        END  )
   AS B04C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B05B'
            THEN 1
            ELSE 0 
        END  )
   AS B05B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B05C'
            THEN 1
            ELSE 0 
        END  )
   AS B05C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B05D'
            THEN 1
            ELSE 0 
        END  )
   AS B05D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B06B'
            THEN 1
            ELSE 0 
        END  )
   AS B06B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B07B'
            THEN 1
            ELSE 0 
        END  )
   AS B07B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B07C'
            THEN 1
            ELSE 0 
        END  )
   AS B07C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B08B'
            THEN 1
            ELSE 0 
        END  )
   AS B08B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B09B'
            THEN 1
            ELSE 0 
        END  )
   AS B09B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B09C'
            THEN 1
            ELSE 0 
        END  )
   AS B09C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B21B'
            THEN 1
            ELSE 0 
        END  )
   AS B21B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B21C'
            THEN 1
            ELSE 0 
        END  )
   AS B21C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B21D'
            THEN 1
            ELSE 0 
        END  )
   AS B21D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B21F'
            THEN 1
            ELSE 0 
        END  )
   AS B21F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B21G'
            THEN 1
            ELSE 0 
        END  )
   AS B21G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B21H'
            THEN 1
            ELSE 0 
        END  )
   AS B21H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B21J'
            THEN 1
            ELSE 0 
        END  )
   AS B21J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B21K'
            THEN 1
            ELSE 0 
        END  )
   AS B21K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B21L'
            THEN 1
            ELSE 0 
        END  )
   AS B21L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B22C'
            THEN 1
            ELSE 0 
        END  )
   AS B22C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B22D'
            THEN 1
            ELSE 0 
        END  )
   AS B22D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B22F'
            THEN 1
            ELSE 0 
        END  )
   AS B22F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B23B'
            THEN 1
            ELSE 0 
        END  )
   AS B23B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B23C'
            THEN 1
            ELSE 0 
        END  )
   AS B23C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B23D'
            THEN 1
            ELSE 0 
        END  )
   AS B23D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B23F'
            THEN 1
            ELSE 0 
        END  )
   AS B23F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B23G'
            THEN 1
            ELSE 0 
        END  )
   AS B23G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B23H'
            THEN 1
            ELSE 0 
        END  )
   AS B23H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B23K'
            THEN 1
            ELSE 0 
        END  )
   AS B23K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B23P'
            THEN 1
            ELSE 0 
        END  )
   AS B23P,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B23Q'
            THEN 1
            ELSE 0 
        END  )
   AS B23Q,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B24B'
            THEN 1
            ELSE 0 
        END  )
   AS B24B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B24C'
            THEN 1
            ELSE 0 
        END  )
   AS B24C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B24D'
            THEN 1
            ELSE 0 
        END  )
   AS B24D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B25B'
            THEN 1
            ELSE 0 
        END  )
   AS B25B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B25C'
            THEN 1
            ELSE 0 
        END  )
   AS B25C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B25D'
            THEN 1
            ELSE 0 
        END  )
   AS B25D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B25F'
            THEN 1
            ELSE 0 
        END  )
   AS B25F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B25G'
            THEN 1
            ELSE 0 
        END  )
   AS B25G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B25H'
            THEN 1
            ELSE 0 
        END  )
   AS B25H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B25J'
            THEN 1
            ELSE 0 
        END  )
   AS B25J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B26B'
            THEN 1
            ELSE 0 
        END  )
   AS B26B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B26D'
            THEN 1
            ELSE 0 
        END  )
   AS B26D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B26F'
            THEN 1
            ELSE 0 
        END  )
   AS B26F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B27B'
            THEN 1
            ELSE 0 
        END  )
   AS B27B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B27C'
            THEN 1
            ELSE 0 
        END  )
   AS B27C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B27D'
            THEN 1
            ELSE 0 
        END  )
   AS B27D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B27F'
            THEN 1
            ELSE 0 
        END  )
   AS B27F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B27G'
            THEN 1
            ELSE 0 
        END  )
   AS B27G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B27H'
            THEN 1
            ELSE 0 
        END  )
   AS B27H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B27J'
            THEN 1
            ELSE 0 
        END  )
   AS B27J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B27K'
            THEN 1
            ELSE 0 
        END  )
   AS B27K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B27L'
            THEN 1
            ELSE 0 
        END  )
   AS B27L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B27M'
            THEN 1
            ELSE 0 
        END  )
   AS B27M,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B27N'
            THEN 1
            ELSE 0 
        END  )
   AS B27N,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B28B'
            THEN 1
            ELSE 0 
        END  )
   AS B28B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B28C'
            THEN 1
            ELSE 0 
        END  )
   AS B28C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B28D'
            THEN 1
            ELSE 0 
        END  )
   AS B28D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B29B'
            THEN 1
            ELSE 0 
        END  )
   AS B29B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B29C'
            THEN 1
            ELSE 0 
        END  )
   AS B29C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B29D'
            THEN 1
            ELSE 0 
        END  )
   AS B29D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B29K'
            THEN 1
            ELSE 0 
        END  )
   AS B29K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B29L'
            THEN 1
            ELSE 0 
        END  )
   AS B29L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B30B'
            THEN 1
            ELSE 0 
        END  )
   AS B30B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B31B'
            THEN 1
            ELSE 0 
        END  )
   AS B31B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B31C'
            THEN 1
            ELSE 0 
        END  )
   AS B31C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B31D'
            THEN 1
            ELSE 0 
        END  )
   AS B31D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B31F'
            THEN 1
            ELSE 0 
        END  )
   AS B31F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B32B'
            THEN 1
            ELSE 0 
        END  )
   AS B32B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B41B'
            THEN 1
            ELSE 0 
        END  )
   AS B41B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B41C'
            THEN 1
            ELSE 0 
        END  )
   AS B41C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B41D'
            THEN 1
            ELSE 0 
        END  )
   AS B41D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B41F'
            THEN 1
            ELSE 0 
        END  )
   AS B41F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B41G'
            THEN 1
            ELSE 0 
        END  )
   AS B41G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B41J'
            THEN 1
            ELSE 0 
        END  )
   AS B41J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B41K'
            THEN 1
            ELSE 0 
        END  )
   AS B41K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B41L'
            THEN 1
            ELSE 0 
        END  )
   AS B41L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B41M'
            THEN 1
            ELSE 0 
        END  )
   AS B41M,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B41N'
            THEN 1
            ELSE 0 
        END  )
   AS B41N,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B42B'
            THEN 1
            ELSE 0 
        END  )
   AS B42B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B42C'
            THEN 1
            ELSE 0 
        END  )
   AS B42C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B42D'
            THEN 1
            ELSE 0 
        END  )
   AS B42D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B42F'
            THEN 1
            ELSE 0 
        END  )
   AS B42F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B43K'
            THEN 1
            ELSE 0 
        END  )
   AS B43K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B43L'
            THEN 1
            ELSE 0 
        END  )
   AS B43L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B43M'
            THEN 1
            ELSE 0 
        END  )
   AS B43M,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B44B'
            THEN 1
            ELSE 0 
        END  )
   AS B44B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B44C'
            THEN 1
            ELSE 0 
        END  )
   AS B44C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B44D'
            THEN 1
            ELSE 0 
        END  )
   AS B44D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B44F'
            THEN 1
            ELSE 0 
        END  )
   AS B44F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B60B'
            THEN 1
            ELSE 0 
        END  )
   AS B60B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B60C'
            THEN 1
            ELSE 0 
        END  )
   AS B60C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B60D'
            THEN 1
            ELSE 0 
        END  )
   AS B60D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B60F'
            THEN 1
            ELSE 0 
        END  )
   AS B60F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B60G'
            THEN 1
            ELSE 0 
        END  )
   AS B60G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B60H'
            THEN 1
            ELSE 0 
        END  )
   AS B60H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B60J'
            THEN 1
            ELSE 0 
        END  )
   AS B60J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B60K'
            THEN 1
            ELSE 0 
        END  )
   AS B60K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B60L'
            THEN 1
            ELSE 0 
        END  )
   AS B60L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B60M'
            THEN 1
            ELSE 0 
        END  )
   AS B60M,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B60N'
            THEN 1
            ELSE 0 
        END  )
   AS B60N,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B60P'
            THEN 1
            ELSE 0 
        END  )
   AS B60P,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B60Q'
            THEN 1
            ELSE 0 
        END  )
   AS B60Q,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B60R'
            THEN 1
            ELSE 0 
        END  )
   AS B60R,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B60S'
            THEN 1
            ELSE 0 
        END  )
   AS B60S,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B60T'
            THEN 1
            ELSE 0 
        END  )
   AS B60T,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B60V'
            THEN 1
            ELSE 0 
        END  )
   AS B60V,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B60W'
            THEN 1
            ELSE 0 
        END  )
   AS B60W,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B61B'
            THEN 1
            ELSE 0 
        END  )
   AS B61B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B61C'
            THEN 1
            ELSE 0 
        END  )
   AS B61C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B61D'
            THEN 1
            ELSE 0 
        END  )
   AS B61D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B61F'
            THEN 1
            ELSE 0 
        END  )
   AS B61F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B61G'
            THEN 1
            ELSE 0 
        END  )
   AS B61G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B61H'
            THEN 1
            ELSE 0 
        END  )
   AS B61H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B61J'
            THEN 1
            ELSE 0 
        END  )
   AS B61J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B61K'
            THEN 1
            ELSE 0 
        END  )
   AS B61K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B61L'
            THEN 1
            ELSE 0 
        END  )
   AS B61L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B62B'
            THEN 1
            ELSE 0 
        END  )
   AS B62B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B62C'
            THEN 1
            ELSE 0 
        END  )
   AS B62C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B62D'
            THEN 1
            ELSE 0 
        END  )
   AS B62D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B62H'
            THEN 1
            ELSE 0 
        END  )
   AS B62H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B62J'
            THEN 1
            ELSE 0 
        END  )
   AS B62J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B62K'
            THEN 1
            ELSE 0 
        END  )
   AS B62K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B62L'
            THEN 1
            ELSE 0 
        END  )
   AS B62L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B62M'
            THEN 1
            ELSE 0 
        END  )
   AS B62M,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B63B'
            THEN 1
            ELSE 0 
        END  )
   AS B63B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B63C'
            THEN 1
            ELSE 0 
        END  )
   AS B63C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B63G'
            THEN 1
            ELSE 0 
        END  )
   AS B63G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B63H'
            THEN 1
            ELSE 0 
        END  )
   AS B63H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B63J'
            THEN 1
            ELSE 0 
        END  )
   AS B63J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B64B'
            THEN 1
            ELSE 0 
        END  )
   AS B64B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B64C'
            THEN 1
            ELSE 0 
        END  )
   AS B64C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B64D'
            THEN 1
            ELSE 0 
        END  )
   AS B64D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B64F'
            THEN 1
            ELSE 0 
        END  )
   AS B64F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B64G'
            THEN 1
            ELSE 0 
        END  )
   AS B64G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B65B'
            THEN 1
            ELSE 0 
        END  )
   AS B65B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B65C'
            THEN 1
            ELSE 0 
        END  )
   AS B65C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B65D'
            THEN 1
            ELSE 0 
        END  )
   AS B65D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B65F'
            THEN 1
            ELSE 0 
        END  )
   AS B65F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B65G'
            THEN 1
            ELSE 0 
        END  )
   AS B65G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B65H'
            THEN 1
            ELSE 0 
        END  )
   AS B65H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B66B'
            THEN 1
            ELSE 0 
        END  )
   AS B66B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B66C'
            THEN 1
            ELSE 0 
        END  )
   AS B66C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B66D'
            THEN 1
            ELSE 0 
        END  )
   AS B66D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B66F'
            THEN 1
            ELSE 0 
        END  )
   AS B66F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B67B'
            THEN 1
            ELSE 0 
        END  )
   AS B67B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B67C'
            THEN 1
            ELSE 0 
        END  )
   AS B67C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B67D'
            THEN 1
            ELSE 0 
        END  )
   AS B67D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B68B'
            THEN 1
            ELSE 0 
        END  )
   AS B68B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B68C'
            THEN 1
            ELSE 0 
        END  )
   AS B68C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B68F'
            THEN 1
            ELSE 0 
        END  )
   AS B68F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B68G'
            THEN 1
            ELSE 0 
        END  )
   AS B68G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B81B'
            THEN 1
            ELSE 0 
        END  )
   AS B81B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B81C'
            THEN 1
            ELSE 0 
        END  )
   AS B81C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B82B'
            THEN 1
            ELSE 0 
        END  )
   AS B82B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B82Y'
            THEN 1
            ELSE 0 
        END  )
   AS B82Y,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'B99Z'
            THEN 1
            ELSE 0 
        END  )
   AS B99Z,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C01B'
            THEN 1
            ELSE 0 
        END  )
   AS C01B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C01C'
            THEN 1
            ELSE 0 
        END  )
   AS C01C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C01D'
            THEN 1
            ELSE 0 
        END  )
   AS C01D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C01F'
            THEN 1
            ELSE 0 
        END  )
   AS C01F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C01G'
            THEN 1
            ELSE 0 
        END  )
   AS C01G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C02F'
            THEN 1
            ELSE 0 
        END  )
   AS C02F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C03B'
            THEN 1
            ELSE 0 
        END  )
   AS C03B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C03C'
            THEN 1
            ELSE 0 
        END  )
   AS C03C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C04B'
            THEN 1
            ELSE 0 
        END  )
   AS C04B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C05B'
            THEN 1
            ELSE 0 
        END  )
   AS C05B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C05C'
            THEN 1
            ELSE 0 
        END  )
   AS C05C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C05D'
            THEN 1
            ELSE 0 
        END  )
   AS C05D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C05F'
            THEN 1
            ELSE 0 
        END  )
   AS C05F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C05G'
            THEN 1
            ELSE 0 
        END  )
   AS C05G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C06B'
            THEN 1
            ELSE 0 
        END  )
   AS C06B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C06C'
            THEN 1
            ELSE 0 
        END  )
   AS C06C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C06D'
            THEN 1
            ELSE 0 
        END  )
   AS C06D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C06F'
            THEN 1
            ELSE 0 
        END  )
   AS C06F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C07B'
            THEN 1
            ELSE 0 
        END  )
   AS C07B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C07C'
            THEN 1
            ELSE 0 
        END  )
   AS C07C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C07D'
            THEN 1
            ELSE 0 
        END  )
   AS C07D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C07F'
            THEN 1
            ELSE 0 
        END  )
   AS C07F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C07G'
            THEN 1
            ELSE 0 
        END  )
   AS C07G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C07H'
            THEN 1
            ELSE 0 
        END  )
   AS C07H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C07J'
            THEN 1
            ELSE 0 
        END  )
   AS C07J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C07K'
            THEN 1
            ELSE 0 
        END  )
   AS C07K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C08B'
            THEN 1
            ELSE 0 
        END  )
   AS C08B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C08C'
            THEN 1
            ELSE 0 
        END  )
   AS C08C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C08F'
            THEN 1
            ELSE 0 
        END  )
   AS C08F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C08G'
            THEN 1
            ELSE 0 
        END  )
   AS C08G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C08H'
            THEN 1
            ELSE 0 
        END  )
   AS C08H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C08J'
            THEN 1
            ELSE 0 
        END  )
   AS C08J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C08K'
            THEN 1
            ELSE 0 
        END  )
   AS C08K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C08L'
            THEN 1
            ELSE 0 
        END  )
   AS C08L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C09B'
            THEN 1
            ELSE 0 
        END  )
   AS C09B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C09C'
            THEN 1
            ELSE 0 
        END  )
   AS C09C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C09D'
            THEN 1
            ELSE 0 
        END  )
   AS C09D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C09F'
            THEN 1
            ELSE 0 
        END  )
   AS C09F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C09G'
            THEN 1
            ELSE 0 
        END  )
   AS C09G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C09H'
            THEN 1
            ELSE 0 
        END  )
   AS C09H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C09J'
            THEN 1
            ELSE 0 
        END  )
   AS C09J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C09K'
            THEN 1
            ELSE 0 
        END  )
   AS C09K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C10B'
            THEN 1
            ELSE 0 
        END  )
   AS C10B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C10C'
            THEN 1
            ELSE 0 
        END  )
   AS C10C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C10F'
            THEN 1
            ELSE 0 
        END  )
   AS C10F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C10G'
            THEN 1
            ELSE 0 
        END  )
   AS C10G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C10H'
            THEN 1
            ELSE 0 
        END  )
   AS C10H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C10J'
            THEN 1
            ELSE 0 
        END  )
   AS C10J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C10K'
            THEN 1
            ELSE 0 
        END  )
   AS C10K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C10L'
            THEN 1
            ELSE 0 
        END  )
   AS C10L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C10M'
            THEN 1
            ELSE 0 
        END  )
   AS C10M,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C10N'
            THEN 1
            ELSE 0 
        END  )
   AS C10N,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C11B'
            THEN 1
            ELSE 0 
        END  )
   AS C11B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C11C'
            THEN 1
            ELSE 0 
        END  )
   AS C11C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C11D'
            THEN 1
            ELSE 0 
        END  )
   AS C11D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C12C'
            THEN 1
            ELSE 0 
        END  )
   AS C12C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C12F'
            THEN 1
            ELSE 0 
        END  )
   AS C12F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C12G'
            THEN 1
            ELSE 0 
        END  )
   AS C12G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C12H'
            THEN 1
            ELSE 0 
        END  )
   AS C12H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C12J'
            THEN 1
            ELSE 0 
        END  )
   AS C12J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C12L'
            THEN 1
            ELSE 0 
        END  )
   AS C12L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C12M'
            THEN 1
            ELSE 0 
        END  )
   AS C12M,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C12N'
            THEN 1
            ELSE 0 
        END  )
   AS C12N,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C12P'
            THEN 1
            ELSE 0 
        END  )
   AS C12P,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C12Q'
            THEN 1
            ELSE 0 
        END  )
   AS C12Q,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C12R'
            THEN 1
            ELSE 0 
        END  )
   AS C12R,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C12S'
            THEN 1
            ELSE 0 
        END  )
   AS C12S,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C13B'
            THEN 1
            ELSE 0 
        END  )
   AS C13B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C13C'
            THEN 1
            ELSE 0 
        END  )
   AS C13C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C13D'
            THEN 1
            ELSE 0 
        END  )
   AS C13D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C13F'
            THEN 1
            ELSE 0 
        END  )
   AS C13F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C13G'
            THEN 1
            ELSE 0 
        END  )
   AS C13G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C13K'
            THEN 1
            ELSE 0 
        END  )
   AS C13K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C14B'
            THEN 1
            ELSE 0 
        END  )
   AS C14B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C14C'
            THEN 1
            ELSE 0 
        END  )
   AS C14C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C21B'
            THEN 1
            ELSE 0 
        END  )
   AS C21B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C21C'
            THEN 1
            ELSE 0 
        END  )
   AS C21C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C21D'
            THEN 1
            ELSE 0 
        END  )
   AS C21D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C22B'
            THEN 1
            ELSE 0 
        END  )
   AS C22B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C22C'
            THEN 1
            ELSE 0 
        END  )
   AS C22C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C22F'
            THEN 1
            ELSE 0 
        END  )
   AS C22F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C23C'
            THEN 1
            ELSE 0 
        END  )
   AS C23C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C23D'
            THEN 1
            ELSE 0 
        END  )
   AS C23D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C23F'
            THEN 1
            ELSE 0 
        END  )
   AS C23F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C23G'
            THEN 1
            ELSE 0 
        END  )
   AS C23G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C25B'
            THEN 1
            ELSE 0 
        END  )
   AS C25B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C25C'
            THEN 1
            ELSE 0 
        END  )
   AS C25C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C25D'
            THEN 1
            ELSE 0 
        END  )
   AS C25D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C25F'
            THEN 1
            ELSE 0 
        END  )
   AS C25F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C30B'
            THEN 1
            ELSE 0 
        END  )
   AS C30B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C40B'
            THEN 1
            ELSE 0 
        END  )
   AS C40B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'C99Z'
            THEN 1
            ELSE 0 
        END  )
   AS C99Z,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D01B'
            THEN 1
            ELSE 0 
        END  )
   AS D01B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D01C'
            THEN 1
            ELSE 0 
        END  )
   AS D01C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D01D'
            THEN 1
            ELSE 0 
        END  )
   AS D01D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D01F'
            THEN 1
            ELSE 0 
        END  )
   AS D01F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D01G'
            THEN 1
            ELSE 0 
        END  )
   AS D01G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D01H'
            THEN 1
            ELSE 0 
        END  )
   AS D01H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D02G'
            THEN 1
            ELSE 0 
        END  )
   AS D02G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D02H'
            THEN 1
            ELSE 0 
        END  )
   AS D02H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D02J'
            THEN 1
            ELSE 0 
        END  )
   AS D02J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D03C'
            THEN 1
            ELSE 0 
        END  )
   AS D03C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D03D'
            THEN 1
            ELSE 0 
        END  )
   AS D03D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D03J'
            THEN 1
            ELSE 0 
        END  )
   AS D03J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D04B'
            THEN 1
            ELSE 0 
        END  )
   AS D04B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D04C'
            THEN 1
            ELSE 0 
        END  )
   AS D04C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D04D'
            THEN 1
            ELSE 0 
        END  )
   AS D04D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D04G'
            THEN 1
            ELSE 0 
        END  )
   AS D04G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D04H'
            THEN 1
            ELSE 0 
        END  )
   AS D04H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D05B'
            THEN 1
            ELSE 0 
        END  )
   AS D05B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D05C'
            THEN 1
            ELSE 0 
        END  )
   AS D05C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D06B'
            THEN 1
            ELSE 0 
        END  )
   AS D06B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D06C'
            THEN 1
            ELSE 0 
        END  )
   AS D06C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D06F'
            THEN 1
            ELSE 0 
        END  )
   AS D06F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D06G'
            THEN 1
            ELSE 0 
        END  )
   AS D06G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D06H'
            THEN 1
            ELSE 0 
        END  )
   AS D06H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D06J'
            THEN 1
            ELSE 0 
        END  )
   AS D06J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D06L'
            THEN 1
            ELSE 0 
        END  )
   AS D06L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D06M'
            THEN 1
            ELSE 0 
        END  )
   AS D06M,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D06N'
            THEN 1
            ELSE 0 
        END  )
   AS D06N,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D06P'
            THEN 1
            ELSE 0 
        END  )
   AS D06P,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D06Q'
            THEN 1
            ELSE 0 
        END  )
   AS D06Q,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D07B'
            THEN 1
            ELSE 0 
        END  )
   AS D07B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D21B'
            THEN 1
            ELSE 0 
        END  )
   AS D21B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D21C'
            THEN 1
            ELSE 0 
        END  )
   AS D21C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D21D'
            THEN 1
            ELSE 0 
        END  )
   AS D21D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D21F'
            THEN 1
            ELSE 0 
        END  )
   AS D21F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D21G'
            THEN 1
            ELSE 0 
        END  )
   AS D21G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D21H'
            THEN 1
            ELSE 0 
        END  )
   AS D21H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D21J'
            THEN 1
            ELSE 0 
        END  )
   AS D21J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'D99Z'
            THEN 1
            ELSE 0 
        END  )
   AS D99Z,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E01B'
            THEN 1
            ELSE 0 
        END  )
   AS E01B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E01C'
            THEN 1
            ELSE 0 
        END  )
   AS E01C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E01D'
            THEN 1
            ELSE 0 
        END  )
   AS E01D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E01F'
            THEN 1
            ELSE 0 
        END  )
   AS E01F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E01H'
            THEN 1
            ELSE 0 
        END  )
   AS E01H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E02B'
            THEN 1
            ELSE 0 
        END  )
   AS E02B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E02C'
            THEN 1
            ELSE 0 
        END  )
   AS E02C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E02D'
            THEN 1
            ELSE 0 
        END  )
   AS E02D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E02F'
            THEN 1
            ELSE 0 
        END  )
   AS E02F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E03B'
            THEN 1
            ELSE 0 
        END  )
   AS E03B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E03C'
            THEN 1
            ELSE 0 
        END  )
   AS E03C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E03D'
            THEN 1
            ELSE 0 
        END  )
   AS E03D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E03F'
            THEN 1
            ELSE 0 
        END  )
   AS E03F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E04B'
            THEN 1
            ELSE 0 
        END  )
   AS E04B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E04C'
            THEN 1
            ELSE 0 
        END  )
   AS E04C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E04D'
            THEN 1
            ELSE 0 
        END  )
   AS E04D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E04F'
            THEN 1
            ELSE 0 
        END  )
   AS E04F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E04G'
            THEN 1
            ELSE 0 
        END  )
   AS E04G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E04H'
            THEN 1
            ELSE 0 
        END  )
   AS E04H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E05B'
            THEN 1
            ELSE 0 
        END  )
   AS E05B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E05C'
            THEN 1
            ELSE 0 
        END  )
   AS E05C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E05D'
            THEN 1
            ELSE 0 
        END  )
   AS E05D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E05F'
            THEN 1
            ELSE 0 
        END  )
   AS E05F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E05G'
            THEN 1
            ELSE 0 
        END  )
   AS E05G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E06B'
            THEN 1
            ELSE 0 
        END  )
   AS E06B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E06C'
            THEN 1
            ELSE 0 
        END  )
   AS E06C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E21B'
            THEN 1
            ELSE 0 
        END  )
   AS E21B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E21C'
            THEN 1
            ELSE 0 
        END  )
   AS E21C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E21D'
            THEN 1
            ELSE 0 
        END  )
   AS E21D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E21F'
            THEN 1
            ELSE 0 
        END  )
   AS E21F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'E99Z'
            THEN 1
            ELSE 0 
        END  )
   AS E99Z,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F01B'
            THEN 1
            ELSE 0 
        END  )
   AS F01B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F01C'
            THEN 1
            ELSE 0 
        END  )
   AS F01C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F01D'
            THEN 1
            ELSE 0 
        END  )
   AS F01D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F01K'
            THEN 1
            ELSE 0 
        END  )
   AS F01K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F01L'
            THEN 1
            ELSE 0 
        END  )
   AS F01L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F01M'
            THEN 1
            ELSE 0 
        END  )
   AS F01M,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F01N'
            THEN 1
            ELSE 0 
        END  )
   AS F01N,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F01P'
            THEN 1
            ELSE 0 
        END  )
   AS F01P,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F02B'
            THEN 1
            ELSE 0 
        END  )
   AS F02B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F02C'
            THEN 1
            ELSE 0 
        END  )
   AS F02C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F02D'
            THEN 1
            ELSE 0 
        END  )
   AS F02D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F02F'
            THEN 1
            ELSE 0 
        END  )
   AS F02F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F02G'
            THEN 1
            ELSE 0 
        END  )
   AS F02G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F02K'
            THEN 1
            ELSE 0 
        END  )
   AS F02K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F02M'
            THEN 1
            ELSE 0 
        END  )
   AS F02M,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F02N'
            THEN 1
            ELSE 0 
        END  )
   AS F02N,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F02P'
            THEN 1
            ELSE 0 
        END  )
   AS F02P,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F03B'
            THEN 1
            ELSE 0 
        END  )
   AS F03B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F03C'
            THEN 1
            ELSE 0 
        END  )
   AS F03C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F03D'
            THEN 1
            ELSE 0 
        END  )
   AS F03D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F03G'
            THEN 1
            ELSE 0 
        END  )
   AS F03G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F03H'
            THEN 1
            ELSE 0 
        END  )
   AS F03H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F04B'
            THEN 1
            ELSE 0 
        END  )
   AS F04B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F04C'
            THEN 1
            ELSE 0 
        END  )
   AS F04C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F04D'
            THEN 1
            ELSE 0 
        END  )
   AS F04D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F04F'
            THEN 1
            ELSE 0 
        END  )
   AS F04F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F15B'
            THEN 1
            ELSE 0 
        END  )
   AS F15B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F15C'
            THEN 1
            ELSE 0 
        END  )
   AS F15C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F15D'
            THEN 1
            ELSE 0 
        END  )
   AS F15D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F16B'
            THEN 1
            ELSE 0 
        END  )
   AS F16B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F16C'
            THEN 1
            ELSE 0 
        END  )
   AS F16C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F16D'
            THEN 1
            ELSE 0 
        END  )
   AS F16D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F16F'
            THEN 1
            ELSE 0 
        END  )
   AS F16F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F16G'
            THEN 1
            ELSE 0 
        END  )
   AS F16G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F16H'
            THEN 1
            ELSE 0 
        END  )
   AS F16H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F16J'
            THEN 1
            ELSE 0 
        END  )
   AS F16J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F16K'
            THEN 1
            ELSE 0 
        END  )
   AS F16K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F16L'
            THEN 1
            ELSE 0 
        END  )
   AS F16L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F16M'
            THEN 1
            ELSE 0 
        END  )
   AS F16M,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F16N'
            THEN 1
            ELSE 0 
        END  )
   AS F16N,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F16P'
            THEN 1
            ELSE 0 
        END  )
   AS F16P,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F16S'
            THEN 1
            ELSE 0 
        END  )
   AS F16S,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F16T'
            THEN 1
            ELSE 0 
        END  )
   AS F16T,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F17B'
            THEN 1
            ELSE 0 
        END  )
   AS F17B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F17C'
            THEN 1
            ELSE 0 
        END  )
   AS F17C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F17D'
            THEN 1
            ELSE 0 
        END  )
   AS F17D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F21H'
            THEN 1
            ELSE 0 
        END  )
   AS F21H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F21K'
            THEN 1
            ELSE 0 
        END  )
   AS F21K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F21L'
            THEN 1
            ELSE 0 
        END  )
   AS F21L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F21S'
            THEN 1
            ELSE 0 
        END  )
   AS F21S,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F21V'
            THEN 1
            ELSE 0 
        END  )
   AS F21V,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F21W'
            THEN 1
            ELSE 0 
        END  )
   AS F21W,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F21Y'
            THEN 1
            ELSE 0 
        END  )
   AS F21Y,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F22B'
            THEN 1
            ELSE 0 
        END  )
   AS F22B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F22D'
            THEN 1
            ELSE 0 
        END  )
   AS F22D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F22G'
            THEN 1
            ELSE 0 
        END  )
   AS F22G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F23B'
            THEN 1
            ELSE 0 
        END  )
   AS F23B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F23C'
            THEN 1
            ELSE 0 
        END  )
   AS F23C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F23D'
            THEN 1
            ELSE 0 
        END  )
   AS F23D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F23G'
            THEN 1
            ELSE 0 
        END  )
   AS F23G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F23H'
            THEN 1
            ELSE 0 
        END  )
   AS F23H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F23J'
            THEN 1
            ELSE 0 
        END  )
   AS F23J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F23K'
            THEN 1
            ELSE 0 
        END  )
   AS F23K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F23L'
            THEN 1
            ELSE 0 
        END  )
   AS F23L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F23M'
            THEN 1
            ELSE 0 
        END  )
   AS F23M,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F23N'
            THEN 1
            ELSE 0 
        END  )
   AS F23N,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F23Q'
            THEN 1
            ELSE 0 
        END  )
   AS F23Q,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F23R'
            THEN 1
            ELSE 0 
        END  )
   AS F23R,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F24B'
            THEN 1
            ELSE 0 
        END  )
   AS F24B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F24C'
            THEN 1
            ELSE 0 
        END  )
   AS F24C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F24D'
            THEN 1
            ELSE 0 
        END  )
   AS F24D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F24F'
            THEN 1
            ELSE 0 
        END  )
   AS F24F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F24H'
            THEN 1
            ELSE 0 
        END  )
   AS F24H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F24J'
            THEN 1
            ELSE 0 
        END  )
   AS F24J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F25B'
            THEN 1
            ELSE 0 
        END  )
   AS F25B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F25C'
            THEN 1
            ELSE 0 
        END  )
   AS F25C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F25D'
            THEN 1
            ELSE 0 
        END  )
   AS F25D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F25J'
            THEN 1
            ELSE 0 
        END  )
   AS F25J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F26B'
            THEN 1
            ELSE 0 
        END  )
   AS F26B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F27B'
            THEN 1
            ELSE 0 
        END  )
   AS F27B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F27D'
            THEN 1
            ELSE 0 
        END  )
   AS F27D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F28B'
            THEN 1
            ELSE 0 
        END  )
   AS F28B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F28C'
            THEN 1
            ELSE 0 
        END  )
   AS F28C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F28D'
            THEN 1
            ELSE 0 
        END  )
   AS F28D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F28F'
            THEN 1
            ELSE 0 
        END  )
   AS F28F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F28G'
            THEN 1
            ELSE 0 
        END  )
   AS F28G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F41A'
            THEN 1
            ELSE 0 
        END  )
   AS F41A,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F41B'
            THEN 1
            ELSE 0 
        END  )
   AS F41B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F41C'
            THEN 1
            ELSE 0 
        END  )
   AS F41C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F41F'
            THEN 1
            ELSE 0 
        END  )
   AS F41F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F41G'
            THEN 1
            ELSE 0 
        END  )
   AS F41G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F41H'
            THEN 1
            ELSE 0 
        END  )
   AS F41H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F41J'
            THEN 1
            ELSE 0 
        END  )
   AS F41J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F42B'
            THEN 1
            ELSE 0 
        END  )
   AS F42B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F42C'
            THEN 1
            ELSE 0 
        END  )
   AS F42C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F42D'
            THEN 1
            ELSE 0 
        END  )
   AS F42D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'F99Z'
            THEN 1
            ELSE 0 
        END  )
   AS F99Z,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G01B'
            THEN 1
            ELSE 0 
        END  )
   AS G01B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G01C'
            THEN 1
            ELSE 0 
        END  )
   AS G01C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G01D'
            THEN 1
            ELSE 0 
        END  )
   AS G01D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G01F'
            THEN 1
            ELSE 0 
        END  )
   AS G01F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G01G'
            THEN 1
            ELSE 0 
        END  )
   AS G01G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G01H'
            THEN 1
            ELSE 0 
        END  )
   AS G01H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G01J'
            THEN 1
            ELSE 0 
        END  )
   AS G01J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G01K'
            THEN 1
            ELSE 0 
        END  )
   AS G01K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G01L'
            THEN 1
            ELSE 0 
        END  )
   AS G01L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G01M'
            THEN 1
            ELSE 0 
        END  )
   AS G01M,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G01N'
            THEN 1
            ELSE 0 
        END  )
   AS G01N,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G01P'
            THEN 1
            ELSE 0 
        END  )
   AS G01P,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G01Q'
            THEN 1
            ELSE 0 
        END  )
   AS G01Q,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G01R'
            THEN 1
            ELSE 0 
        END  )
   AS G01R,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G01S'
            THEN 1
            ELSE 0 
        END  )
   AS G01S,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G01T'
            THEN 1
            ELSE 0 
        END  )
   AS G01T,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G01V'
            THEN 1
            ELSE 0 
        END  )
   AS G01V,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G01W'
            THEN 1
            ELSE 0 
        END  )
   AS G01W,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G02B'
            THEN 1
            ELSE 0 
        END  )
   AS G02B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G02C'
            THEN 1
            ELSE 0 
        END  )
   AS G02C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G02F'
            THEN 1
            ELSE 0 
        END  )
   AS G02F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G03B'
            THEN 1
            ELSE 0 
        END  )
   AS G03B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G03C'
            THEN 1
            ELSE 0 
        END  )
   AS G03C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G03D'
            THEN 1
            ELSE 0 
        END  )
   AS G03D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G03F'
            THEN 1
            ELSE 0 
        END  )
   AS G03F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G03G'
            THEN 1
            ELSE 0 
        END  )
   AS G03G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G03H'
            THEN 1
            ELSE 0 
        END  )
   AS G03H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G04B'
            THEN 1
            ELSE 0 
        END  )
   AS G04B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G04C'
            THEN 1
            ELSE 0 
        END  )
   AS G04C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G04D'
            THEN 1
            ELSE 0 
        END  )
   AS G04D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G04F'
            THEN 1
            ELSE 0 
        END  )
   AS G04F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G04G'
            THEN 1
            ELSE 0 
        END  )
   AS G04G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G04R'
            THEN 1
            ELSE 0 
        END  )
   AS G04R,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G05B'
            THEN 1
            ELSE 0 
        END  )
   AS G05B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G05D'
            THEN 1
            ELSE 0 
        END  )
   AS G05D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G05F'
            THEN 1
            ELSE 0 
        END  )
   AS G05F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G05G'
            THEN 1
            ELSE 0 
        END  )
   AS G05G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G06C'
            THEN 1
            ELSE 0 
        END  )
   AS G06C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G06D'
            THEN 1
            ELSE 0 
        END  )
   AS G06D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G06E'
            THEN 1
            ELSE 0 
        END  )
   AS G06E,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G06F'
            THEN 1
            ELSE 0 
        END  )
   AS G06F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G06G'
            THEN 1
            ELSE 0 
        END  )
   AS G06G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G06J'
            THEN 1
            ELSE 0 
        END  )
   AS G06J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G06K'
            THEN 1
            ELSE 0 
        END  )
   AS G06K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G06M'
            THEN 1
            ELSE 0 
        END  )
   AS G06M,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G06N'
            THEN 1
            ELSE 0 
        END  )
   AS G06N,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G06Q'
            THEN 1
            ELSE 0 
        END  )
   AS G06Q,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G06T'
            THEN 1
            ELSE 0 
        END  )
   AS G06T,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G07B'
            THEN 1
            ELSE 0 
        END  )
   AS G07B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G07C'
            THEN 1
            ELSE 0 
        END  )
   AS G07C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G07D'
            THEN 1
            ELSE 0 
        END  )
   AS G07D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G07F'
            THEN 1
            ELSE 0 
        END  )
   AS G07F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G07G'
            THEN 1
            ELSE 0 
        END  )
   AS G07G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G08B'
            THEN 1
            ELSE 0 
        END  )
   AS G08B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G08C'
            THEN 1
            ELSE 0 
        END  )
   AS G08C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G08G'
            THEN 1
            ELSE 0 
        END  )
   AS G08G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G09B'
            THEN 1
            ELSE 0 
        END  )
   AS G09B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G09C'
            THEN 1
            ELSE 0 
        END  )
   AS G09C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G09D'
            THEN 1
            ELSE 0 
        END  )
   AS G09D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G09F'
            THEN 1
            ELSE 0 
        END  )
   AS G09F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G09G'
            THEN 1
            ELSE 0 
        END  )
   AS G09G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G10B'
            THEN 1
            ELSE 0 
        END  )
   AS G10B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G10C'
            THEN 1
            ELSE 0 
        END  )
   AS G10C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G10D'
            THEN 1
            ELSE 0 
        END  )
   AS G10D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G10F'
            THEN 1
            ELSE 0 
        END  )
   AS G10F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G10G'
            THEN 1
            ELSE 0 
        END  )
   AS G10G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G10H'
            THEN 1
            ELSE 0 
        END  )
   AS G10H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G10K'
            THEN 1
            ELSE 0 
        END  )
   AS G10K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G10L'
            THEN 1
            ELSE 0 
        END  )
   AS G10L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G11B'
            THEN 1
            ELSE 0 
        END  )
   AS G11B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G11C'
            THEN 1
            ELSE 0 
        END  )
   AS G11C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G12B'
            THEN 1
            ELSE 0 
        END  )
   AS G12B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G21B'
            THEN 1
            ELSE 0 
        END  )
   AS G21B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G21C'
            THEN 1
            ELSE 0 
        END  )
   AS G21C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G21D'
            THEN 1
            ELSE 0 
        END  )
   AS G21D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G21F'
            THEN 1
            ELSE 0 
        END  )
   AS G21F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G21G'
            THEN 1
            ELSE 0 
        END  )
   AS G21G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G21H'
            THEN 1
            ELSE 0 
        END  )
   AS G21H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G21J'
            THEN 1
            ELSE 0 
        END  )
   AS G21J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G21K'
            THEN 1
            ELSE 0 
        END  )
   AS G21K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'G99Z'
            THEN 1
            ELSE 0 
        END  )
   AS G99Z,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H01B'
            THEN 1
            ELSE 0 
        END  )
   AS H01B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H01C'
            THEN 1
            ELSE 0 
        END  )
   AS H01C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H01F'
            THEN 1
            ELSE 0 
        END  )
   AS H01F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H01G'
            THEN 1
            ELSE 0 
        END  )
   AS H01G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H01H'
            THEN 1
            ELSE 0 
        END  )
   AS H01H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H01J'
            THEN 1
            ELSE 0 
        END  )
   AS H01J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H01K'
            THEN 1
            ELSE 0 
        END  )
   AS H01K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H01L'
            THEN 1
            ELSE 0 
        END  )
   AS H01L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H01M'
            THEN 1
            ELSE 0 
        END  )
   AS H01M,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H01P'
            THEN 1
            ELSE 0 
        END  )
   AS H01P,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H01Q'
            THEN 1
            ELSE 0 
        END  )
   AS H01Q,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H01R'
            THEN 1
            ELSE 0 
        END  )
   AS H01R,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H01S'
            THEN 1
            ELSE 0 
        END  )
   AS H01S,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H01T'
            THEN 1
            ELSE 0 
        END  )
   AS H01T,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H02B'
            THEN 1
            ELSE 0 
        END  )
   AS H02B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H02G'
            THEN 1
            ELSE 0 
        END  )
   AS H02G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H02H'
            THEN 1
            ELSE 0 
        END  )
   AS H02H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H02J'
            THEN 1
            ELSE 0 
        END  )
   AS H02J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H02K'
            THEN 1
            ELSE 0 
        END  )
   AS H02K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H02M'
            THEN 1
            ELSE 0 
        END  )
   AS H02M,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H02N'
            THEN 1
            ELSE 0 
        END  )
   AS H02N,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H02P'
            THEN 1
            ELSE 0 
        END  )
   AS H02P,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H03B'
            THEN 1
            ELSE 0 
        END  )
   AS H03B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H03C'
            THEN 1
            ELSE 0 
        END  )
   AS H03C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H03D'
            THEN 1
            ELSE 0 
        END  )
   AS H03D,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H03F'
            THEN 1
            ELSE 0 
        END  )
   AS H03F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H03G'
            THEN 1
            ELSE 0 
        END  )
   AS H03G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H03H'
            THEN 1
            ELSE 0 
        END  )
   AS H03H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H03J'
            THEN 1
            ELSE 0 
        END  )
   AS H03J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H03K'
            THEN 1
            ELSE 0 
        END  )
   AS H03K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H03L'
            THEN 1
            ELSE 0 
        END  )
   AS H03L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H03M'
            THEN 1
            ELSE 0 
        END  )
   AS H03M,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H04B'
            THEN 1
            ELSE 0 
        END  )
   AS H04B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H04H'
            THEN 1
            ELSE 0 
        END  )
   AS H04H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H04J'
            THEN 1
            ELSE 0 
        END  )
   AS H04J,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H04K'
            THEN 1
            ELSE 0 
        END  )
   AS H04K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H04L'
            THEN 1
            ELSE 0 
        END  )
   AS H04L,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H04M'
            THEN 1
            ELSE 0 
        END  )
   AS H04M,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H04N'
            THEN 1
            ELSE 0 
        END  )
   AS H04N,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H04Q'
            THEN 1
            ELSE 0 
        END  )
   AS H04Q,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H04R'
            THEN 1
            ELSE 0 
        END  )
   AS H04R,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H04S'
            THEN 1
            ELSE 0 
        END  )
   AS H04S,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H04W'
            THEN 1
            ELSE 0 
        END  )
   AS H04W,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H05B'
            THEN 1
            ELSE 0 
        END  )
   AS H05B,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H05C'
            THEN 1
            ELSE 0 
        END  )
   AS H05C,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H05F'
            THEN 1
            ELSE 0 
        END  )
   AS H05F,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H05G'
            THEN 1
            ELSE 0 
        END  )
   AS H05G,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H05H'
            THEN 1
            ELSE 0 
        END  )
   AS H05H,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H05K'
            THEN 1
            ELSE 0 
        END  )
   AS H05K,
cast_to_bit( 
            CASE WHEN left(ipc_class_symbol,4) = 'H99Z'
            THEN 1
            ELSE 0 
        END  )
   AS H99Z
   
FROM PATSTAT.tls209_appln_ipc
WHERE ipc_class_symbol IS NOT NULL);
COMMIT;

-- Alter table
#ALTER TABLE patent_families 
#ADD COLUMN `ipcBits` TEXT(642) NULL DEFAULT NULL AFTER `FEE20`;

-- Gets names
#SET @colNames = (SELECT group_concat('cast(',COLUMN_NAME,' AS UNSIGNED)') AS COLUMNS FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'ipcBits' AND TABLE_SCHEMA = 'PATSTAT' AND COLUMN_NAME != 'appln_id');
#SELECT @colNames;

-- SELECT concat(cast(A01B AS UNSIGNED),cast(A01C AS UNSIGNED),cast(A01D AS UNSIGNED),cast(A01F AS UNSIGNED),cast(A01G AS UNSIGNED),cast(A01H AS UNSIGNED),cast(A01J AS UNSIGNED),cast(A01K AS UNSIGNED),cast(A01L AS UNSIGNED),cast(A01M AS UNSIGNED),cast(A01N AS UNSIGNED),cast(A01P AS UNSIGNED),cast(A21B AS UNSIGNED),cast(A21C AS UNSIGNED),cast(A21D AS UNSIGNED),cast(A22B AS UNSIGNED),cast(A22C AS UNSIGNED),cast(A23B AS UNSIGNED),cast(A23C AS UNSIGNED),cast(A23D AS UNSIGNED),cast(A23F AS UNSIGNED),cast(A23G AS UNSIGNED),cast(A23J AS UNSIGNED),cast(A23K AS UNSIGNED),cast(A23L AS UNSIGNED),cast(A23N AS UNSIGNED),cast(A23P AS UNSIGNED),cast(A24B AS UNSIGNED),cast(A24C AS UNSIGNED),cast(A24D AS UNSIGNED),cast(A24F AS UNSIGNED),cast(A41B AS UNSIGNED),cast(A41C AS UNSIGNED),cast(A41D AS UNSIGNED),cast(A41F AS UNSIGNED),cast(A41G AS UNSIGNED),cast(A41H AS UNSIGNED),cast(A42B AS UNSIGNED),cast(A42C AS UNSIGNED),cast(A43B AS UNSIGNED),cast(A43C AS UNSIGNED),cast(A43D AS UNSIGNED),cast(A44B AS UNSIGNED),cast(A44C AS UNSIGNED),cast(A45B AS UNSIGNED),cast(A45C AS UNSIGNED),cast(A45D AS UNSIGNED),cast(A45F AS UNSIGNED),cast(A46B AS UNSIGNED),cast(A46D AS UNSIGNED),cast(A47B AS UNSIGNED),cast(A47C AS UNSIGNED),cast(A47D AS UNSIGNED),cast(A47F AS UNSIGNED),cast(A47G AS UNSIGNED),cast(A47H AS UNSIGNED),cast(A47J AS UNSIGNED),cast(A47K AS UNSIGNED),cast(A47L AS UNSIGNED),cast(A61B AS UNSIGNED),cast(A61C AS UNSIGNED),cast(A61D AS UNSIGNED),cast(A61F AS UNSIGNED),cast(A61G AS UNSIGNED),cast(A61H AS UNSIGNED),cast(A61J AS UNSIGNED),cast(A61K AS UNSIGNED),cast(A61L AS UNSIGNED),cast(A61M AS UNSIGNED),cast(A61N AS UNSIGNED),cast(A61P AS UNSIGNED),cast(A61Q AS UNSIGNED),cast(A62B AS UNSIGNED),cast(A62C AS UNSIGNED),cast(A62D AS UNSIGNED),cast(A63B AS UNSIGNED),cast(A63C AS UNSIGNED),cast(A63D AS UNSIGNED),cast(A63F AS UNSIGNED),cast(A63G AS UNSIGNED),cast(A63H AS UNSIGNED),cast(A63J AS UNSIGNED),cast(A63K AS UNSIGNED),cast(A99Z AS UNSIGNED),cast(B01B AS UNSIGNED),cast(B01D AS UNSIGNED),cast(B01F AS UNSIGNED),cast(B01J AS UNSIGNED),cast(B01L AS UNSIGNED),cast(B02B AS UNSIGNED),cast(B02C AS UNSIGNED),cast(B03B AS UNSIGNED),cast(B03C AS UNSIGNED),cast(B03D AS UNSIGNED),cast(B04B AS UNSIGNED),cast(B04C AS UNSIGNED),cast(B05B AS UNSIGNED),cast(B05C AS UNSIGNED),cast(B05D AS UNSIGNED),cast(B06B AS UNSIGNED),cast(B07B AS UNSIGNED),cast(B07C AS UNSIGNED),cast(B08B AS UNSIGNED),cast(B09B AS UNSIGNED),cast(B09C AS UNSIGNED),cast(B21B AS UNSIGNED),cast(B21C AS UNSIGNED),cast(B21D AS UNSIGNED),cast(B21F AS UNSIGNED),cast(B21G AS UNSIGNED),cast(B21H AS UNSIGNED),cast(B21J AS UNSIGNED),cast(B21K AS UNSIGNED),cast(B21L AS UNSIGNED),cast(B22C AS UNSIGNED),cast(B22D AS UNSIGNED),cast(B22F AS UNSIGNED),cast(B23B AS UNSIGNED),cast(B23C AS UNSIGNED),cast(B23D AS UNSIGNED),cast(B23F AS UNSIGNED),cast(B23G AS UNSIGNED),cast(B23H AS UNSIGNED),cast(B23K AS UNSIGNED),cast(B23P AS UNSIGNED),cast(B23Q AS UNSIGNED),cast(B24B AS UNSIGNED),cast(B24C AS UNSIGNED),cast(B24D AS UNSIGNED),cast(B25B AS UNSIGNED),cast(B25C AS UNSIGNED),cast(B25D AS UNSIGNED),cast(B25F AS UNSIGNED),cast(B25G AS UNSIGNED),cast(B25H AS UNSIGNED),cast(B25J AS UNSIGNED),cast(B26B AS UNSIGNED),cast(B26D AS UNSIGNED),cast(B26F AS UNSIGNED),cast(B27B AS UNSIGNED),cast(B27C AS UNSIGNED),cast(B27D AS UNSIGNED),cast(B27F AS UNSIGNED),cast(B27G AS UNSIGNED),cast(B27H AS UNSIGNED),cast(B27J AS UNSIGNED),cast(B27K AS UNSIGNED),cast(B27L AS UNSIGNED),cast(B27M AS UNSIGNED),cast(B27N AS UNSIGNED),cast(B28B AS UNSIGNED),cast(B28C AS UNSIGNED),cast(B28D AS UNSIGNED),cast(B29B AS UNSIGNED),cast(B29C AS UNSIGNED),cast(B29D AS UNSIGNED),cast(B29K AS UNSIGNED),cast(B29L AS UNSIGNED),cast(B30B AS UNSIGNED),cast(B31B AS UNSIGNED),cast(B31C AS UNSIGNED),cast(B31D AS UNSIGNED),cast(B31F AS UNSIGNED),cast(B32B AS UNSIGNED),cast(B41B AS UNSIGNED),cast(B41C AS UNSIGNED),cast(B41D AS UNSIGNED),cast(B41F AS UNSIGNED),cast(B41G AS UNSIGNED),cast(B41J AS UNSIGNED),cast(B41K AS UNSIGNED),cast(B41L AS UNSIGNED),cast(B41M AS UNSIGNED),cast(B41N AS UNSIGNED),cast(B42B AS UNSIGNED),cast(B42C AS UNSIGNED),cast(B42D AS UNSIGNED),cast(B42F AS UNSIGNED),cast(B43K AS UNSIGNED),cast(B43L AS UNSIGNED),cast(B43M AS UNSIGNED),cast(B44B AS UNSIGNED),cast(B44C AS UNSIGNED),cast(B44D AS UNSIGNED),cast(B44F AS UNSIGNED),cast(B60B AS UNSIGNED),cast(B60C AS UNSIGNED),cast(B60D AS UNSIGNED),cast(B60F AS UNSIGNED),cast(B60G AS UNSIGNED),cast(B60H AS UNSIGNED),cast(B60J AS UNSIGNED),cast(B60K AS UNSIGNED),cast(B60L AS UNSIGNED),cast(B60M AS UNSIGNED),cast(B60N AS UNSIGNED),cast(B60P AS UNSIGNED),cast(B60Q AS UNSIGNED),cast(B60R AS UNSIGNED),cast(B60S AS UNSIGNED),cast(B60T AS UNSIGNED),cast(B60V AS UNSIGNED),cast(B60W AS UNSIGNED),cast(B61B AS UNSIGNED),cast(B61C AS UNSIGNED),cast(B61D AS UNSIGNED),cast(B61F AS UNSIGNED),cast(B61G AS UNSIGNED),cast(B61H AS UNSIGNED),cast(B61J AS UNSIGNED),cast(B61K AS UNSIGNED),cast(B61L AS UNSIGNED),cast(B62B AS UNSIGNED),cast(B62C AS UNSIGNED),cast(B62D AS UNSIGNED),cast(B62H AS UNSIGNED),cast(B62J AS UNSIGNED),cast(B62K AS UNSIGNED),cast(B62L AS UNSIGNED),cast(B62M AS UNSIGNED),cast(B63B AS UNSIGNED),cast(B63C AS UNSIGNED),cast(B63G AS UNSIGNED),cast(B63H AS UNSIGNED),cast(B63J AS UNSIGNED),cast(B64B AS UNSIGNED),cast(B64C AS UNSIGNED),cast(B64D AS UNSIGNED),cast(B64F AS UNSIGNED),cast(B64G AS UNSIGNED),cast(B65B AS UNSIGNED),cast(B65C AS UNSIGNED),cast(B65D AS UNSIGNED),cast(B65F AS UNSIGNED),cast(B65G AS UNSIGNED),cast(B65H AS UNSIGNED),cast(B66B AS UNSIGNED),cast(B66C AS UNSIGNED),cast(B66D AS UNSIGNED),cast(B66F AS UNSIGNED),cast(B67B AS UNSIGNED),cast(B67C AS UNSIGNED),cast(B67D AS UNSIGNED),cast(B68B AS UNSIGNED),cast(B68C AS UNSIGNED),cast(B68F AS UNSIGNED),cast(B68G AS UNSIGNED),cast(B81B AS UNSIGNED),cast(B81C AS UNSIGNED),cast(B82B AS UNSIGNED),cast(B82Y AS UNSIGNED),cast(B99Z AS UNSIGNED),cast(C01B AS UNSIGNED),cast(C01C AS UNSIGNED),cast(C01D AS UNSIGNED),cast(C01F AS UNSIGNED),cast(C01G AS UNSIGNED),cast(C02F AS UNSIGNED),cast(C03B AS UNSIGNED),cast(C03C AS UNSIGNED),cast(C04B AS UNSIGNED),cast(C05B AS UNSIGNED),cast(C05C AS UNSIGNED),cast(C05D AS UNSIGNED),cast(C05F AS UNSIGNED),cast(C05G AS UNSIGNED),cast(C06B AS UNSIGNED),cast(C06C AS UNSIGNED),cast(C06D AS UNSIGNED),cast(C06F AS UNSIGNED),cast(C07B AS UNSIGNED),cast(C07C AS UNSIGNED),cast(C07D AS UNSIGNED),cast(C07F AS UNSIGNED),cast(C07G AS UNSIGNED),cast(C07H AS UNSIGNED),cast(C07J AS UNSIGNED),cast(C07K AS UNSIGNED),cast(C08B AS UNSIGNED),cast(C08C AS UNSIGNED),cast(C08F AS UNSIGNED),cast(C08G AS UNSIGNED),cast(C08H AS UNSIGNED),cast(C08J AS UNSIGNED),cast(C08K AS UNSIGNED),cast(C08L AS UNSIGNED),cast(C09B AS UNSIGNED),cast(C09C AS UNSIGNED),cast(C09D AS UNSIGNED),cast(C09F AS UNSIGNED),cast(C09G AS UNSIGNED),cast(C09H AS UNSIGNED),cast(C09J AS UNSIGNED),cast(C09K AS UNSIGNED),cast(C10B AS UNSIGNED),cast(C10C AS UNSIGNED),cast(C10F AS UNSIGNED),cast(C10G AS UNSIGNED),cast(C10H AS UNSIGNED),cast(C10J AS UNSIGNED),cast(C10K AS UNSIGNED),cast(C10L AS UNSIGNED),cast(C10M AS UNSIGNED),cast(C10N AS UNSIGNED),cast(C11B AS UNSIGNED),cast(C11C AS UNSIGNED),cast(C11D AS UNSIGNED),cast(C12C AS UNSIGNED),cast(C12F AS UNSIGNED),cast(C12G AS UNSIGNED),cast(C12H AS UNSIGNED),cast(C12J AS UNSIGNED),cast(C12L AS UNSIGNED),cast(C12M AS UNSIGNED),cast(C12N AS UNSIGNED),cast(C12P AS UNSIGNED),cast(C12Q AS UNSIGNED),cast(C12R AS UNSIGNED),cast(C12S AS UNSIGNED),cast(C13B AS UNSIGNED),cast(C13C AS UNSIGNED),cast(C13D AS UNSIGNED),cast(C13F AS UNSIGNED),cast(C13G AS UNSIGNED),cast(C13K AS UNSIGNED),cast(C14B AS UNSIGNED),cast(C14C AS UNSIGNED),cast(C21B AS UNSIGNED),cast(C21C AS UNSIGNED),cast(C21D AS UNSIGNED),cast(C22B AS UNSIGNED),cast(C22C AS UNSIGNED),cast(C22F AS UNSIGNED),cast(C23C AS UNSIGNED),cast(C23D AS UNSIGNED),cast(C23F AS UNSIGNED),cast(C23G AS UNSIGNED),cast(C25B AS UNSIGNED),cast(C25C AS UNSIGNED),cast(C25D AS UNSIGNED),cast(C25F AS UNSIGNED),cast(C30B AS UNSIGNED),cast(C40B AS UNSIGNED),cast(C99Z AS UNSIGNED),cast(D01B AS UNSIGNED),cast(D01C AS UNSIGNED),cast(D01D AS UNSIGNED),cast(D01F AS UNSIGNED),cast(D01G AS UNSIGNED),cast(D01H AS UNSIGNED),cast(D02G AS UNSIGNED),cast(D02H AS UNSIGNED),cast(D02J AS UNSIGNED),cast(D03C AS UNSIGNED),cast(D03D AS UNSIGNED),cast(D03J AS UNSIGNED),cast(D04B AS UNSIGNED),cast(D04C AS UNSIGNED),cast(D04D AS UNSIGNED),cast(D04G AS UNSIGNED),cast(D04H AS UNSIGNED),cast(D05B AS UNSIGNED),cast(D05C AS UNSIGNED),cast(D06B AS UNSIGNED),cast(D06C AS UNSIGNED),cast(D06F AS UNSIGNED),cast(D06G AS UNSIGNED),cast(D06H AS UNSIGNED),cast(D06J AS UNSIGNED),cast(D06L AS UNSIGNED),cast(D06M AS UNSIGNED),cast(D06N AS UNSIGNED),cast(D06P AS UNSIGNED),cast(D06Q AS UNSIGNED),cast(D07B AS UNSIGNED),cast(D21B AS UNSIGNED),cast(D21C AS UNSIGNED),cast(D21D AS UNSIGNED),cast(D21F AS UNSIGNED),cast(D21G AS UNSIGNED),cast(D21H AS UNSIGNED),cast(D21J AS UNSIGNED),cast(D99Z AS UNSIGNED),cast(E01B AS UNSIGNED),cast(E01C AS UNSIGNED),cast(E01D AS UNSIGNED),cast(E01F AS UNSIGNED),cast(E01H AS UNSIGNED),cast(E02B AS UNSIGNED),cast(E02C AS UNSIGNED),cast(E02D AS UNSIGNED),cast(E02F AS UNSIGNED),cast(E03B AS UNSIGNED),cast(E03C AS UNSIGNED),cast(E03D AS UNSIGNED),cast(E03F AS UNSIGNED),cast(E04B AS UNSIGNED),cast(E04C AS UNSIGNED),cast(E04D AS UNSIGNED),cast(E04F AS UNSIGNED),cast(E04G AS UNSIGNED),cast(E04H AS UNSIGNED),cast(E05B AS UNSIGNED),cast(E05C AS UNSIGNED),cast(E05D AS UNSIGNED),cast(E05F AS UNSIGNED),cast(E05G AS UNSIGNED),cast(E06B AS UNSIGNED),cast(E06C AS UNSIGNED),cast(E21B AS UNSIGNED),cast(E21C AS UNSIGNED),cast(E21D AS UNSIGNED),cast(E21F AS UNSIGNED),cast(E99Z AS UNSIGNED),cast(F01B AS UNSIGNED),cast(F01C AS UNSIGNED),cast(F01D AS UNSIGNED),cast(F01K AS UNSIGNED),cast(F01L AS UNSIGNED),cast(F01M AS UNSIGNED),cast(F01N AS UNSIGNED),cast(F01P AS UNSIGNED),cast(F02B AS UNSIGNED),cast(F02C AS UNSIGNED),cast(F02D AS UNSIGNED),cast(F02F AS UNSIGNED),cast(F02G AS UNSIGNED),cast(F02K AS UNSIGNED),cast(F02M AS UNSIGNED),cast(F02N AS UNSIGNED),cast(F02P AS UNSIGNED),cast(F03B AS UNSIGNED),cast(F03C AS UNSIGNED),cast(F03D AS UNSIGNED),cast(F03G AS UNSIGNED),cast(F03H AS UNSIGNED),cast(F04B AS UNSIGNED),cast(F04C AS UNSIGNED),cast(F04D AS UNSIGNED),cast(F04F AS UNSIGNED),cast(F15B AS UNSIGNED),cast(F15C AS UNSIGNED),cast(F15D AS UNSIGNED),cast(F16B AS UNSIGNED),cast(F16C AS UNSIGNED),cast(F16D AS UNSIGNED),cast(F16F AS UNSIGNED),cast(F16G AS UNSIGNED),cast(F16H AS UNSIGNED),cast(F16J AS UNSIGNED),cast(F16K AS UNSIGNED),cast(F16L AS UNSIGNED),cast(F16M AS UNSIGNED),cast(F16N AS UNSIGNED),cast(F16P AS UNSIGNED),cast(F16S AS UNSIGNED),cast(F16T AS UNSIGNED),cast(F17B AS UNSIGNED),cast(F17C AS UNSIGNED),cast(F17D AS UNSIGNED),cast(F21H AS UNSIGNED),cast(F21K AS UNSIGNED),cast(F21L AS UNSIGNED),cast(F21S AS UNSIGNED),cast(F21V AS UNSIGNED),cast(F21W AS UNSIGNED),cast(F21Y AS UNSIGNED),cast(F22B AS UNSIGNED),cast(F22D AS UNSIGNED),cast(F22G AS UNSIGNED),cast(F23B AS UNSIGNED),cast(F23C AS UNSIGNED),cast(F23D AS UNSIGNED),cast(F23G AS UNSIGNED),cast(F23H AS UNSIGNED),cast(F23J AS UNSIGNED),cast(F23K AS UNSIGNED),cast(F23L AS UNSIGNED),cast(F23M AS UNSIGNED),cast(F23N AS UNSIGNED),cast(F23Q AS UNSIGNED),cast(F23R AS UNSIGNED),cast(F24B AS UNSIGNED),cast(F24C AS UNSIGNED),cast(F24D AS UNSIGNED),cast(F24F AS UNSIGNED),cast(F24H AS UNSIGNED),cast(F24J AS UNSIGNED),cast(F25B AS UNSIGNED),cast(F25C AS UNSIGNED),cast(F25D AS UNSIGNED),cast(F25J AS UNSIGNED),cast(F26B AS UNSIGNED),cast(F27B AS UNSIGNED),cast(F27D AS UNSIGNED),cast(F28B AS UNSIGNED),cast(F28C AS UNSIGNED),cast(F28D AS UNSIGNED),cast(F28F AS UNSIGNED),cast(F28G AS UNSIGNED),cast(F41A AS UNSIGNED),cast(F41B AS UNSIGNED),cast(F41C AS UNSIGNED),cast(F41F AS UNSIGNED),cast(F41G AS UNSIGNED),cast(F41H AS UNSIGNED),cast(F41J AS UNSIGNED),cast(F42B AS UNSIGNED),cast(F42C AS UNSIGNED),cast(F42D AS UNSIGNED),cast(F99Z AS UNSIGNED),cast(G01B AS UNSIGNED),cast(G01C AS UNSIGNED),cast(G01D AS UNSIGNED),cast(G01F AS UNSIGNED),cast(G01G AS UNSIGNED),cast(G01H AS UNSIGNED),cast(G01J AS UNSIGNED),cast(G01K AS UNSIGNED),cast(G01L AS UNSIGNED),cast(G01M AS UNSIGNED),cast(G01N AS UNSIGNED),cast(G01P AS UNSIGNED),cast(G01Q AS UNSIGNED),cast(G01R AS UNSIGNED),cast(G01S AS UNSIGNED),cast(G01T AS UNSIGNED),cast(G01V AS UNSIGNED),cast(G01W AS UNSIGNED),cast(G02B AS UNSIGNED),cast(G02C AS UNSIGNED),cast(G02F AS UNSIGNED),cast(G03B AS UNSIGNED),cast(G03C AS UNSIGNED),cast(G03D AS UNSIGNED),cast(G03F AS UNSIGNED),cast(G03G AS UNSIGNED),cast(G03H AS UNSIGNED),cast(G04B AS UNSIGNED),cast(G04C AS UNSIGNED),cast(G04D AS UNSIGNED),cast(G04F AS UNSIGNED),cast(G04G AS UNSIGNED),cast(G04R AS UNSIGNED),cast(G05B AS UNSIGNED),cast(G05D AS UNSIGNED),cast(G05F AS UNSIGNED),cast(G05G AS UNSIGNED),cast(G06C AS UNSIGNED),cast(G06D AS UNSIGNED),cast(G06E AS UNSIGNED),cast(G06F AS UNSIGNED),cast(G06G AS UNSIGNED),cast(G06J AS UNSIGNED),cast(G06K AS UNSIGNED),cast(G06M AS UNSIGNED),cast(G06N AS UNSIGNED),cast(G06Q AS UNSIGNED),cast(G06T AS UNSIGNED),cast(G07B AS UNSIGNED),cast(G07C AS UNSIGNED),cast(G07D AS UNSIGNED),cast(G07F AS UNSIGNED),cast(G07G AS UNSIGNED),cast(G08B AS UNSIGNED),cast(G08C AS UNSIGNED),cast(G08G AS UNSIGNED),cast(G09B AS UNSIGNED),cast(G09C AS UNSIGNED),cast(G09D AS UNSIGNED),cast(G09F AS UNSIGNED),cast(G09G AS UNSIGNED),cast(G10B AS UNSIGNED),cast(G10C AS UNSIGNED),cast(G10D AS UNSIGNED),cast(G10F AS UNSIGNED),cast(G10G AS UNSIGNED),cast(G10H AS UNSIGNED),cast(G10K AS UNSIGNED),cast(G10L AS UNSIGNED),cast(G11B AS UNSIGNED),cast(G11C AS UNSIGNED),cast(G12B AS UNSIGNED),cast(G21B AS UNSIGNED),cast(G21C AS UNSIGNED),cast(G21D AS UNSIGNED),cast(G21F AS UNSIGNED),cast(G21G AS UNSIGNED),cast(G21H AS UNSIGNED),cast(G21J AS UNSIGNED),cast(G21K AS UNSIGNED),cast(G99Z AS UNSIGNED),cast(H01B AS UNSIGNED),cast(H01C AS UNSIGNED),cast(H01F AS UNSIGNED),cast(H01G AS UNSIGNED),cast(H01H AS UNSIGNED),cast(H01J AS UNSIGNED),cast(H01K AS UNSIGNED),cast(H01L AS UNSIGNED),cast(H01M AS UNSIGNED),cast(H01P AS UNSIGNED),cast(H01Q AS UNSIGNED),cast(H01R AS UNSIGNED),cast(H01S AS UNSIGNED),cast(H01T AS UNSIGNED),cast(H02B AS UNSIGNED),cast(H02G AS UNSIGNED),cast(H02H AS UNSIGNED),cast(H02J AS UNSIGNED),cast(H02K AS UNSIGNED),cast(H02M AS UNSIGNED),cast(H02N AS UNSIGNED),cast(H02P AS UNSIGNED),cast(H03B AS UNSIGNED),cast(H03C AS UNSIGNED),cast(H03D AS UNSIGNED),cast(H03F AS UNSIGNED),cast(H03G AS UNSIGNED),cast(H03H AS UNSIGNED),cast(H03J AS UNSIGNED),cast(H03K AS UNSIGNED),cast(H03L AS UNSIGNED),cast(H03M AS UNSIGNED),cast(H04B AS UNSIGNED),cast(H04H AS UNSIGNED),cast(H04J AS UNSIGNED),cast(H04K AS UNSIGNED),cast(H04L AS UNSIGNED),cast(H04M AS UNSIGNED),cast(H04N AS UNSIGNED),cast(H04Q AS UNSIGNED),cast(H04R AS UNSIGNED),cast(H04S AS UNSIGNED),cast(H04W AS UNSIGNED),cast(H05B AS UNSIGNED),cast(H05C AS UNSIGNED),cast(H05F AS UNSIGNED),cast(H05G AS UNSIGNED),cast(H05H AS UNSIGNED),cast(H05K AS UNSIGNED),cast(H99Z AS UNSIGNED)) 
-- FROM ipcBits;

UPDATE patent_families, ipcBits
SET ipcBits = concat(cast(A01B AS UNSIGNED),cast(A01C AS UNSIGNED),cast(A01D AS UNSIGNED),cast(A01F AS UNSIGNED),cast(A01G AS UNSIGNED),cast(A01H AS UNSIGNED),cast(A01J AS UNSIGNED),cast(A01K AS UNSIGNED),cast(A01L AS UNSIGNED),cast(A01M AS UNSIGNED),cast(A01N AS UNSIGNED),cast(A01P AS UNSIGNED),cast(A21B AS UNSIGNED),cast(A21C AS UNSIGNED),cast(A21D AS UNSIGNED),cast(A22B AS UNSIGNED),cast(A22C AS UNSIGNED),cast(A23B AS UNSIGNED),cast(A23C AS UNSIGNED),cast(A23D AS UNSIGNED),cast(A23F AS UNSIGNED),cast(A23G AS UNSIGNED),cast(A23J AS UNSIGNED),cast(A23K AS UNSIGNED),cast(A23L AS UNSIGNED),cast(A23N AS UNSIGNED),cast(A23P AS UNSIGNED),cast(A24B AS UNSIGNED),cast(A24C AS UNSIGNED),cast(A24D AS UNSIGNED),cast(A24F AS UNSIGNED),cast(A41B AS UNSIGNED),cast(A41C AS UNSIGNED),cast(A41D AS UNSIGNED),cast(A41F AS UNSIGNED),cast(A41G AS UNSIGNED),cast(A41H AS UNSIGNED),cast(A42B AS UNSIGNED),cast(A42C AS UNSIGNED),cast(A43B AS UNSIGNED),cast(A43C AS UNSIGNED),cast(A43D AS UNSIGNED),cast(A44B AS UNSIGNED),cast(A44C AS UNSIGNED),cast(A45B AS UNSIGNED),cast(A45C AS UNSIGNED),cast(A45D AS UNSIGNED),cast(A45F AS UNSIGNED),cast(A46B AS UNSIGNED),cast(A46D AS UNSIGNED),cast(A47B AS UNSIGNED),cast(A47C AS UNSIGNED),cast(A47D AS UNSIGNED),cast(A47F AS UNSIGNED),cast(A47G AS UNSIGNED),cast(A47H AS UNSIGNED),cast(A47J AS UNSIGNED),cast(A47K AS UNSIGNED),cast(A47L AS UNSIGNED),cast(A61B AS UNSIGNED),cast(A61C AS UNSIGNED),cast(A61D AS UNSIGNED),cast(A61F AS UNSIGNED),cast(A61G AS UNSIGNED),cast(A61H AS UNSIGNED),cast(A61J AS UNSIGNED),cast(A61K AS UNSIGNED),cast(A61L AS UNSIGNED),cast(A61M AS UNSIGNED),cast(A61N AS UNSIGNED),cast(A61P AS UNSIGNED),cast(A61Q AS UNSIGNED),cast(A62B AS UNSIGNED),cast(A62C AS UNSIGNED),cast(A62D AS UNSIGNED),cast(A63B AS UNSIGNED),cast(A63C AS UNSIGNED),cast(A63D AS UNSIGNED),cast(A63F AS UNSIGNED),cast(A63G AS UNSIGNED),cast(A63H AS UNSIGNED),cast(A63J AS UNSIGNED),cast(A63K AS UNSIGNED),cast(A99Z AS UNSIGNED),cast(B01B AS UNSIGNED),cast(B01D AS UNSIGNED),cast(B01F AS UNSIGNED),cast(B01J AS UNSIGNED),cast(B01L AS UNSIGNED),cast(B02B AS UNSIGNED),cast(B02C AS UNSIGNED),cast(B03B AS UNSIGNED),cast(B03C AS UNSIGNED),cast(B03D AS UNSIGNED),cast(B04B AS UNSIGNED),cast(B04C AS UNSIGNED),cast(B05B AS UNSIGNED),cast(B05C AS UNSIGNED),cast(B05D AS UNSIGNED),cast(B06B AS UNSIGNED),cast(B07B AS UNSIGNED),cast(B07C AS UNSIGNED),cast(B08B AS UNSIGNED),cast(B09B AS UNSIGNED),cast(B09C AS UNSIGNED),cast(B21B AS UNSIGNED),cast(B21C AS UNSIGNED),cast(B21D AS UNSIGNED),cast(B21F AS UNSIGNED),cast(B21G AS UNSIGNED),cast(B21H AS UNSIGNED),cast(B21J AS UNSIGNED),cast(B21K AS UNSIGNED),cast(B21L AS UNSIGNED),cast(B22C AS UNSIGNED),cast(B22D AS UNSIGNED),cast(B22F AS UNSIGNED),cast(B23B AS UNSIGNED),cast(B23C AS UNSIGNED),cast(B23D AS UNSIGNED),cast(B23F AS UNSIGNED),cast(B23G AS UNSIGNED),cast(B23H AS UNSIGNED),cast(B23K AS UNSIGNED),cast(B23P AS UNSIGNED),cast(B23Q AS UNSIGNED),cast(B24B AS UNSIGNED),cast(B24C AS UNSIGNED),cast(B24D AS UNSIGNED),cast(B25B AS UNSIGNED),cast(B25C AS UNSIGNED),cast(B25D AS UNSIGNED),cast(B25F AS UNSIGNED),cast(B25G AS UNSIGNED),cast(B25H AS UNSIGNED),cast(B25J AS UNSIGNED),cast(B26B AS UNSIGNED),cast(B26D AS UNSIGNED),cast(B26F AS UNSIGNED),cast(B27B AS UNSIGNED),cast(B27C AS UNSIGNED),cast(B27D AS UNSIGNED),cast(B27F AS UNSIGNED),cast(B27G AS UNSIGNED),cast(B27H AS UNSIGNED),cast(B27J AS UNSIGNED),cast(B27K AS UNSIGNED),cast(B27L AS UNSIGNED),cast(B27M AS UNSIGNED),cast(B27N AS UNSIGNED),cast(B28B AS UNSIGNED),cast(B28C AS UNSIGNED),cast(B28D AS UNSIGNED),cast(B29B AS UNSIGNED),cast(B29C AS UNSIGNED),cast(B29D AS UNSIGNED),cast(B29K AS UNSIGNED),cast(B29L AS UNSIGNED),cast(B30B AS UNSIGNED),cast(B31B AS UNSIGNED),cast(B31C AS UNSIGNED),cast(B31D AS UNSIGNED),cast(B31F AS UNSIGNED),cast(B32B AS UNSIGNED),cast(B41B AS UNSIGNED),cast(B41C AS UNSIGNED),cast(B41D AS UNSIGNED),cast(B41F AS UNSIGNED),cast(B41G AS UNSIGNED),cast(B41J AS UNSIGNED),cast(B41K AS UNSIGNED),cast(B41L AS UNSIGNED),cast(B41M AS UNSIGNED),cast(B41N AS UNSIGNED),cast(B42B AS UNSIGNED),cast(B42C AS UNSIGNED),cast(B42D AS UNSIGNED),cast(B42F AS UNSIGNED),cast(B43K AS UNSIGNED),cast(B43L AS UNSIGNED),cast(B43M AS UNSIGNED),cast(B44B AS UNSIGNED),cast(B44C AS UNSIGNED),cast(B44D AS UNSIGNED),cast(B44F AS UNSIGNED),cast(B60B AS UNSIGNED),cast(B60C AS UNSIGNED),cast(B60D AS UNSIGNED),cast(B60F AS UNSIGNED),cast(B60G AS UNSIGNED),cast(B60H AS UNSIGNED),cast(B60J AS UNSIGNED),cast(B60K AS UNSIGNED),cast(B60L AS UNSIGNED),cast(B60M AS UNSIGNED),cast(B60N AS UNSIGNED),cast(B60P AS UNSIGNED),cast(B60Q AS UNSIGNED),cast(B60R AS UNSIGNED),cast(B60S AS UNSIGNED),cast(B60T AS UNSIGNED),cast(B60V AS UNSIGNED),cast(B60W AS UNSIGNED),cast(B61B AS UNSIGNED),cast(B61C AS UNSIGNED),cast(B61D AS UNSIGNED),cast(B61F AS UNSIGNED),cast(B61G AS UNSIGNED),cast(B61H AS UNSIGNED),cast(B61J AS UNSIGNED),cast(B61K AS UNSIGNED),cast(B61L AS UNSIGNED),cast(B62B AS UNSIGNED),cast(B62C AS UNSIGNED),cast(B62D AS UNSIGNED),cast(B62H AS UNSIGNED),cast(B62J AS UNSIGNED),cast(B62K AS UNSIGNED),cast(B62L AS UNSIGNED),cast(B62M AS UNSIGNED),cast(B63B AS UNSIGNED),cast(B63C AS UNSIGNED),cast(B63G AS UNSIGNED),cast(B63H AS UNSIGNED),cast(B63J AS UNSIGNED),cast(B64B AS UNSIGNED),cast(B64C AS UNSIGNED),cast(B64D AS UNSIGNED),cast(B64F AS UNSIGNED),cast(B64G AS UNSIGNED),cast(B65B AS UNSIGNED),cast(B65C AS UNSIGNED),cast(B65D AS UNSIGNED),cast(B65F AS UNSIGNED),cast(B65G AS UNSIGNED),cast(B65H AS UNSIGNED),cast(B66B AS UNSIGNED),cast(B66C AS UNSIGNED),cast(B66D AS UNSIGNED),cast(B66F AS UNSIGNED),cast(B67B AS UNSIGNED),cast(B67C AS UNSIGNED),cast(B67D AS UNSIGNED),cast(B68B AS UNSIGNED),cast(B68C AS UNSIGNED),cast(B68F AS UNSIGNED),cast(B68G AS UNSIGNED),cast(B81B AS UNSIGNED),cast(B81C AS UNSIGNED),cast(B82B AS UNSIGNED),cast(B82Y AS UNSIGNED),cast(B99Z AS UNSIGNED),cast(C01B AS UNSIGNED),cast(C01C AS UNSIGNED),cast(C01D AS UNSIGNED),cast(C01F AS UNSIGNED),cast(C01G AS UNSIGNED),cast(C02F AS UNSIGNED),cast(C03B AS UNSIGNED),cast(C03C AS UNSIGNED),cast(C04B AS UNSIGNED),cast(C05B AS UNSIGNED),cast(C05C AS UNSIGNED),cast(C05D AS UNSIGNED),cast(C05F AS UNSIGNED),cast(C05G AS UNSIGNED),cast(C06B AS UNSIGNED),cast(C06C AS UNSIGNED),cast(C06D AS UNSIGNED),cast(C06F AS UNSIGNED),cast(C07B AS UNSIGNED),cast(C07C AS UNSIGNED),cast(C07D AS UNSIGNED),cast(C07F AS UNSIGNED),cast(C07G AS UNSIGNED),cast(C07H AS UNSIGNED),cast(C07J AS UNSIGNED),cast(C07K AS UNSIGNED),cast(C08B AS UNSIGNED),cast(C08C AS UNSIGNED),cast(C08F AS UNSIGNED),cast(C08G AS UNSIGNED),cast(C08H AS UNSIGNED),cast(C08J AS UNSIGNED),cast(C08K AS UNSIGNED),cast(C08L AS UNSIGNED),cast(C09B AS UNSIGNED),cast(C09C AS UNSIGNED),cast(C09D AS UNSIGNED),cast(C09F AS UNSIGNED),cast(C09G AS UNSIGNED),cast(C09H AS UNSIGNED),cast(C09J AS UNSIGNED),cast(C09K AS UNSIGNED),cast(C10B AS UNSIGNED),cast(C10C AS UNSIGNED),cast(C10F AS UNSIGNED),cast(C10G AS UNSIGNED),cast(C10H AS UNSIGNED),cast(C10J AS UNSIGNED),cast(C10K AS UNSIGNED),cast(C10L AS UNSIGNED),cast(C10M AS UNSIGNED),cast(C10N AS UNSIGNED),cast(C11B AS UNSIGNED),cast(C11C AS UNSIGNED),cast(C11D AS UNSIGNED),cast(C12C AS UNSIGNED),cast(C12F AS UNSIGNED),cast(C12G AS UNSIGNED),cast(C12H AS UNSIGNED),cast(C12J AS UNSIGNED),cast(C12L AS UNSIGNED),cast(C12M AS UNSIGNED),cast(C12N AS UNSIGNED),cast(C12P AS UNSIGNED),cast(C12Q AS UNSIGNED),cast(C12R AS UNSIGNED),cast(C12S AS UNSIGNED),cast(C13B AS UNSIGNED),cast(C13C AS UNSIGNED),cast(C13D AS UNSIGNED),cast(C13F AS UNSIGNED),cast(C13G AS UNSIGNED),cast(C13K AS UNSIGNED),cast(C14B AS UNSIGNED),cast(C14C AS UNSIGNED),cast(C21B AS UNSIGNED),cast(C21C AS UNSIGNED),cast(C21D AS UNSIGNED),cast(C22B AS UNSIGNED),cast(C22C AS UNSIGNED),cast(C22F AS UNSIGNED),cast(C23C AS UNSIGNED),cast(C23D AS UNSIGNED),cast(C23F AS UNSIGNED),cast(C23G AS UNSIGNED),cast(C25B AS UNSIGNED),cast(C25C AS UNSIGNED),cast(C25D AS UNSIGNED),cast(C25F AS UNSIGNED),cast(C30B AS UNSIGNED),cast(C40B AS UNSIGNED),cast(C99Z AS UNSIGNED),cast(D01B AS UNSIGNED),cast(D01C AS UNSIGNED),cast(D01D AS UNSIGNED),cast(D01F AS UNSIGNED),cast(D01G AS UNSIGNED),cast(D01H AS UNSIGNED),cast(D02G AS UNSIGNED),cast(D02H AS UNSIGNED),cast(D02J AS UNSIGNED),cast(D03C AS UNSIGNED),cast(D03D AS UNSIGNED),cast(D03J AS UNSIGNED),cast(D04B AS UNSIGNED),cast(D04C AS UNSIGNED),cast(D04D AS UNSIGNED),cast(D04G AS UNSIGNED),cast(D04H AS UNSIGNED),cast(D05B AS UNSIGNED),cast(D05C AS UNSIGNED),cast(D06B AS UNSIGNED),cast(D06C AS UNSIGNED),cast(D06F AS UNSIGNED),cast(D06G AS UNSIGNED),cast(D06H AS UNSIGNED),cast(D06J AS UNSIGNED),cast(D06L AS UNSIGNED),cast(D06M AS UNSIGNED),cast(D06N AS UNSIGNED),cast(D06P AS UNSIGNED),cast(D06Q AS UNSIGNED),cast(D07B AS UNSIGNED),cast(D21B AS UNSIGNED),cast(D21C AS UNSIGNED),cast(D21D AS UNSIGNED),cast(D21F AS UNSIGNED),cast(D21G AS UNSIGNED),cast(D21H AS UNSIGNED),cast(D21J AS UNSIGNED),cast(D99Z AS UNSIGNED),cast(E01B AS UNSIGNED),cast(E01C AS UNSIGNED),cast(E01D AS UNSIGNED),cast(E01F AS UNSIGNED),cast(E01H AS UNSIGNED),cast(E02B AS UNSIGNED),cast(E02C AS UNSIGNED),cast(E02D AS UNSIGNED),cast(E02F AS UNSIGNED),cast(E03B AS UNSIGNED),cast(E03C AS UNSIGNED),cast(E03D AS UNSIGNED),cast(E03F AS UNSIGNED),cast(E04B AS UNSIGNED),cast(E04C AS UNSIGNED),cast(E04D AS UNSIGNED),cast(E04F AS UNSIGNED),cast(E04G AS UNSIGNED),cast(E04H AS UNSIGNED),cast(E05B AS UNSIGNED),cast(E05C AS UNSIGNED),cast(E05D AS UNSIGNED),cast(E05F AS UNSIGNED),cast(E05G AS UNSIGNED),cast(E06B AS UNSIGNED),cast(E06C AS UNSIGNED),cast(E21B AS UNSIGNED),cast(E21C AS UNSIGNED),cast(E21D AS UNSIGNED),cast(E21F AS UNSIGNED),cast(E99Z AS UNSIGNED),cast(F01B AS UNSIGNED),cast(F01C AS UNSIGNED),cast(F01D AS UNSIGNED),cast(F01K AS UNSIGNED),cast(F01L AS UNSIGNED),cast(F01M AS UNSIGNED),cast(F01N AS UNSIGNED),cast(F01P AS UNSIGNED),cast(F02B AS UNSIGNED),cast(F02C AS UNSIGNED),cast(F02D AS UNSIGNED),cast(F02F AS UNSIGNED),cast(F02G AS UNSIGNED),cast(F02K AS UNSIGNED),cast(F02M AS UNSIGNED),cast(F02N AS UNSIGNED),cast(F02P AS UNSIGNED),cast(F03B AS UNSIGNED),cast(F03C AS UNSIGNED),cast(F03D AS UNSIGNED),cast(F03G AS UNSIGNED),cast(F03H AS UNSIGNED),cast(F04B AS UNSIGNED),cast(F04C AS UNSIGNED),cast(F04D AS UNSIGNED),cast(F04F AS UNSIGNED),cast(F15B AS UNSIGNED),cast(F15C AS UNSIGNED),cast(F15D AS UNSIGNED),cast(F16B AS UNSIGNED),cast(F16C AS UNSIGNED),cast(F16D AS UNSIGNED),cast(F16F AS UNSIGNED),cast(F16G AS UNSIGNED),cast(F16H AS UNSIGNED),cast(F16J AS UNSIGNED),cast(F16K AS UNSIGNED),cast(F16L AS UNSIGNED),cast(F16M AS UNSIGNED),cast(F16N AS UNSIGNED),cast(F16P AS UNSIGNED),cast(F16S AS UNSIGNED),cast(F16T AS UNSIGNED),cast(F17B AS UNSIGNED),cast(F17C AS UNSIGNED),cast(F17D AS UNSIGNED),cast(F21H AS UNSIGNED),cast(F21K AS UNSIGNED),cast(F21L AS UNSIGNED),cast(F21S AS UNSIGNED),cast(F21V AS UNSIGNED),cast(F21W AS UNSIGNED),cast(F21Y AS UNSIGNED),cast(F22B AS UNSIGNED),cast(F22D AS UNSIGNED),cast(F22G AS UNSIGNED),cast(F23B AS UNSIGNED),cast(F23C AS UNSIGNED),cast(F23D AS UNSIGNED),cast(F23G AS UNSIGNED),cast(F23H AS UNSIGNED),cast(F23J AS UNSIGNED),cast(F23K AS UNSIGNED),cast(F23L AS UNSIGNED),cast(F23M AS UNSIGNED),cast(F23N AS UNSIGNED),cast(F23Q AS UNSIGNED),cast(F23R AS UNSIGNED),cast(F24B AS UNSIGNED),cast(F24C AS UNSIGNED),cast(F24D AS UNSIGNED),cast(F24F AS UNSIGNED),cast(F24H AS UNSIGNED),cast(F24J AS UNSIGNED),cast(F25B AS UNSIGNED),cast(F25C AS UNSIGNED),cast(F25D AS UNSIGNED),cast(F25J AS UNSIGNED),cast(F26B AS UNSIGNED),cast(F27B AS UNSIGNED),cast(F27D AS UNSIGNED),cast(F28B AS UNSIGNED),cast(F28C AS UNSIGNED),cast(F28D AS UNSIGNED),cast(F28F AS UNSIGNED),cast(F28G AS UNSIGNED),cast(F41A AS UNSIGNED),cast(F41B AS UNSIGNED),cast(F41C AS UNSIGNED),cast(F41F AS UNSIGNED),cast(F41G AS UNSIGNED),cast(F41H AS UNSIGNED),cast(F41J AS UNSIGNED),cast(F42B AS UNSIGNED),cast(F42C AS UNSIGNED),cast(F42D AS UNSIGNED),cast(F99Z AS UNSIGNED),cast(G01B AS UNSIGNED),cast(G01C AS UNSIGNED),cast(G01D AS UNSIGNED),cast(G01F AS UNSIGNED),cast(G01G AS UNSIGNED),cast(G01H AS UNSIGNED),cast(G01J AS UNSIGNED),cast(G01K AS UNSIGNED),cast(G01L AS UNSIGNED),cast(G01M AS UNSIGNED),cast(G01N AS UNSIGNED),cast(G01P AS UNSIGNED),cast(G01Q AS UNSIGNED),cast(G01R AS UNSIGNED),cast(G01S AS UNSIGNED),cast(G01T AS UNSIGNED),cast(G01V AS UNSIGNED),cast(G01W AS UNSIGNED),cast(G02B AS UNSIGNED),cast(G02C AS UNSIGNED),cast(G02F AS UNSIGNED),cast(G03B AS UNSIGNED),cast(G03C AS UNSIGNED),cast(G03D AS UNSIGNED),cast(G03F AS UNSIGNED),cast(G03G AS UNSIGNED),cast(G03H AS UNSIGNED),cast(G04B AS UNSIGNED),cast(G04C AS UNSIGNED),cast(G04D AS UNSIGNED),cast(G04F AS UNSIGNED),cast(G04G AS UNSIGNED),cast(G04R AS UNSIGNED),cast(G05B AS UNSIGNED),cast(G05D AS UNSIGNED),cast(G05F AS UNSIGNED),cast(G05G AS UNSIGNED),cast(G06C AS UNSIGNED),cast(G06D AS UNSIGNED),cast(G06E AS UNSIGNED),cast(G06F AS UNSIGNED),cast(G06G AS UNSIGNED),cast(G06J AS UNSIGNED),cast(G06K AS UNSIGNED),cast(G06M AS UNSIGNED),cast(G06N AS UNSIGNED),cast(G06Q AS UNSIGNED),cast(G06T AS UNSIGNED),cast(G07B AS UNSIGNED),cast(G07C AS UNSIGNED),cast(G07D AS UNSIGNED),cast(G07F AS UNSIGNED),cast(G07G AS UNSIGNED),cast(G08B AS UNSIGNED),cast(G08C AS UNSIGNED),cast(G08G AS UNSIGNED),cast(G09B AS UNSIGNED),cast(G09C AS UNSIGNED),cast(G09D AS UNSIGNED),cast(G09F AS UNSIGNED),cast(G09G AS UNSIGNED),cast(G10B AS UNSIGNED),cast(G10C AS UNSIGNED),cast(G10D AS UNSIGNED),cast(G10F AS UNSIGNED),cast(G10G AS UNSIGNED),cast(G10H AS UNSIGNED),cast(G10K AS UNSIGNED),cast(G10L AS UNSIGNED),cast(G11B AS UNSIGNED),cast(G11C AS UNSIGNED),cast(G12B AS UNSIGNED),cast(G21B AS UNSIGNED),cast(G21C AS UNSIGNED),cast(G21D AS UNSIGNED),cast(G21F AS UNSIGNED),cast(G21G AS UNSIGNED),cast(G21H AS UNSIGNED),cast(G21J AS UNSIGNED),cast(G21K AS UNSIGNED),cast(G99Z AS UNSIGNED),cast(H01B AS UNSIGNED),cast(H01C AS UNSIGNED),cast(H01F AS UNSIGNED),cast(H01G AS UNSIGNED),cast(H01H AS UNSIGNED),cast(H01J AS UNSIGNED),cast(H01K AS UNSIGNED),cast(H01L AS UNSIGNED),cast(H01M AS UNSIGNED),cast(H01P AS UNSIGNED),cast(H01Q AS UNSIGNED),cast(H01R AS UNSIGNED),cast(H01S AS UNSIGNED),cast(H01T AS UNSIGNED),cast(H02B AS UNSIGNED),cast(H02G AS UNSIGNED),cast(H02H AS UNSIGNED),cast(H02J AS UNSIGNED),cast(H02K AS UNSIGNED),cast(H02M AS UNSIGNED),cast(H02N AS UNSIGNED),cast(H02P AS UNSIGNED),cast(H03B AS UNSIGNED),cast(H03C AS UNSIGNED),cast(H03D AS UNSIGNED),cast(H03F AS UNSIGNED),cast(H03G AS UNSIGNED),cast(H03H AS UNSIGNED),cast(H03J AS UNSIGNED),cast(H03K AS UNSIGNED),cast(H03L AS UNSIGNED),cast(H03M AS UNSIGNED),cast(H04B AS UNSIGNED),cast(H04H AS UNSIGNED),cast(H04J AS UNSIGNED),cast(H04K AS UNSIGNED),cast(H04L AS UNSIGNED),cast(H04M AS UNSIGNED),cast(H04N AS UNSIGNED),cast(H04Q AS UNSIGNED),cast(H04R AS UNSIGNED),cast(H04S AS UNSIGNED),cast(H04W AS UNSIGNED),cast(H05B AS UNSIGNED),cast(H05C AS UNSIGNED),cast(H05F AS UNSIGNED),cast(H05G AS UNSIGNED),cast(H05H AS UNSIGNED),cast(H05K AS UNSIGNED),cast(H99Z AS UNSIGNED)) 
WHERE 
-- patent_families.appln_id = PATSTAT.ipcBits.appln_id;
GEO.INVENTORS.appln_id = PATSTAT.ipcBits.appln_id;

COMMIT;

-- DROP TABLE ipcBits;



ALTER TABLE ipcBits ADD COLUMN ipcFingerPrint VARCHAR(642) AFTER appln_id;




