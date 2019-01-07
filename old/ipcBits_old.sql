CREATE TABLE IF NOT EXISTS PATSTAT.ipcBits AS (
SELECT docdb_family_id,
	
       AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01B'
            THEN 1
            ELSE 0 
        END ))
   AS A01B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01C'
            THEN 1
            ELSE 0 
        END ))
   AS A01C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01D'
            THEN 1
            ELSE 0 
        END ))
   AS A01D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01F'
            THEN 1
            ELSE 0 
        END ))
   AS A01F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01G'
            THEN 1
            ELSE 0 
        END ))
   AS A01G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01H'
            THEN 1
            ELSE 0 
        END ))
   AS A01H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01J'
            THEN 1
            ELSE 0 
        END ))
   AS A01J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01K'
            THEN 1
            ELSE 0 
        END ))
   AS A01K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01L'
            THEN 1
            ELSE 0 
        END ))
   AS A01L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01M'
            THEN 1
            ELSE 0 
        END ))
   AS A01M,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01N'
            THEN 1
            ELSE 0 
        END ))
   AS A01N,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01P'
            THEN 1
            ELSE 0 
        END ))
   AS A01P,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A21B'
            THEN 1
            ELSE 0 
        END ))
   AS A21B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A21C'
            THEN 1
            ELSE 0 
        END ))
   AS A21C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A21D'
            THEN 1
            ELSE 0 
        END ))
   AS A21D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A22B'
            THEN 1
            ELSE 0 
        END ))
   AS A22B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A22C'
            THEN 1
            ELSE 0 
        END ))
   AS A22C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A23B'
            THEN 1
            ELSE 0 
        END ))
   AS A23B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A23C'
            THEN 1
            ELSE 0 
        END ))
   AS A23C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A23D'
            THEN 1
            ELSE 0 
        END ))
   AS A23D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A23F'
            THEN 1
            ELSE 0 
        END ))
   AS A23F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A23G'
            THEN 1
            ELSE 0 
        END ))
   AS A23G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A23J'
            THEN 1
            ELSE 0 
        END ))
   AS A23J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A23K'
            THEN 1
            ELSE 0 
        END ))
   AS A23K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A23L'
            THEN 1
            ELSE 0 
        END ))
   AS A23L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A23N'
            THEN 1
            ELSE 0 
        END ))
   AS A23N,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A23P'
            THEN 1
            ELSE 0 
        END ))
   AS A23P,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A24B'
            THEN 1
            ELSE 0 
        END ))
   AS A24B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A24C'
            THEN 1
            ELSE 0 
        END ))
   AS A24C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A24D'
            THEN 1
            ELSE 0 
        END ))
   AS A24D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A24F'
            THEN 1
            ELSE 0 
        END ))
   AS A24F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A41B'
            THEN 1
            ELSE 0 
        END ))
   AS A41B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A41C'
            THEN 1
            ELSE 0 
        END ))
   AS A41C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A41D'
            THEN 1
            ELSE 0 
        END ))
   AS A41D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A41F'
            THEN 1
            ELSE 0 
        END ))
   AS A41F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A41G'
            THEN 1
            ELSE 0 
        END ))
   AS A41G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A41H'
            THEN 1
            ELSE 0 
        END ))
   AS A41H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A42B'
            THEN 1
            ELSE 0 
        END ))
   AS A42B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A42C'
            THEN 1
            ELSE 0 
        END ))
   AS A42C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A43B'
            THEN 1
            ELSE 0 
        END ))
   AS A43B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A43C'
            THEN 1
            ELSE 0 
        END ))
   AS A43C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A43D'
            THEN 1
            ELSE 0 
        END ))
   AS A43D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A44B'
            THEN 1
            ELSE 0 
        END ))
   AS A44B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A44C'
            THEN 1
            ELSE 0 
        END ))
   AS A44C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A45B'
            THEN 1
            ELSE 0 
        END ))
   AS A45B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A45C'
            THEN 1
            ELSE 0 
        END ))
   AS A45C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A45D'
            THEN 1
            ELSE 0 
        END ))
   AS A45D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A45F'
            THEN 1
            ELSE 0 
        END ))
   AS A45F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A46B'
            THEN 1
            ELSE 0 
        END ))
   AS A46B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A46D'
            THEN 1
            ELSE 0 
        END ))
   AS A46D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A47B'
            THEN 1
            ELSE 0 
        END ))
   AS A47B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A47C'
            THEN 1
            ELSE 0 
        END ))
   AS A47C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A47D'
            THEN 1
            ELSE 0 
        END ))
   AS A47D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A47F'
            THEN 1
            ELSE 0 
        END ))
   AS A47F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A47G'
            THEN 1
            ELSE 0 
        END ))
   AS A47G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A47H'
            THEN 1
            ELSE 0 
        END ))
   AS A47H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A47J'
            THEN 1
            ELSE 0 
        END ))
   AS A47J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A47K'
            THEN 1
            ELSE 0 
        END ))
   AS A47K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A47L'
            THEN 1
            ELSE 0 
        END ))
   AS A47L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61B'
            THEN 1
            ELSE 0 
        END ))
   AS A61B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61C'
            THEN 1
            ELSE 0 
        END ))
   AS A61C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61D'
            THEN 1
            ELSE 0 
        END ))
   AS A61D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61F'
            THEN 1
            ELSE 0 
        END ))
   AS A61F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61G'
            THEN 1
            ELSE 0 
        END ))
   AS A61G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61H'
            THEN 1
            ELSE 0 
        END ))
   AS A61H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61J'
            THEN 1
            ELSE 0 
        END ))
   AS A61J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61K'
            THEN 1
            ELSE 0 
        END ))
   AS A61K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61L'
            THEN 1
            ELSE 0 
        END ))
   AS A61L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61M'
            THEN 1
            ELSE 0 
        END ))
   AS A61M,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61N'
            THEN 1
            ELSE 0 
        END ))
   AS A61N,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61P'
            THEN 1
            ELSE 0 
        END ))
   AS A61P,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61Q'
            THEN 1
            ELSE 0 
        END ))
   AS A61Q,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A62B'
            THEN 1
            ELSE 0 
        END ))
   AS A62B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A62C'
            THEN 1
            ELSE 0 
        END ))
   AS A62C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A62D'
            THEN 1
            ELSE 0 
        END ))
   AS A62D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A63B'
            THEN 1
            ELSE 0 
        END ))
   AS A63B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A63C'
            THEN 1
            ELSE 0 
        END ))
   AS A63C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A63D'
            THEN 1
            ELSE 0 
        END ))
   AS A63D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A63F'
            THEN 1
            ELSE 0 
        END ))
   AS A63F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A63G'
            THEN 1
            ELSE 0 
        END ))
   AS A63G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A63H'
            THEN 1
            ELSE 0 
        END ))
   AS A63H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A63J'
            THEN 1
            ELSE 0 
        END ))
   AS A63J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A63K'
            THEN 1
            ELSE 0 
        END ))
   AS A63K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'A99Z'
            THEN 1
            ELSE 0 
        END ))
   AS A99Z,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B01B'
            THEN 1
            ELSE 0 
        END ))
   AS B01B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B01D'
            THEN 1
            ELSE 0 
        END ))
   AS B01D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B01F'
            THEN 1
            ELSE 0 
        END ))
   AS B01F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B01J'
            THEN 1
            ELSE 0 
        END ))
   AS B01J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B01L'
            THEN 1
            ELSE 0 
        END ))
   AS B01L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B02B'
            THEN 1
            ELSE 0 
        END ))
   AS B02B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B02C'
            THEN 1
            ELSE 0 
        END ))
   AS B02C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B03B'
            THEN 1
            ELSE 0 
        END ))
   AS B03B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B03C'
            THEN 1
            ELSE 0 
        END ))
   AS B03C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B03D'
            THEN 1
            ELSE 0 
        END ))
   AS B03D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B04B'
            THEN 1
            ELSE 0 
        END ))
   AS B04B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B04C'
            THEN 1
            ELSE 0 
        END ))
   AS B04C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B05B'
            THEN 1
            ELSE 0 
        END ))
   AS B05B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B05C'
            THEN 1
            ELSE 0 
        END ))
   AS B05C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B05D'
            THEN 1
            ELSE 0 
        END ))
   AS B05D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B06B'
            THEN 1
            ELSE 0 
        END ))
   AS B06B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B07B'
            THEN 1
            ELSE 0 
        END ))
   AS B07B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B07C'
            THEN 1
            ELSE 0 
        END ))
   AS B07C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B08B'
            THEN 1
            ELSE 0 
        END ))
   AS B08B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B09B'
            THEN 1
            ELSE 0 
        END ))
   AS B09B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B09C'
            THEN 1
            ELSE 0 
        END ))
   AS B09C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B21B'
            THEN 1
            ELSE 0 
        END ))
   AS B21B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B21C'
            THEN 1
            ELSE 0 
        END ))
   AS B21C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B21D'
            THEN 1
            ELSE 0 
        END ))
   AS B21D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B21F'
            THEN 1
            ELSE 0 
        END ))
   AS B21F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B21G'
            THEN 1
            ELSE 0 
        END ))
   AS B21G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B21H'
            THEN 1
            ELSE 0 
        END ))
   AS B21H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B21J'
            THEN 1
            ELSE 0 
        END ))
   AS B21J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B21K'
            THEN 1
            ELSE 0 
        END ))
   AS B21K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B21L'
            THEN 1
            ELSE 0 
        END ))
   AS B21L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B22C'
            THEN 1
            ELSE 0 
        END ))
   AS B22C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B22D'
            THEN 1
            ELSE 0 
        END ))
   AS B22D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B22F'
            THEN 1
            ELSE 0 
        END ))
   AS B22F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B23B'
            THEN 1
            ELSE 0 
        END ))
   AS B23B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B23C'
            THEN 1
            ELSE 0 
        END ))
   AS B23C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B23D'
            THEN 1
            ELSE 0 
        END ))
   AS B23D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B23F'
            THEN 1
            ELSE 0 
        END ))
   AS B23F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B23G'
            THEN 1
            ELSE 0 
        END ))
   AS B23G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B23H'
            THEN 1
            ELSE 0 
        END ))
   AS B23H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B23K'
            THEN 1
            ELSE 0 
        END ))
   AS B23K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B23P'
            THEN 1
            ELSE 0 
        END ))
   AS B23P,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B23Q'
            THEN 1
            ELSE 0 
        END ))
   AS B23Q,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B24B'
            THEN 1
            ELSE 0 
        END ))
   AS B24B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B24C'
            THEN 1
            ELSE 0 
        END ))
   AS B24C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B24D'
            THEN 1
            ELSE 0 
        END ))
   AS B24D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B25B'
            THEN 1
            ELSE 0 
        END ))
   AS B25B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B25C'
            THEN 1
            ELSE 0 
        END ))
   AS B25C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B25D'
            THEN 1
            ELSE 0 
        END ))
   AS B25D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B25F'
            THEN 1
            ELSE 0 
        END ))
   AS B25F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B25G'
            THEN 1
            ELSE 0 
        END ))
   AS B25G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B25H'
            THEN 1
            ELSE 0 
        END ))
   AS B25H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B25J'
            THEN 1
            ELSE 0 
        END ))
   AS B25J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B26B'
            THEN 1
            ELSE 0 
        END ))
   AS B26B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B26D'
            THEN 1
            ELSE 0 
        END ))
   AS B26D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B26F'
            THEN 1
            ELSE 0 
        END ))
   AS B26F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B27B'
            THEN 1
            ELSE 0 
        END ))
   AS B27B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B27C'
            THEN 1
            ELSE 0 
        END ))
   AS B27C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B27D'
            THEN 1
            ELSE 0 
        END ))
   AS B27D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B27F'
            THEN 1
            ELSE 0 
        END ))
   AS B27F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B27G'
            THEN 1
            ELSE 0 
        END ))
   AS B27G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B27H'
            THEN 1
            ELSE 0 
        END ))
   AS B27H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B27J'
            THEN 1
            ELSE 0 
        END ))
   AS B27J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B27K'
            THEN 1
            ELSE 0 
        END ))
   AS B27K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B27L'
            THEN 1
            ELSE 0 
        END ))
   AS B27L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B27M'
            THEN 1
            ELSE 0 
        END ))
   AS B27M,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B27N'
            THEN 1
            ELSE 0 
        END ))
   AS B27N,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B28B'
            THEN 1
            ELSE 0 
        END ))
   AS B28B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B28C'
            THEN 1
            ELSE 0 
        END ))
   AS B28C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B28D'
            THEN 1
            ELSE 0 
        END ))
   AS B28D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B29B'
            THEN 1
            ELSE 0 
        END ))
   AS B29B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B29C'
            THEN 1
            ELSE 0 
        END ))
   AS B29C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B29D'
            THEN 1
            ELSE 0 
        END ))
   AS B29D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B29K'
            THEN 1
            ELSE 0 
        END ))
   AS B29K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B29L'
            THEN 1
            ELSE 0 
        END ))
   AS B29L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B30B'
            THEN 1
            ELSE 0 
        END ))
   AS B30B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B31B'
            THEN 1
            ELSE 0 
        END ))
   AS B31B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B31C'
            THEN 1
            ELSE 0 
        END ))
   AS B31C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B31D'
            THEN 1
            ELSE 0 
        END ))
   AS B31D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B31F'
            THEN 1
            ELSE 0 
        END ))
   AS B31F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B32B'
            THEN 1
            ELSE 0 
        END ))
   AS B32B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B41B'
            THEN 1
            ELSE 0 
        END ))
   AS B41B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B41C'
            THEN 1
            ELSE 0 
        END ))
   AS B41C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B41D'
            THEN 1
            ELSE 0 
        END ))
   AS B41D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B41F'
            THEN 1
            ELSE 0 
        END ))
   AS B41F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B41G'
            THEN 1
            ELSE 0 
        END ))
   AS B41G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B41J'
            THEN 1
            ELSE 0 
        END ))
   AS B41J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B41K'
            THEN 1
            ELSE 0 
        END ))
   AS B41K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B41L'
            THEN 1
            ELSE 0 
        END ))
   AS B41L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B41M'
            THEN 1
            ELSE 0 
        END ))
   AS B41M,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B41N'
            THEN 1
            ELSE 0 
        END ))
   AS B41N,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B42B'
            THEN 1
            ELSE 0 
        END ))
   AS B42B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B42C'
            THEN 1
            ELSE 0 
        END ))
   AS B42C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B42D'
            THEN 1
            ELSE 0 
        END ))
   AS B42D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B42F'
            THEN 1
            ELSE 0 
        END ))
   AS B42F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B43K'
            THEN 1
            ELSE 0 
        END ))
   AS B43K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B43L'
            THEN 1
            ELSE 0 
        END ))
   AS B43L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B43M'
            THEN 1
            ELSE 0 
        END ))
   AS B43M,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B44B'
            THEN 1
            ELSE 0 
        END ))
   AS B44B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B44C'
            THEN 1
            ELSE 0 
        END ))
   AS B44C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B44D'
            THEN 1
            ELSE 0 
        END ))
   AS B44D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B44F'
            THEN 1
            ELSE 0 
        END ))
   AS B44F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60B'
            THEN 1
            ELSE 0 
        END ))
   AS B60B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60C'
            THEN 1
            ELSE 0 
        END ))
   AS B60C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60D'
            THEN 1
            ELSE 0 
        END ))
   AS B60D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60F'
            THEN 1
            ELSE 0 
        END ))
   AS B60F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60G'
            THEN 1
            ELSE 0 
        END ))
   AS B60G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60H'
            THEN 1
            ELSE 0 
        END ))
   AS B60H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60J'
            THEN 1
            ELSE 0 
        END ))
   AS B60J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60K'
            THEN 1
            ELSE 0 
        END ))
   AS B60K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60L'
            THEN 1
            ELSE 0 
        END ))
   AS B60L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60M'
            THEN 1
            ELSE 0 
        END ))
   AS B60M,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60N'
            THEN 1
            ELSE 0 
        END ))
   AS B60N,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60P'
            THEN 1
            ELSE 0 
        END ))
   AS B60P,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60Q'
            THEN 1
            ELSE 0 
        END ))
   AS B60Q,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60R'
            THEN 1
            ELSE 0 
        END ))
   AS B60R,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60S'
            THEN 1
            ELSE 0 
        END ))
   AS B60S,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60T'
            THEN 1
            ELSE 0 
        END ))
   AS B60T,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60V'
            THEN 1
            ELSE 0 
        END ))
   AS B60V,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60W'
            THEN 1
            ELSE 0 
        END ))
   AS B60W,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B61B'
            THEN 1
            ELSE 0 
        END ))
   AS B61B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B61C'
            THEN 1
            ELSE 0 
        END ))
   AS B61C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B61D'
            THEN 1
            ELSE 0 
        END ))
   AS B61D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B61F'
            THEN 1
            ELSE 0 
        END ))
   AS B61F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B61G'
            THEN 1
            ELSE 0 
        END ))
   AS B61G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B61H'
            THEN 1
            ELSE 0 
        END ))
   AS B61H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B61J'
            THEN 1
            ELSE 0 
        END ))
   AS B61J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B61K'
            THEN 1
            ELSE 0 
        END ))
   AS B61K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B61L'
            THEN 1
            ELSE 0 
        END ))
   AS B61L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B62B'
            THEN 1
            ELSE 0 
        END ))
   AS B62B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B62C'
            THEN 1
            ELSE 0 
        END ))
   AS B62C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B62D'
            THEN 1
            ELSE 0 
        END ))
   AS B62D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B62H'
            THEN 1
            ELSE 0 
        END ))
   AS B62H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B62J'
            THEN 1
            ELSE 0 
        END ))
   AS B62J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B62K'
            THEN 1
            ELSE 0 
        END ))
   AS B62K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B62L'
            THEN 1
            ELSE 0 
        END ))
   AS B62L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B62M'
            THEN 1
            ELSE 0 
        END ))
   AS B62M,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B63B'
            THEN 1
            ELSE 0 
        END ))
   AS B63B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B63C'
            THEN 1
            ELSE 0 
        END ))
   AS B63C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B63G'
            THEN 1
            ELSE 0 
        END ))
   AS B63G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B63H'
            THEN 1
            ELSE 0 
        END ))
   AS B63H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B63J'
            THEN 1
            ELSE 0 
        END ))
   AS B63J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B64B'
            THEN 1
            ELSE 0 
        END ))
   AS B64B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B64C'
            THEN 1
            ELSE 0 
        END ))
   AS B64C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B64D'
            THEN 1
            ELSE 0 
        END ))
   AS B64D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B64F'
            THEN 1
            ELSE 0 
        END ))
   AS B64F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B64G'
            THEN 1
            ELSE 0 
        END ))
   AS B64G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B65B'
            THEN 1
            ELSE 0 
        END ))
   AS B65B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B65C'
            THEN 1
            ELSE 0 
        END ))
   AS B65C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B65D'
            THEN 1
            ELSE 0 
        END ))
   AS B65D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B65F'
            THEN 1
            ELSE 0 
        END ))
   AS B65F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B65G'
            THEN 1
            ELSE 0 
        END ))
   AS B65G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B65H'
            THEN 1
            ELSE 0 
        END ))
   AS B65H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B66B'
            THEN 1
            ELSE 0 
        END ))
   AS B66B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B66C'
            THEN 1
            ELSE 0 
        END ))
   AS B66C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B66D'
            THEN 1
            ELSE 0 
        END ))
   AS B66D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B66F'
            THEN 1
            ELSE 0 
        END ))
   AS B66F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B67B'
            THEN 1
            ELSE 0 
        END ))
   AS B67B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B67C'
            THEN 1
            ELSE 0 
        END ))
   AS B67C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B67D'
            THEN 1
            ELSE 0 
        END ))
   AS B67D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B68B'
            THEN 1
            ELSE 0 
        END ))
   AS B68B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B68C'
            THEN 1
            ELSE 0 
        END ))
   AS B68C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B68F'
            THEN 1
            ELSE 0 
        END ))
   AS B68F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B68G'
            THEN 1
            ELSE 0 
        END ))
   AS B68G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B81B'
            THEN 1
            ELSE 0 
        END ))
   AS B81B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B81C'
            THEN 1
            ELSE 0 
        END ))
   AS B81C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B82B'
            THEN 1
            ELSE 0 
        END ))
   AS B82B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B82Y'
            THEN 1
            ELSE 0 
        END ))
   AS B82Y,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'B99Z'
            THEN 1
            ELSE 0 
        END ))
   AS B99Z,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C01B'
            THEN 1
            ELSE 0 
        END ))
   AS C01B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C01C'
            THEN 1
            ELSE 0 
        END ))
   AS C01C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C01D'
            THEN 1
            ELSE 0 
        END ))
   AS C01D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C01F'
            THEN 1
            ELSE 0 
        END ))
   AS C01F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C01G'
            THEN 1
            ELSE 0 
        END ))
   AS C01G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C02F'
            THEN 1
            ELSE 0 
        END ))
   AS C02F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C03B'
            THEN 1
            ELSE 0 
        END ))
   AS C03B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C03C'
            THEN 1
            ELSE 0 
        END ))
   AS C03C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C04B'
            THEN 1
            ELSE 0 
        END ))
   AS C04B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C05B'
            THEN 1
            ELSE 0 
        END ))
   AS C05B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C05C'
            THEN 1
            ELSE 0 
        END ))
   AS C05C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C05D'
            THEN 1
            ELSE 0 
        END ))
   AS C05D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C05F'
            THEN 1
            ELSE 0 
        END ))
   AS C05F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C05G'
            THEN 1
            ELSE 0 
        END ))
   AS C05G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C06B'
            THEN 1
            ELSE 0 
        END ))
   AS C06B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C06C'
            THEN 1
            ELSE 0 
        END ))
   AS C06C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C06D'
            THEN 1
            ELSE 0 
        END ))
   AS C06D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C06F'
            THEN 1
            ELSE 0 
        END ))
   AS C06F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C07B'
            THEN 1
            ELSE 0 
        END ))
   AS C07B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C07C'
            THEN 1
            ELSE 0 
        END ))
   AS C07C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C07D'
            THEN 1
            ELSE 0 
        END ))
   AS C07D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C07F'
            THEN 1
            ELSE 0 
        END ))
   AS C07F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C07G'
            THEN 1
            ELSE 0 
        END ))
   AS C07G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C07H'
            THEN 1
            ELSE 0 
        END ))
   AS C07H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C07J'
            THEN 1
            ELSE 0 
        END ))
   AS C07J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C07K'
            THEN 1
            ELSE 0 
        END ))
   AS C07K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C08B'
            THEN 1
            ELSE 0 
        END ))
   AS C08B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C08C'
            THEN 1
            ELSE 0 
        END ))
   AS C08C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C08F'
            THEN 1
            ELSE 0 
        END ))
   AS C08F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C08G'
            THEN 1
            ELSE 0 
        END ))
   AS C08G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C08H'
            THEN 1
            ELSE 0 
        END ))
   AS C08H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C08J'
            THEN 1
            ELSE 0 
        END ))
   AS C08J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C08K'
            THEN 1
            ELSE 0 
        END ))
   AS C08K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C08L'
            THEN 1
            ELSE 0 
        END ))
   AS C08L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C09B'
            THEN 1
            ELSE 0 
        END ))
   AS C09B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C09C'
            THEN 1
            ELSE 0 
        END ))
   AS C09C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C09D'
            THEN 1
            ELSE 0 
        END ))
   AS C09D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C09F'
            THEN 1
            ELSE 0 
        END ))
   AS C09F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C09G'
            THEN 1
            ELSE 0 
        END ))
   AS C09G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C09H'
            THEN 1
            ELSE 0 
        END ))
   AS C09H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C09J'
            THEN 1
            ELSE 0 
        END ))
   AS C09J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C09K'
            THEN 1
            ELSE 0 
        END ))
   AS C09K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C10B'
            THEN 1
            ELSE 0 
        END ))
   AS C10B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C10C'
            THEN 1
            ELSE 0 
        END ))
   AS C10C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C10F'
            THEN 1
            ELSE 0 
        END ))
   AS C10F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C10G'
            THEN 1
            ELSE 0 
        END ))
   AS C10G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C10H'
            THEN 1
            ELSE 0 
        END ))
   AS C10H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C10J'
            THEN 1
            ELSE 0 
        END ))
   AS C10J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C10K'
            THEN 1
            ELSE 0 
        END ))
   AS C10K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C10L'
            THEN 1
            ELSE 0 
        END ))
   AS C10L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C10M'
            THEN 1
            ELSE 0 
        END ))
   AS C10M,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C10N'
            THEN 1
            ELSE 0 
        END ))
   AS C10N,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C11B'
            THEN 1
            ELSE 0 
        END ))
   AS C11B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C11C'
            THEN 1
            ELSE 0 
        END ))
   AS C11C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C11D'
            THEN 1
            ELSE 0 
        END ))
   AS C11D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12C'
            THEN 1
            ELSE 0 
        END ))
   AS C12C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12F'
            THEN 1
            ELSE 0 
        END ))
   AS C12F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12G'
            THEN 1
            ELSE 0 
        END ))
   AS C12G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12H'
            THEN 1
            ELSE 0 
        END ))
   AS C12H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12J'
            THEN 1
            ELSE 0 
        END ))
   AS C12J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12L'
            THEN 1
            ELSE 0 
        END ))
   AS C12L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12M'
            THEN 1
            ELSE 0 
        END ))
   AS C12M,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12N'
            THEN 1
            ELSE 0 
        END ))
   AS C12N,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12P'
            THEN 1
            ELSE 0 
        END ))
   AS C12P,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12Q'
            THEN 1
            ELSE 0 
        END ))
   AS C12Q,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12R'
            THEN 1
            ELSE 0 
        END ))
   AS C12R,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12S'
            THEN 1
            ELSE 0 
        END ))
   AS C12S,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C13B'
            THEN 1
            ELSE 0 
        END ))
   AS C13B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C13C'
            THEN 1
            ELSE 0 
        END ))
   AS C13C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C13D'
            THEN 1
            ELSE 0 
        END ))
   AS C13D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C13F'
            THEN 1
            ELSE 0 
        END ))
   AS C13F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C13G'
            THEN 1
            ELSE 0 
        END ))
   AS C13G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C13K'
            THEN 1
            ELSE 0 
        END ))
   AS C13K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C14B'
            THEN 1
            ELSE 0 
        END ))
   AS C14B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C14C'
            THEN 1
            ELSE 0 
        END ))
   AS C14C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C21B'
            THEN 1
            ELSE 0 
        END ))
   AS C21B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C21C'
            THEN 1
            ELSE 0 
        END ))
   AS C21C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C21D'
            THEN 1
            ELSE 0 
        END ))
   AS C21D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C22B'
            THEN 1
            ELSE 0 
        END ))
   AS C22B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C22C'
            THEN 1
            ELSE 0 
        END ))
   AS C22C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C22F'
            THEN 1
            ELSE 0 
        END ))
   AS C22F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C23C'
            THEN 1
            ELSE 0 
        END ))
   AS C23C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C23D'
            THEN 1
            ELSE 0 
        END ))
   AS C23D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C23F'
            THEN 1
            ELSE 0 
        END ))
   AS C23F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C23G'
            THEN 1
            ELSE 0 
        END ))
   AS C23G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C25B'
            THEN 1
            ELSE 0 
        END ))
   AS C25B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C25C'
            THEN 1
            ELSE 0 
        END ))
   AS C25C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C25D'
            THEN 1
            ELSE 0 
        END ))
   AS C25D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C25F'
            THEN 1
            ELSE 0 
        END ))
   AS C25F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C30B'
            THEN 1
            ELSE 0 
        END ))
   AS C30B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C40B'
            THEN 1
            ELSE 0 
        END ))
   AS C40B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'C99Z'
            THEN 1
            ELSE 0 
        END ))
   AS C99Z,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D01B'
            THEN 1
            ELSE 0 
        END ))
   AS D01B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D01C'
            THEN 1
            ELSE 0 
        END ))
   AS D01C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D01D'
            THEN 1
            ELSE 0 
        END ))
   AS D01D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D01F'
            THEN 1
            ELSE 0 
        END ))
   AS D01F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D01G'
            THEN 1
            ELSE 0 
        END ))
   AS D01G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D01H'
            THEN 1
            ELSE 0 
        END ))
   AS D01H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D02G'
            THEN 1
            ELSE 0 
        END ))
   AS D02G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D02H'
            THEN 1
            ELSE 0 
        END ))
   AS D02H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D02J'
            THEN 1
            ELSE 0 
        END ))
   AS D02J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D03C'
            THEN 1
            ELSE 0 
        END ))
   AS D03C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D03D'
            THEN 1
            ELSE 0 
        END ))
   AS D03D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D03J'
            THEN 1
            ELSE 0 
        END ))
   AS D03J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D04B'
            THEN 1
            ELSE 0 
        END ))
   AS D04B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D04C'
            THEN 1
            ELSE 0 
        END ))
   AS D04C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D04D'
            THEN 1
            ELSE 0 
        END ))
   AS D04D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D04G'
            THEN 1
            ELSE 0 
        END ))
   AS D04G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D04H'
            THEN 1
            ELSE 0 
        END ))
   AS D04H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D05B'
            THEN 1
            ELSE 0 
        END ))
   AS D05B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D05C'
            THEN 1
            ELSE 0 
        END ))
   AS D05C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D06B'
            THEN 1
            ELSE 0 
        END ))
   AS D06B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D06C'
            THEN 1
            ELSE 0 
        END ))
   AS D06C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D06F'
            THEN 1
            ELSE 0 
        END ))
   AS D06F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D06G'
            THEN 1
            ELSE 0 
        END ))
   AS D06G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D06H'
            THEN 1
            ELSE 0 
        END ))
   AS D06H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D06J'
            THEN 1
            ELSE 0 
        END ))
   AS D06J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D06L'
            THEN 1
            ELSE 0 
        END ))
   AS D06L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D06M'
            THEN 1
            ELSE 0 
        END ))
   AS D06M,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D06N'
            THEN 1
            ELSE 0 
        END ))
   AS D06N,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D06P'
            THEN 1
            ELSE 0 
        END ))
   AS D06P,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D06Q'
            THEN 1
            ELSE 0 
        END ))
   AS D06Q,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D07B'
            THEN 1
            ELSE 0 
        END ))
   AS D07B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D21B'
            THEN 1
            ELSE 0 
        END ))
   AS D21B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D21C'
            THEN 1
            ELSE 0 
        END ))
   AS D21C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D21D'
            THEN 1
            ELSE 0 
        END ))
   AS D21D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D21F'
            THEN 1
            ELSE 0 
        END ))
   AS D21F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D21G'
            THEN 1
            ELSE 0 
        END ))
   AS D21G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D21H'
            THEN 1
            ELSE 0 
        END ))
   AS D21H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D21J'
            THEN 1
            ELSE 0 
        END ))
   AS D21J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'D99Z'
            THEN 1
            ELSE 0 
        END ))
   AS D99Z,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E01B'
            THEN 1
            ELSE 0 
        END ))
   AS E01B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E01C'
            THEN 1
            ELSE 0 
        END ))
   AS E01C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E01D'
            THEN 1
            ELSE 0 
        END ))
   AS E01D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E01F'
            THEN 1
            ELSE 0 
        END ))
   AS E01F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E01H'
            THEN 1
            ELSE 0 
        END ))
   AS E01H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E02B'
            THEN 1
            ELSE 0 
        END ))
   AS E02B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E02C'
            THEN 1
            ELSE 0 
        END ))
   AS E02C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E02D'
            THEN 1
            ELSE 0 
        END ))
   AS E02D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E02F'
            THEN 1
            ELSE 0 
        END ))
   AS E02F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E03B'
            THEN 1
            ELSE 0 
        END ))
   AS E03B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E03C'
            THEN 1
            ELSE 0 
        END ))
   AS E03C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E03D'
            THEN 1
            ELSE 0 
        END ))
   AS E03D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E03F'
            THEN 1
            ELSE 0 
        END ))
   AS E03F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E04B'
            THEN 1
            ELSE 0 
        END ))
   AS E04B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E04C'
            THEN 1
            ELSE 0 
        END ))
   AS E04C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E04D'
            THEN 1
            ELSE 0 
        END ))
   AS E04D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E04F'
            THEN 1
            ELSE 0 
        END ))
   AS E04F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E04G'
            THEN 1
            ELSE 0 
        END ))
   AS E04G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E04H'
            THEN 1
            ELSE 0 
        END ))
   AS E04H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E05B'
            THEN 1
            ELSE 0 
        END ))
   AS E05B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E05C'
            THEN 1
            ELSE 0 
        END ))
   AS E05C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E05D'
            THEN 1
            ELSE 0 
        END ))
   AS E05D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E05F'
            THEN 1
            ELSE 0 
        END ))
   AS E05F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E05G'
            THEN 1
            ELSE 0 
        END ))
   AS E05G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E06B'
            THEN 1
            ELSE 0 
        END ))
   AS E06B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E06C'
            THEN 1
            ELSE 0 
        END ))
   AS E06C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E21B'
            THEN 1
            ELSE 0 
        END ))
   AS E21B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E21C'
            THEN 1
            ELSE 0 
        END ))
   AS E21C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E21D'
            THEN 1
            ELSE 0 
        END ))
   AS E21D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E21F'
            THEN 1
            ELSE 0 
        END ))
   AS E21F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'E99Z'
            THEN 1
            ELSE 0 
        END ))
   AS E99Z,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F01B'
            THEN 1
            ELSE 0 
        END ))
   AS F01B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F01C'
            THEN 1
            ELSE 0 
        END ))
   AS F01C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F01D'
            THEN 1
            ELSE 0 
        END ))
   AS F01D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F01K'
            THEN 1
            ELSE 0 
        END ))
   AS F01K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F01L'
            THEN 1
            ELSE 0 
        END ))
   AS F01L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F01M'
            THEN 1
            ELSE 0 
        END ))
   AS F01M,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F01N'
            THEN 1
            ELSE 0 
        END ))
   AS F01N,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F01P'
            THEN 1
            ELSE 0 
        END ))
   AS F01P,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F02B'
            THEN 1
            ELSE 0 
        END ))
   AS F02B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F02C'
            THEN 1
            ELSE 0 
        END ))
   AS F02C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F02D'
            THEN 1
            ELSE 0 
        END ))
   AS F02D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F02F'
            THEN 1
            ELSE 0 
        END ))
   AS F02F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F02G'
            THEN 1
            ELSE 0 
        END ))
   AS F02G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F02K'
            THEN 1
            ELSE 0 
        END ))
   AS F02K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F02M'
            THEN 1
            ELSE 0 
        END ))
   AS F02M,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F02N'
            THEN 1
            ELSE 0 
        END ))
   AS F02N,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F02P'
            THEN 1
            ELSE 0 
        END ))
   AS F02P,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F03B'
            THEN 1
            ELSE 0 
        END ))
   AS F03B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F03C'
            THEN 1
            ELSE 0 
        END ))
   AS F03C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F03D'
            THEN 1
            ELSE 0 
        END ))
   AS F03D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F03G'
            THEN 1
            ELSE 0 
        END ))
   AS F03G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F03H'
            THEN 1
            ELSE 0 
        END ))
   AS F03H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F04B'
            THEN 1
            ELSE 0 
        END ))
   AS F04B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F04C'
            THEN 1
            ELSE 0 
        END ))
   AS F04C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F04D'
            THEN 1
            ELSE 0 
        END ))
   AS F04D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F04F'
            THEN 1
            ELSE 0 
        END ))
   AS F04F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F15B'
            THEN 1
            ELSE 0 
        END ))
   AS F15B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F15C'
            THEN 1
            ELSE 0 
        END ))
   AS F15C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F15D'
            THEN 1
            ELSE 0 
        END ))
   AS F15D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16B'
            THEN 1
            ELSE 0 
        END ))
   AS F16B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16C'
            THEN 1
            ELSE 0 
        END ))
   AS F16C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16D'
            THEN 1
            ELSE 0 
        END ))
   AS F16D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16F'
            THEN 1
            ELSE 0 
        END ))
   AS F16F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16G'
            THEN 1
            ELSE 0 
        END ))
   AS F16G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16H'
            THEN 1
            ELSE 0 
        END ))
   AS F16H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16J'
            THEN 1
            ELSE 0 
        END ))
   AS F16J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16K'
            THEN 1
            ELSE 0 
        END ))
   AS F16K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16L'
            THEN 1
            ELSE 0 
        END ))
   AS F16L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16M'
            THEN 1
            ELSE 0 
        END ))
   AS F16M,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16N'
            THEN 1
            ELSE 0 
        END ))
   AS F16N,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16P'
            THEN 1
            ELSE 0 
        END ))
   AS F16P,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16S'
            THEN 1
            ELSE 0 
        END ))
   AS F16S,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16T'
            THEN 1
            ELSE 0 
        END ))
   AS F16T,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F17B'
            THEN 1
            ELSE 0 
        END ))
   AS F17B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F17C'
            THEN 1
            ELSE 0 
        END ))
   AS F17C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F17D'
            THEN 1
            ELSE 0 
        END ))
   AS F17D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F21H'
            THEN 1
            ELSE 0 
        END ))
   AS F21H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F21K'
            THEN 1
            ELSE 0 
        END ))
   AS F21K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F21L'
            THEN 1
            ELSE 0 
        END ))
   AS F21L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F21S'
            THEN 1
            ELSE 0 
        END ))
   AS F21S,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F21V'
            THEN 1
            ELSE 0 
        END ))
   AS F21V,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F21W'
            THEN 1
            ELSE 0 
        END ))
   AS F21W,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F21Y'
            THEN 1
            ELSE 0 
        END ))
   AS F21Y,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F22B'
            THEN 1
            ELSE 0 
        END ))
   AS F22B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F22D'
            THEN 1
            ELSE 0 
        END ))
   AS F22D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F22G'
            THEN 1
            ELSE 0 
        END ))
   AS F22G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23B'
            THEN 1
            ELSE 0 
        END ))
   AS F23B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23C'
            THEN 1
            ELSE 0 
        END ))
   AS F23C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23D'
            THEN 1
            ELSE 0 
        END ))
   AS F23D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23G'
            THEN 1
            ELSE 0 
        END ))
   AS F23G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23H'
            THEN 1
            ELSE 0 
        END ))
   AS F23H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23J'
            THEN 1
            ELSE 0 
        END ))
   AS F23J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23K'
            THEN 1
            ELSE 0 
        END ))
   AS F23K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23L'
            THEN 1
            ELSE 0 
        END ))
   AS F23L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23M'
            THEN 1
            ELSE 0 
        END ))
   AS F23M,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23N'
            THEN 1
            ELSE 0 
        END ))
   AS F23N,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23Q'
            THEN 1
            ELSE 0 
        END ))
   AS F23Q,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23R'
            THEN 1
            ELSE 0 
        END ))
   AS F23R,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F24B'
            THEN 1
            ELSE 0 
        END ))
   AS F24B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F24C'
            THEN 1
            ELSE 0 
        END ))
   AS F24C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F24D'
            THEN 1
            ELSE 0 
        END ))
   AS F24D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F24F'
            THEN 1
            ELSE 0 
        END ))
   AS F24F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F24H'
            THEN 1
            ELSE 0 
        END ))
   AS F24H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F24J'
            THEN 1
            ELSE 0 
        END ))
   AS F24J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F25B'
            THEN 1
            ELSE 0 
        END ))
   AS F25B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F25C'
            THEN 1
            ELSE 0 
        END ))
   AS F25C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F25D'
            THEN 1
            ELSE 0 
        END ))
   AS F25D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F25J'
            THEN 1
            ELSE 0 
        END ))
   AS F25J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F26B'
            THEN 1
            ELSE 0 
        END ))
   AS F26B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F27B'
            THEN 1
            ELSE 0 
        END ))
   AS F27B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F27D'
            THEN 1
            ELSE 0 
        END ))
   AS F27D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F28B'
            THEN 1
            ELSE 0 
        END ))
   AS F28B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F28C'
            THEN 1
            ELSE 0 
        END ))
   AS F28C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F28D'
            THEN 1
            ELSE 0 
        END ))
   AS F28D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F28F'
            THEN 1
            ELSE 0 
        END ))
   AS F28F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F28G'
            THEN 1
            ELSE 0 
        END ))
   AS F28G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F41A'
            THEN 1
            ELSE 0 
        END ))
   AS F41A,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F41B'
            THEN 1
            ELSE 0 
        END ))
   AS F41B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F41C'
            THEN 1
            ELSE 0 
        END ))
   AS F41C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F41F'
            THEN 1
            ELSE 0 
        END ))
   AS F41F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F41G'
            THEN 1
            ELSE 0 
        END ))
   AS F41G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F41H'
            THEN 1
            ELSE 0 
        END ))
   AS F41H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F41J'
            THEN 1
            ELSE 0 
        END ))
   AS F41J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F42B'
            THEN 1
            ELSE 0 
        END ))
   AS F42B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F42C'
            THEN 1
            ELSE 0 
        END ))
   AS F42C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F42D'
            THEN 1
            ELSE 0 
        END ))
   AS F42D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'F99Z'
            THEN 1
            ELSE 0 
        END ))
   AS F99Z,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01B'
            THEN 1
            ELSE 0 
        END ))
   AS G01B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01C'
            THEN 1
            ELSE 0 
        END ))
   AS G01C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01D'
            THEN 1
            ELSE 0 
        END ))
   AS G01D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01F'
            THEN 1
            ELSE 0 
        END ))
   AS G01F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01G'
            THEN 1
            ELSE 0 
        END ))
   AS G01G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01H'
            THEN 1
            ELSE 0 
        END ))
   AS G01H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01J'
            THEN 1
            ELSE 0 
        END ))
   AS G01J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01K'
            THEN 1
            ELSE 0 
        END ))
   AS G01K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01L'
            THEN 1
            ELSE 0 
        END ))
   AS G01L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01M'
            THEN 1
            ELSE 0 
        END ))
   AS G01M,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01N'
            THEN 1
            ELSE 0 
        END ))
   AS G01N,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01P'
            THEN 1
            ELSE 0 
        END ))
   AS G01P,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01Q'
            THEN 1
            ELSE 0 
        END ))
   AS G01Q,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01R'
            THEN 1
            ELSE 0 
        END ))
   AS G01R,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01S'
            THEN 1
            ELSE 0 
        END ))
   AS G01S,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01T'
            THEN 1
            ELSE 0 
        END ))
   AS G01T,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01V'
            THEN 1
            ELSE 0 
        END ))
   AS G01V,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01W'
            THEN 1
            ELSE 0 
        END ))
   AS G01W,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G02B'
            THEN 1
            ELSE 0 
        END ))
   AS G02B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G02C'
            THEN 1
            ELSE 0 
        END ))
   AS G02C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G02F'
            THEN 1
            ELSE 0 
        END ))
   AS G02F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G03B'
            THEN 1
            ELSE 0 
        END ))
   AS G03B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G03C'
            THEN 1
            ELSE 0 
        END ))
   AS G03C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G03D'
            THEN 1
            ELSE 0 
        END ))
   AS G03D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G03F'
            THEN 1
            ELSE 0 
        END ))
   AS G03F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G03G'
            THEN 1
            ELSE 0 
        END ))
   AS G03G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G03H'
            THEN 1
            ELSE 0 
        END ))
   AS G03H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G04B'
            THEN 1
            ELSE 0 
        END ))
   AS G04B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G04C'
            THEN 1
            ELSE 0 
        END ))
   AS G04C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G04D'
            THEN 1
            ELSE 0 
        END ))
   AS G04D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G04F'
            THEN 1
            ELSE 0 
        END ))
   AS G04F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G04G'
            THEN 1
            ELSE 0 
        END ))
   AS G04G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G04R'
            THEN 1
            ELSE 0 
        END ))
   AS G04R,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G05B'
            THEN 1
            ELSE 0 
        END ))
   AS G05B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G05D'
            THEN 1
            ELSE 0 
        END ))
   AS G05D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G05F'
            THEN 1
            ELSE 0 
        END ))
   AS G05F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G05G'
            THEN 1
            ELSE 0 
        END ))
   AS G05G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G06C'
            THEN 1
            ELSE 0 
        END ))
   AS G06C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G06D'
            THEN 1
            ELSE 0 
        END ))
   AS G06D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G06E'
            THEN 1
            ELSE 0 
        END ))
   AS G06E,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G06F'
            THEN 1
            ELSE 0 
        END ))
   AS G06F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G06G'
            THEN 1
            ELSE 0 
        END ))
   AS G06G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G06J'
            THEN 1
            ELSE 0 
        END ))
   AS G06J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G06K'
            THEN 1
            ELSE 0 
        END ))
   AS G06K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G06M'
            THEN 1
            ELSE 0 
        END ))
   AS G06M,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G06N'
            THEN 1
            ELSE 0 
        END ))
   AS G06N,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G06Q'
            THEN 1
            ELSE 0 
        END ))
   AS G06Q,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G06T'
            THEN 1
            ELSE 0 
        END ))
   AS G06T,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G07B'
            THEN 1
            ELSE 0 
        END ))
   AS G07B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G07C'
            THEN 1
            ELSE 0 
        END ))
   AS G07C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G07D'
            THEN 1
            ELSE 0 
        END ))
   AS G07D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G07F'
            THEN 1
            ELSE 0 
        END ))
   AS G07F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G07G'
            THEN 1
            ELSE 0 
        END ))
   AS G07G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G08B'
            THEN 1
            ELSE 0 
        END ))
   AS G08B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G08C'
            THEN 1
            ELSE 0 
        END ))
   AS G08C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G08G'
            THEN 1
            ELSE 0 
        END ))
   AS G08G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G09B'
            THEN 1
            ELSE 0 
        END ))
   AS G09B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G09C'
            THEN 1
            ELSE 0 
        END ))
   AS G09C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G09D'
            THEN 1
            ELSE 0 
        END ))
   AS G09D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G09F'
            THEN 1
            ELSE 0 
        END ))
   AS G09F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G09G'
            THEN 1
            ELSE 0 
        END ))
   AS G09G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G10B'
            THEN 1
            ELSE 0 
        END ))
   AS G10B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G10C'
            THEN 1
            ELSE 0 
        END ))
   AS G10C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G10D'
            THEN 1
            ELSE 0 
        END ))
   AS G10D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G10F'
            THEN 1
            ELSE 0 
        END ))
   AS G10F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G10G'
            THEN 1
            ELSE 0 
        END ))
   AS G10G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G10H'
            THEN 1
            ELSE 0 
        END ))
   AS G10H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G10K'
            THEN 1
            ELSE 0 
        END ))
   AS G10K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G10L'
            THEN 1
            ELSE 0 
        END ))
   AS G10L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G11B'
            THEN 1
            ELSE 0 
        END ))
   AS G11B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G11C'
            THEN 1
            ELSE 0 
        END ))
   AS G11C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G12B'
            THEN 1
            ELSE 0 
        END ))
   AS G12B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G21B'
            THEN 1
            ELSE 0 
        END ))
   AS G21B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G21C'
            THEN 1
            ELSE 0 
        END ))
   AS G21C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G21D'
            THEN 1
            ELSE 0 
        END ))
   AS G21D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G21F'
            THEN 1
            ELSE 0 
        END ))
   AS G21F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G21G'
            THEN 1
            ELSE 0 
        END ))
   AS G21G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G21H'
            THEN 1
            ELSE 0 
        END ))
   AS G21H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G21J'
            THEN 1
            ELSE 0 
        END ))
   AS G21J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G21K'
            THEN 1
            ELSE 0 
        END ))
   AS G21K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'G99Z'
            THEN 1
            ELSE 0 
        END ))
   AS G99Z,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01B'
            THEN 1
            ELSE 0 
        END ))
   AS H01B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01C'
            THEN 1
            ELSE 0 
        END ))
   AS H01C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01F'
            THEN 1
            ELSE 0 
        END ))
   AS H01F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01G'
            THEN 1
            ELSE 0 
        END ))
   AS H01G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01H'
            THEN 1
            ELSE 0 
        END ))
   AS H01H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01J'
            THEN 1
            ELSE 0 
        END ))
   AS H01J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01K'
            THEN 1
            ELSE 0 
        END ))
   AS H01K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01L'
            THEN 1
            ELSE 0 
        END ))
   AS H01L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01M'
            THEN 1
            ELSE 0 
        END ))
   AS H01M,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01P'
            THEN 1
            ELSE 0 
        END ))
   AS H01P,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01Q'
            THEN 1
            ELSE 0 
        END ))
   AS H01Q,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01R'
            THEN 1
            ELSE 0 
        END ))
   AS H01R,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01S'
            THEN 1
            ELSE 0 
        END ))
   AS H01S,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01T'
            THEN 1
            ELSE 0 
        END ))
   AS H01T,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H02B'
            THEN 1
            ELSE 0 
        END ))
   AS H02B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H02G'
            THEN 1
            ELSE 0 
        END ))
   AS H02G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H02H'
            THEN 1
            ELSE 0 
        END ))
   AS H02H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H02J'
            THEN 1
            ELSE 0 
        END ))
   AS H02J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H02K'
            THEN 1
            ELSE 0 
        END ))
   AS H02K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H02M'
            THEN 1
            ELSE 0 
        END ))
   AS H02M,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H02N'
            THEN 1
            ELSE 0 
        END ))
   AS H02N,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H02P'
            THEN 1
            ELSE 0 
        END ))
   AS H02P,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H03B'
            THEN 1
            ELSE 0 
        END ))
   AS H03B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H03C'
            THEN 1
            ELSE 0 
        END ))
   AS H03C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H03D'
            THEN 1
            ELSE 0 
        END ))
   AS H03D,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H03F'
            THEN 1
            ELSE 0 
        END ))
   AS H03F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H03G'
            THEN 1
            ELSE 0 
        END ))
   AS H03G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H03H'
            THEN 1
            ELSE 0 
        END ))
   AS H03H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H03J'
            THEN 1
            ELSE 0 
        END ))
   AS H03J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H03K'
            THEN 1
            ELSE 0 
        END ))
   AS H03K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H03L'
            THEN 1
            ELSE 0 
        END ))
   AS H03L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H03M'
            THEN 1
            ELSE 0 
        END ))
   AS H03M,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H04B'
            THEN 1
            ELSE 0 
        END ))
   AS H04B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H04H'
            THEN 1
            ELSE 0 
        END ))
   AS H04H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H04J'
            THEN 1
            ELSE 0 
        END ))
   AS H04J,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H04K'
            THEN 1
            ELSE 0 
        END ))
   AS H04K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H04L'
            THEN 1
            ELSE 0 
        END ))
   AS H04L,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H04M'
            THEN 1
            ELSE 0 
        END ))
   AS H04M,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H04N'
            THEN 1
            ELSE 0 
        END ))
   AS H04N,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H04Q'
            THEN 1
            ELSE 0 
        END ))
   AS H04Q,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H04R'
            THEN 1
            ELSE 0 
        END ))
   AS H04R,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H04S'
            THEN 1
            ELSE 0 
        END ))
   AS H04S,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H04W'
            THEN 1
            ELSE 0 
        END ))
   AS H04W,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H05B'
            THEN 1
            ELSE 0 
        END ))
   AS H05B,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H05C'
            THEN 1
            ELSE 0 
        END ))
   AS H05C,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H05F'
            THEN 1
            ELSE 0 
        END ))
   AS H05F,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H05G'
            THEN 1
            ELSE 0 
        END ))
   AS H05G,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H05H'
            THEN 1
            ELSE 0 
        END ))
   AS H05H,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H05K'
            THEN 1
            ELSE 0 
        END ))
   AS H05K,
AVG((CASE 
            WHEN left(ipc_class_symbol,4) = 'H99Z'
            THEN 1
            ELSE 0 
        END ))
   AS H99Z
   
FROM tls209_appln_ipc
JOIN (SELECT DISTINCT docdb_family_id, appln_id FROM tls218_docdb_fam JOIN tls201_appln USING(appln_id) WHERE appln_filing_date BETWEEN '1993-01-01' AND '1996-12-31') fams USING(appln_id)
LEFT OUTER JOIN (SELECT DISTINCT docdb_family_id FROM kof) AS k USING (docdb_family_id)
WHERE ipc_class_symbol IS NOT NULL
GROUP BY docdb_family_id);
-- LIMIT 100;

COMMIT;