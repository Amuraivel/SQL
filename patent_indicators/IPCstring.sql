SET SQL_SAFE_UPDATES = 0;
UPDATE patentIndicators JOIN
(SELECT docdb_family_id, group_concat(A01B,
          A01C,
          A01D,
          A01F,
          A01G,
          A01H,
          A01J,
          A01K,
          A01L,
          A01M,
          A01N,
          A01P,
          A21B,
          A21C,
          A21D,
          A22B,
          A22C,
          A23B,
          A23C,
          A23D,
          A23F,
          A23G,
          A23J,
          A23K,
          A23L,
          A23N,
          A23P,
          A24B,
          A24C,
          A24D,
          A24F,
          A41B,
          A41C,
          A41D,
          A41F,
          A41G,
          A41H,
          A42B,
          A42C,
          A43B,
          A43C,
          A43D,
          A44B,
          A44C,
          A45B,
          A45C,
          A45D,
          A45F,
          A46B,
          A46D,
          A47B,
          A47C,
          A47D,
          A47F,
          A47G,
          A47H,
          A47J,
          A47K,
          A47L,
          A61B,
          A61C,
          A61D,
          A61F,
          A61G,
          A61H,
          A61J,
          A61K,
          A61L,
          A61M,
          A61N,
          A61P,
          A61Q,
          A62B,
          A62C,
          A62D,
          A63B,
          A63C,
          A63D,
          A63F,
          A63G,
          A63H,
          A63J,
          A63K,
          A99Z,
          B01B,
          B01D,
          B01F,
          B01J,
          B01L,
          B02B,
          B02C,
          B03B,
          B03C,
          B03D,
          B04B,
          B04C,
          B05B,
          B05C,
          B05D,
          B06B,
          B07B,
          B07C,
          B08B,
          B09B,
          B09C,
          B21B,
          B21C,
          B21D,
          B21F,
          B21G,
          B21H,
          B21J,
          B21K,
          B21L,
          B22C,
          B22D,
          B22F,
          B23B,
          B23C,
          B23D,
          B23F,
          B23G,
          B23H,
          B23K,
          B23P,
          B23Q,
          B24B,
          B24C,
          B24D,
          B25B,
          B25C,
          B25D,
          B25F,
          B25G,
          B25H,
          B25J,
          B26B,
          B26D,
          B26F,
          B27B,
          B27C,
          B27D,
          B27F,
          B27G,
          B27H,
          B27J,
          B27K,
          B27L,
          B27M,
          B27N,
          B28B,
          B28C,
          B28D,
          B29B,
          B29C,
          B29D,
          B29K,
          B29L,
          B30B,
          B31B,
          B31C,
          B31D,
          B31F,
          B32B,
          B41B,
          B41C,
          B41D,
          B41F,
          B41G,
          B41J,
          B41K,
          B41L,
          B41M,
          B41N,
          B42B,
          B42C,
          B42D,
          B42F,
          B43K,
          B43L,
          B43M,
          B44B,
          B44C,
          B44D,
          B44F,
          B60B,
          B60C,
          B60D,
          B60F,
          B60G,
          B60H,
          B60J,
          B60K,
          B60L,
          B60M,
          B60N,
          B60P,
          B60Q,
          B60R,
          B60S,
          B60T,
          B60V,
          B60W,
          B61B,
          B61C,
          B61D,
          B61F,
          B61G,
          B61H,
          B61J,
          B61K,
          B61L,
          B62B,
          B62C,
          B62D,
          B62H,
          B62J,
          B62K,
          B62L,
          B62M,
          B63B,
          B63C,
          B63G,
          B63H,
          B63J,
          B64B,
          B64C,
          B64D,
          B64F,
          B64G,
          B65B,
          B65C,
          B65D,
          B65F,
          B65G,
          B65H,
          B66B,
          B66C,
          B66D,
          B66F,
          B67B,
          B67C,
          B67D,
          B68B,
          B68C,
          B68F,
          B68G,
          B81B,
          B81C,
          B82B,
          B82Y,
          B99Z,
          C01B,
          C01C,
          C01D,
          C01F,
          C01G,
          C02F,
          C03B,
          C03C,
          C04B,
          C05B,
          C05C,
          C05D,
          C05F,
          C05G,
          C06B,
          C06C,
          C06D,
          C06F,
          C07B,
          C07C,
          C07D,
          C07F,
          C07G,
          C07H,
          C07J,
          C07K,
          C08B,
          C08C,
          C08F,
          C08G,
          C08H,
          C08J,
          C08K,
          C08L,
          C09B,
          C09C,
          C09D,
          C09F,
          C09G,
          C09H,
          C09J,
          C09K,
          C10B,
          C10C,
          C10F,
          C10G,
          C10H,
          C10J,
          C10K,
          C10L,
          C10M,
          C10N,
          C11B,
          C11C,
          C11D,
          C12C,
          C12F,
          C12G,
          C12H,
          C12J,
          C12L,
          C12M,
          C12N,
          C12P,
          C12Q,
          C12R,
          C12S,
          C13B,
          C13C,
          C13D,
          C13F,
          C13G,
          C13K,
          C14B,
          C14C,
          C21B,
          C21C,
          C21D,
          C22B,
          C22C,
          C22F,
          C23C,
          C23D,
          C23F,
          C23G,
          C25B,
          C25C,
          C25D,
          C25F,
          C30B,
          C40B,
          C99Z,
          D01B,
          D01C,
          D01D,
          D01F,
          D01G,
          D01H,
          D02G,
          D02H,
          D02J,
          D03C,
          D03D,
          D03J,
          D04B,
          D04C,
          D04D,
          D04G,
          D04H,
          D05B,
          D05C,
          D06B,
          D06C,
          D06F,
          D06G,
          D06H,
          D06J,
          D06L,
          D06M,
          D06N,
          D06P,
          D06Q,
          D07B,
          D21B,
          D21C,
          D21D,
          D21F,
          D21G,
          D21H,
          D21J,
          D99Z,
          E01B,
          E01C,
          E01D,
          E01F,
          E01H,
          E02B,
          E02C,
          E02D,
          E02F,
          E03B,
          E03C,
          E03D,
          E03F,
          E04B,
          E04C,
          E04D,
          E04F,
          E04G,
          E04H,
          E05B,
          E05C,
          E05D,
          E05F,
          E05G,
          E06B,
          E06C,
          E21B,
          E21C,
          E21D,
          E21F,
          E99Z,
          F01B,
          F01C,
          F01D,
          F01K,
          F01L,
          F01M,
          F01N,
          F01P,
          F02B,
          F02C,
          F02D,
          F02F,
          F02G,
          F02K,
          F02M,
          F02N,
          F02P,
          F03B,
          F03C,
          F03D,
          F03G,
          F03H,
          F04B,
          F04C,
          F04D,
          F04F,
          F15B,
          F15C,
          F15D,
          F16B,
          F16C,
          F16D,
          F16F,
          F16G,
          F16H,
          F16J,
          F16K,
          F16L,
          F16M,
          F16N,
          F16P,
          F16S,
          F16T,
          F17B,
          F17C,
          F17D,
          F21H,
          F21K,
          F21L,
          F21S,
          F21V,
          F21W,
          F21Y,
          F22B,
          F22D,
          F22G,
          F23B,
          F23C,
          F23D,
          F23G,
          F23H,
          F23J,
          F23K,
          F23L,
          F23M,
          F23N,
          F23Q,
          F23R,
          F24B,
          F24C,
          F24D,
          F24F,
          F24H,
          F24J,
          F25B,
          F25C,
          F25D,
          F25J,
          F26B,
          F27B,
          F27D,
          F28B,
          F28C,
          F28D,
          F28F,
          F28G,
          F41A,
          F41B,
          F41C,
          F41F,
          F41G,
          F41H,
          F41J,
          F42B,
          F42C,
          F42D,
          F99Z,
          G01B,
          G01C,
          G01D,
          G01F,
          G01G,
          G01H,
          G01J,
          G01K,
          G01L,
          G01M,
          G01N,
          G01P,
          G01Q,
          G01R,
          G01S,
          G01T,
          G01V,
          G01W,
          G02B,
          G02C,
          G02F,
          G03B,
          G03C,
          G03D,
          G03F,
          G03G,
          G03H,
          G04B,
          G04C,
          G04D,
          G04F,
          G04G,
          G04R,
          G05B,
          G05D,
          G05F,
          G05G,
          G06C,
          G06D,
          G06E,
          G06F,
          G06G,
          G06J,
          G06K,
          G06M,
          G06N,
          G06Q,
          G06T,
          G07B,
          G07C,
          G07D,
          G07F,
          G07G,
          G08B,
          G08C,
          G08G,
          G09B,
          G09C,
          G09D,
          G09F,
          G09G,
          G10B,
          G10C,
          G10D,
          G10F,
          G10G,
          G10H,
          G10K,
          G10L,
          G11B,
          G11C,
          G12B,
          G21B,
          G21C,
          G21D,
          G21F,
          G21G,
          G21H,
          G21J,
          G21K,
          G99Z,
          H01B,
          H01C,
          H01F,
          H01G,
          H01H,
          H01J,
          H01K,
          H01L,
          H01M,
          H01P,
          H01Q,
          H01R,
          H01S,
          H01T,
          H02B,
          H02G,
          H02H,
          H02J,
          H02K,
          H02M,
          H02N,
          H02P,
          H03B,
          H03C,
          H03D,
          H03F,
          H03G,
          H03H,
          H03J,
          H03K,
          H03L,
          H03M,
          H04B,
          H04H,
          H04J,
          H04K,
          H04L,
          H04M,
          H04N,
          H04Q,
          H04R,
          H04S,
          H04W,
          H05C,
          H05F,
          H05G,
          H05H,
          H05K,
          H99Z,
   H05B) AS IPC4bitString FROM
(SELECT DISTINCT docdb_family_id,
       MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01B'
            THEN 1
            ELSE 0 
        END ))
   AS A01B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01C'
            THEN 1
            ELSE 0 
        END ))
   AS A01C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01D'
            THEN 1
            ELSE 0 
        END ))
   AS A01D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01F'
            THEN 1
            ELSE 0 
        END ))
   AS A01F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01G'
            THEN 1
            ELSE 0 
        END ))
   AS A01G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01H'
            THEN 1
            ELSE 0 
        END ))
   AS A01H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01J'
            THEN 1
            ELSE 0 
        END ))
   AS A01J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01K'
            THEN 1
            ELSE 0 
        END ))
   AS A01K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01L'
            THEN 1
            ELSE 0 
        END ))
   AS A01L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01M'
            THEN 1
            ELSE 0 
        END ))
   AS A01M,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01N'
            THEN 1
            ELSE 0 
        END ))
   AS A01N,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A01P'
            THEN 1
            ELSE 0 
        END ))
   AS A01P,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A21B'
            THEN 1
            ELSE 0 
        END ))
   AS A21B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A21C'
            THEN 1
            ELSE 0 
        END ))
   AS A21C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A21D'
            THEN 1
            ELSE 0 
        END ))
   AS A21D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A22B'
            THEN 1
            ELSE 0 
        END ))
   AS A22B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A22C'
            THEN 1
            ELSE 0 
        END ))
   AS A22C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A23B'
            THEN 1
            ELSE 0 
        END ))
   AS A23B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A23C'
            THEN 1
            ELSE 0 
        END ))
   AS A23C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A23D'
            THEN 1
            ELSE 0 
        END ))
   AS A23D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A23F'
            THEN 1
            ELSE 0 
        END ))
   AS A23F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A23G'
            THEN 1
            ELSE 0 
        END ))
   AS A23G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A23J'
            THEN 1
            ELSE 0 
        END ))
   AS A23J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A23K'
            THEN 1
            ELSE 0 
        END ))
   AS A23K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A23L'
            THEN 1
            ELSE 0 
        END ))
   AS A23L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A23N'
            THEN 1
            ELSE 0 
        END ))
   AS A23N,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A23P'
            THEN 1
            ELSE 0 
        END ))
   AS A23P,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A24B'
            THEN 1
            ELSE 0 
        END ))
   AS A24B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A24C'
            THEN 1
            ELSE 0 
        END ))
   AS A24C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A24D'
            THEN 1
            ELSE 0 
        END ))
   AS A24D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A24F'
            THEN 1
            ELSE 0 
        END ))
   AS A24F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A41B'
            THEN 1
            ELSE 0 
        END ))
   AS A41B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A41C'
            THEN 1
            ELSE 0 
        END ))
   AS A41C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A41D'
            THEN 1
            ELSE 0 
        END ))
   AS A41D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A41F'
            THEN 1
            ELSE 0 
        END ))
   AS A41F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A41G'
            THEN 1
            ELSE 0 
        END ))
   AS A41G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A41H'
            THEN 1
            ELSE 0 
        END ))
   AS A41H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A42B'
            THEN 1
            ELSE 0 
        END ))
   AS A42B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A42C'
            THEN 1
            ELSE 0 
        END ))
   AS A42C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A43B'
            THEN 1
            ELSE 0 
        END ))
   AS A43B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A43C'
            THEN 1
            ELSE 0 
        END ))
   AS A43C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A43D'
            THEN 1
            ELSE 0 
        END ))
   AS A43D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A44B'
            THEN 1
            ELSE 0 
        END ))
   AS A44B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A44C'
            THEN 1
            ELSE 0 
        END ))
   AS A44C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A45B'
            THEN 1
            ELSE 0 
        END ))
   AS A45B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A45C'
            THEN 1
            ELSE 0 
        END ))
   AS A45C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A45D'
            THEN 1
            ELSE 0 
        END ))
   AS A45D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A45F'
            THEN 1
            ELSE 0 
        END ))
   AS A45F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A46B'
            THEN 1
            ELSE 0 
        END ))
   AS A46B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A46D'
            THEN 1
            ELSE 0 
        END ))
   AS A46D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A47B'
            THEN 1
            ELSE 0 
        END ))
   AS A47B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A47C'
            THEN 1
            ELSE 0 
        END ))
   AS A47C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A47D'
            THEN 1
            ELSE 0 
        END ))
   AS A47D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A47F'
            THEN 1
            ELSE 0 
        END ))
   AS A47F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A47G'
            THEN 1
            ELSE 0 
        END ))
   AS A47G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A47H'
            THEN 1
            ELSE 0 
        END ))
   AS A47H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A47J'
            THEN 1
            ELSE 0 
        END ))
   AS A47J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A47K'
            THEN 1
            ELSE 0 
        END ))
   AS A47K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A47L'
            THEN 1
            ELSE 0 
        END ))
   AS A47L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61B'
            THEN 1
            ELSE 0 
        END ))
   AS A61B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61C'
            THEN 1
            ELSE 0 
        END ))
   AS A61C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61D'
            THEN 1
            ELSE 0 
        END ))
   AS A61D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61F'
            THEN 1
            ELSE 0 
        END ))
   AS A61F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61G'
            THEN 1
            ELSE 0 
        END ))
   AS A61G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61H'
            THEN 1
            ELSE 0 
        END ))
   AS A61H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61J'
            THEN 1
            ELSE 0 
        END ))
   AS A61J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61K'
            THEN 1
            ELSE 0 
        END ))
   AS A61K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61L'
            THEN 1
            ELSE 0 
        END ))
   AS A61L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61M'
            THEN 1
            ELSE 0 
        END ))
   AS A61M,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61N'
            THEN 1
            ELSE 0 
        END ))
   AS A61N,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61P'
            THEN 1
            ELSE 0 
        END ))
   AS A61P,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A61Q'
            THEN 1
            ELSE 0 
        END ))
   AS A61Q,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A62B'
            THEN 1
            ELSE 0 
        END ))
   AS A62B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A62C'
            THEN 1
            ELSE 0 
        END ))
   AS A62C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A62D'
            THEN 1
            ELSE 0 
        END ))
   AS A62D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A63B'
            THEN 1
            ELSE 0 
        END ))
   AS A63B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A63C'
            THEN 1
            ELSE 0 
        END ))
   AS A63C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A63D'
            THEN 1
            ELSE 0 
        END ))
   AS A63D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A63F'
            THEN 1
            ELSE 0 
        END ))
   AS A63F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A63G'
            THEN 1
            ELSE 0 
        END ))
   AS A63G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A63H'
            THEN 1
            ELSE 0 
        END ))
   AS A63H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A63J'
            THEN 1
            ELSE 0 
        END ))
   AS A63J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A63K'
            THEN 1
            ELSE 0 
        END ))
   AS A63K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'A99Z'
            THEN 1
            ELSE 0 
        END ))
   AS A99Z,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B01B'
            THEN 1
            ELSE 0 
        END ))
   AS B01B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B01D'
            THEN 1
            ELSE 0 
        END ))
   AS B01D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B01F'
            THEN 1
            ELSE 0 
        END ))
   AS B01F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B01J'
            THEN 1
            ELSE 0 
        END ))
   AS B01J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B01L'
            THEN 1
            ELSE 0 
        END ))
   AS B01L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B02B'
            THEN 1
            ELSE 0 
        END ))
   AS B02B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B02C'
            THEN 1
            ELSE 0 
        END ))
   AS B02C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B03B'
            THEN 1
            ELSE 0 
        END ))
   AS B03B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B03C'
            THEN 1
            ELSE 0 
        END ))
   AS B03C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B03D'
            THEN 1
            ELSE 0 
        END ))
   AS B03D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B04B'
            THEN 1
            ELSE 0 
        END ))
   AS B04B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B04C'
            THEN 1
            ELSE 0 
        END ))
   AS B04C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B05B'
            THEN 1
            ELSE 0 
        END ))
   AS B05B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B05C'
            THEN 1
            ELSE 0 
        END ))
   AS B05C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B05D'
            THEN 1
            ELSE 0 
        END ))
   AS B05D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B06B'
            THEN 1
            ELSE 0 
        END ))
   AS B06B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B07B'
            THEN 1
            ELSE 0 
        END ))
   AS B07B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B07C'
            THEN 1
            ELSE 0 
        END ))
   AS B07C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B08B'
            THEN 1
            ELSE 0 
        END ))
   AS B08B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B09B'
            THEN 1
            ELSE 0 
        END ))
   AS B09B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B09C'
            THEN 1
            ELSE 0 
        END ))
   AS B09C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B21B'
            THEN 1
            ELSE 0 
        END ))
   AS B21B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B21C'
            THEN 1
            ELSE 0 
        END ))
   AS B21C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B21D'
            THEN 1
            ELSE 0 
        END ))
   AS B21D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B21F'
            THEN 1
            ELSE 0 
        END ))
   AS B21F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B21G'
            THEN 1
            ELSE 0 
        END ))
   AS B21G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B21H'
            THEN 1
            ELSE 0 
        END ))
   AS B21H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B21J'
            THEN 1
            ELSE 0 
        END ))
   AS B21J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B21K'
            THEN 1
            ELSE 0 
        END ))
   AS B21K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B21L'
            THEN 1
            ELSE 0 
        END ))
   AS B21L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B22C'
            THEN 1
            ELSE 0 
        END ))
   AS B22C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B22D'
            THEN 1
            ELSE 0 
        END ))
   AS B22D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B22F'
            THEN 1
            ELSE 0 
        END ))
   AS B22F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B23B'
            THEN 1
            ELSE 0 
        END ))
   AS B23B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B23C'
            THEN 1
            ELSE 0 
        END ))
   AS B23C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B23D'
            THEN 1
            ELSE 0 
        END ))
   AS B23D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B23F'
            THEN 1
            ELSE 0 
        END ))
   AS B23F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B23G'
            THEN 1
            ELSE 0 
        END ))
   AS B23G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B23H'
            THEN 1
            ELSE 0 
        END ))
   AS B23H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B23K'
            THEN 1
            ELSE 0 
        END ))
   AS B23K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B23P'
            THEN 1
            ELSE 0 
        END ))
   AS B23P,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B23Q'
            THEN 1
            ELSE 0 
        END ))
   AS B23Q,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B24B'
            THEN 1
            ELSE 0 
        END ))
   AS B24B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B24C'
            THEN 1
            ELSE 0 
        END ))
   AS B24C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B24D'
            THEN 1
            ELSE 0 
        END ))
   AS B24D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B25B'
            THEN 1
            ELSE 0 
        END ))
   AS B25B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B25C'
            THEN 1
            ELSE 0 
        END ))
   AS B25C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B25D'
            THEN 1
            ELSE 0 
        END ))
   AS B25D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B25F'
            THEN 1
            ELSE 0 
        END ))
   AS B25F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B25G'
            THEN 1
            ELSE 0 
        END ))
   AS B25G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B25H'
            THEN 1
            ELSE 0 
        END ))
   AS B25H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B25J'
            THEN 1
            ELSE 0 
        END ))
   AS B25J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B26B'
            THEN 1
            ELSE 0 
        END ))
   AS B26B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B26D'
            THEN 1
            ELSE 0 
        END ))
   AS B26D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B26F'
            THEN 1
            ELSE 0 
        END ))
   AS B26F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B27B'
            THEN 1
            ELSE 0 
        END ))
   AS B27B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B27C'
            THEN 1
            ELSE 0 
        END ))
   AS B27C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B27D'
            THEN 1
            ELSE 0 
        END ))
   AS B27D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B27F'
            THEN 1
            ELSE 0 
        END ))
   AS B27F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B27G'
            THEN 1
            ELSE 0 
        END ))
   AS B27G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B27H'
            THEN 1
            ELSE 0 
        END ))
   AS B27H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B27J'
            THEN 1
            ELSE 0 
        END ))
   AS B27J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B27K'
            THEN 1
            ELSE 0 
        END ))
   AS B27K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B27L'
            THEN 1
            ELSE 0 
        END ))
   AS B27L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B27M'
            THEN 1
            ELSE 0 
        END ))
   AS B27M,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B27N'
            THEN 1
            ELSE 0 
        END ))
   AS B27N,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B28B'
            THEN 1
            ELSE 0 
        END ))
   AS B28B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B28C'
            THEN 1
            ELSE 0 
        END ))
   AS B28C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B28D'
            THEN 1
            ELSE 0 
        END ))
   AS B28D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B29B'
            THEN 1
            ELSE 0 
        END ))
   AS B29B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B29C'
            THEN 1
            ELSE 0 
        END ))
   AS B29C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B29D'
            THEN 1
            ELSE 0 
        END ))
   AS B29D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B29K'
            THEN 1
            ELSE 0 
        END ))
   AS B29K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B29L'
            THEN 1
            ELSE 0 
        END ))
   AS B29L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B30B'
            THEN 1
            ELSE 0 
        END ))
   AS B30B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B31B'
            THEN 1
            ELSE 0 
        END ))
   AS B31B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B31C'
            THEN 1
            ELSE 0 
        END ))
   AS B31C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B31D'
            THEN 1
            ELSE 0 
        END ))
   AS B31D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B31F'
            THEN 1
            ELSE 0 
        END ))
   AS B31F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B32B'
            THEN 1
            ELSE 0 
        END ))
   AS B32B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B41B'
            THEN 1
            ELSE 0 
        END ))
   AS B41B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B41C'
            THEN 1
            ELSE 0 
        END ))
   AS B41C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B41D'
            THEN 1
            ELSE 0 
        END ))
   AS B41D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B41F'
            THEN 1
            ELSE 0 
        END ))
   AS B41F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B41G'
            THEN 1
            ELSE 0 
        END ))
   AS B41G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B41J'
            THEN 1
            ELSE 0 
        END ))
   AS B41J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B41K'
            THEN 1
            ELSE 0 
        END ))
   AS B41K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B41L'
            THEN 1
            ELSE 0 
        END ))
   AS B41L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B41M'
            THEN 1
            ELSE 0 
        END ))
   AS B41M,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B41N'
            THEN 1
            ELSE 0 
        END ))
   AS B41N,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B42B'
            THEN 1
            ELSE 0 
        END ))
   AS B42B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B42C'
            THEN 1
            ELSE 0 
        END ))
   AS B42C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B42D'
            THEN 1
            ELSE 0 
        END ))
   AS B42D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B42F'
            THEN 1
            ELSE 0 
        END ))
   AS B42F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B43K'
            THEN 1
            ELSE 0 
        END ))
   AS B43K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B43L'
            THEN 1
            ELSE 0 
        END ))
   AS B43L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B43M'
            THEN 1
            ELSE 0 
        END ))
   AS B43M,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B44B'
            THEN 1
            ELSE 0 
        END ))
   AS B44B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B44C'
            THEN 1
            ELSE 0 
        END ))
   AS B44C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B44D'
            THEN 1
            ELSE 0 
        END ))
   AS B44D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B44F'
            THEN 1
            ELSE 0 
        END ))
   AS B44F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60B'
            THEN 1
            ELSE 0 
        END ))
   AS B60B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60C'
            THEN 1
            ELSE 0 
        END ))
   AS B60C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60D'
            THEN 1
            ELSE 0 
        END ))
   AS B60D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60F'
            THEN 1
            ELSE 0 
        END ))
   AS B60F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60G'
            THEN 1
            ELSE 0 
        END ))
   AS B60G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60H'
            THEN 1
            ELSE 0 
        END ))
   AS B60H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60J'
            THEN 1
            ELSE 0 
        END ))
   AS B60J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60K'
            THEN 1
            ELSE 0 
        END ))
   AS B60K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60L'
            THEN 1
            ELSE 0 
        END ))
   AS B60L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60M'
            THEN 1
            ELSE 0 
        END ))
   AS B60M,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60N'
            THEN 1
            ELSE 0 
        END ))
   AS B60N,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60P'
            THEN 1
            ELSE 0 
        END ))
   AS B60P,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60Q'
            THEN 1
            ELSE 0 
        END ))
   AS B60Q,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60R'
            THEN 1
            ELSE 0 
        END ))
   AS B60R,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60S'
            THEN 1
            ELSE 0 
        END ))
   AS B60S,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60T'
            THEN 1
            ELSE 0 
        END ))
   AS B60T,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60V'
            THEN 1
            ELSE 0 
        END ))
   AS B60V,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B60W'
            THEN 1
            ELSE 0 
        END ))
   AS B60W,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B61B'
            THEN 1
            ELSE 0 
        END ))
   AS B61B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B61C'
            THEN 1
            ELSE 0 
        END ))
   AS B61C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B61D'
            THEN 1
            ELSE 0 
        END ))
   AS B61D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B61F'
            THEN 1
            ELSE 0 
        END ))
   AS B61F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B61G'
            THEN 1
            ELSE 0 
        END ))
   AS B61G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B61H'
            THEN 1
            ELSE 0 
        END ))
   AS B61H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B61J'
            THEN 1
            ELSE 0 
        END ))
   AS B61J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B61K'
            THEN 1
            ELSE 0 
        END ))
   AS B61K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B61L'
            THEN 1
            ELSE 0 
        END ))
   AS B61L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B62B'
            THEN 1
            ELSE 0 
        END ))
   AS B62B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B62C'
            THEN 1
            ELSE 0 
        END ))
   AS B62C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B62D'
            THEN 1
            ELSE 0 
        END ))
   AS B62D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B62H'
            THEN 1
            ELSE 0 
        END ))
   AS B62H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B62J'
            THEN 1
            ELSE 0 
        END ))
   AS B62J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B62K'
            THEN 1
            ELSE 0 
        END ))
   AS B62K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B62L'
            THEN 1
            ELSE 0 
        END ))
   AS B62L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B62M'
            THEN 1
            ELSE 0 
        END ))
   AS B62M,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B63B'
            THEN 1
            ELSE 0 
        END ))
   AS B63B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B63C'
            THEN 1
            ELSE 0 
        END ))
   AS B63C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B63G'
            THEN 1
            ELSE 0 
        END ))
   AS B63G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B63H'
            THEN 1
            ELSE 0 
        END ))
   AS B63H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B63J'
            THEN 1
            ELSE 0 
        END ))
   AS B63J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B64B'
            THEN 1
            ELSE 0 
        END ))
   AS B64B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B64C'
            THEN 1
            ELSE 0 
        END ))
   AS B64C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B64D'
            THEN 1
            ELSE 0 
        END ))
   AS B64D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B64F'
            THEN 1
            ELSE 0 
        END ))
   AS B64F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B64G'
            THEN 1
            ELSE 0 
        END ))
   AS B64G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B65B'
            THEN 1
            ELSE 0 
        END ))
   AS B65B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B65C'
            THEN 1
            ELSE 0 
        END ))
   AS B65C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B65D'
            THEN 1
            ELSE 0 
        END ))
   AS B65D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B65F'
            THEN 1
            ELSE 0 
        END ))
   AS B65F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B65G'
            THEN 1
            ELSE 0 
        END ))
   AS B65G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B65H'
            THEN 1
            ELSE 0 
        END ))
   AS B65H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B66B'
            THEN 1
            ELSE 0 
        END ))
   AS B66B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B66C'
            THEN 1
            ELSE 0 
        END ))
   AS B66C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B66D'
            THEN 1
            ELSE 0 
        END ))
   AS B66D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B66F'
            THEN 1
            ELSE 0 
        END ))
   AS B66F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B67B'
            THEN 1
            ELSE 0 
        END ))
   AS B67B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B67C'
            THEN 1
            ELSE 0 
        END ))
   AS B67C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B67D'
            THEN 1
            ELSE 0 
        END ))
   AS B67D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B68B'
            THEN 1
            ELSE 0 
        END ))
   AS B68B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B68C'
            THEN 1
            ELSE 0 
        END ))
   AS B68C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B68F'
            THEN 1
            ELSE 0 
        END ))
   AS B68F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B68G'
            THEN 1
            ELSE 0 
        END ))
   AS B68G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B81B'
            THEN 1
            ELSE 0 
        END ))
   AS B81B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B81C'
            THEN 1
            ELSE 0 
        END ))
   AS B81C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B82B'
            THEN 1
            ELSE 0 
        END ))
   AS B82B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B82Y'
            THEN 1
            ELSE 0 
        END ))
   AS B82Y,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'B99Z'
            THEN 1
            ELSE 0 
        END ))
   AS B99Z,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C01B'
            THEN 1
            ELSE 0 
        END ))
   AS C01B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C01C'
            THEN 1
            ELSE 0 
        END ))
   AS C01C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C01D'
            THEN 1
            ELSE 0 
        END ))
   AS C01D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C01F'
            THEN 1
            ELSE 0 
        END ))
   AS C01F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C01G'
            THEN 1
            ELSE 0 
        END ))
   AS C01G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C02F'
            THEN 1
            ELSE 0 
        END ))
   AS C02F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C03B'
            THEN 1
            ELSE 0 
        END ))
   AS C03B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C03C'
            THEN 1
            ELSE 0 
        END ))
   AS C03C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C04B'
            THEN 1
            ELSE 0 
        END ))
   AS C04B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C05B'
            THEN 1
            ELSE 0 
        END ))
   AS C05B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C05C'
            THEN 1
            ELSE 0 
        END ))
   AS C05C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C05D'
            THEN 1
            ELSE 0 
        END ))
   AS C05D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C05F'
            THEN 1
            ELSE 0 
        END ))
   AS C05F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C05G'
            THEN 1
            ELSE 0 
        END ))
   AS C05G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C06B'
            THEN 1
            ELSE 0 
        END ))
   AS C06B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C06C'
            THEN 1
            ELSE 0 
        END ))
   AS C06C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C06D'
            THEN 1
            ELSE 0 
        END ))
   AS C06D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C06F'
            THEN 1
            ELSE 0 
        END ))
   AS C06F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C07B'
            THEN 1
            ELSE 0 
        END ))
   AS C07B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C07C'
            THEN 1
            ELSE 0 
        END ))
   AS C07C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C07D'
            THEN 1
            ELSE 0 
        END ))
   AS C07D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C07F'
            THEN 1
            ELSE 0 
        END ))
   AS C07F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C07G'
            THEN 1
            ELSE 0 
        END ))
   AS C07G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C07H'
            THEN 1
            ELSE 0 
        END ))
   AS C07H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C07J'
            THEN 1
            ELSE 0 
        END ))
   AS C07J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C07K'
            THEN 1
            ELSE 0 
        END ))
   AS C07K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C08B'
            THEN 1
            ELSE 0 
        END ))
   AS C08B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C08C'
            THEN 1
            ELSE 0 
        END ))
   AS C08C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C08F'
            THEN 1
            ELSE 0 
        END ))
   AS C08F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C08G'
            THEN 1
            ELSE 0 
        END ))
   AS C08G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C08H'
            THEN 1
            ELSE 0 
        END ))
   AS C08H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C08J'
            THEN 1
            ELSE 0 
        END ))
   AS C08J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C08K'
            THEN 1
            ELSE 0 
        END ))
   AS C08K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C08L'
            THEN 1
            ELSE 0 
        END ))
   AS C08L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C09B'
            THEN 1
            ELSE 0 
        END ))
   AS C09B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C09C'
            THEN 1
            ELSE 0 
        END ))
   AS C09C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C09D'
            THEN 1
            ELSE 0 
        END ))
   AS C09D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C09F'
            THEN 1
            ELSE 0 
        END ))
   AS C09F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C09G'
            THEN 1
            ELSE 0 
        END ))
   AS C09G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C09H'
            THEN 1
            ELSE 0 
        END ))
   AS C09H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C09J'
            THEN 1
            ELSE 0 
        END ))
   AS C09J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C09K'
            THEN 1
            ELSE 0 
        END ))
   AS C09K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C10B'
            THEN 1
            ELSE 0 
        END ))
   AS C10B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C10C'
            THEN 1
            ELSE 0 
        END ))
   AS C10C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C10F'
            THEN 1
            ELSE 0 
        END ))
   AS C10F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C10G'
            THEN 1
            ELSE 0 
        END ))
   AS C10G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C10H'
            THEN 1
            ELSE 0 
        END ))
   AS C10H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C10J'
            THEN 1
            ELSE 0 
        END ))
   AS C10J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C10K'
            THEN 1
            ELSE 0 
        END ))
   AS C10K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C10L'
            THEN 1
            ELSE 0 
        END ))
   AS C10L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C10M'
            THEN 1
            ELSE 0 
        END ))
   AS C10M,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C10N'
            THEN 1
            ELSE 0 
        END ))
   AS C10N,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C11B'
            THEN 1
            ELSE 0 
        END ))
   AS C11B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C11C'
            THEN 1
            ELSE 0 
        END ))
   AS C11C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C11D'
            THEN 1
            ELSE 0 
        END ))
   AS C11D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12C'
            THEN 1
            ELSE 0 
        END ))
   AS C12C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12F'
            THEN 1
            ELSE 0 
        END ))
   AS C12F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12G'
            THEN 1
            ELSE 0 
        END ))
   AS C12G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12H'
            THEN 1
            ELSE 0 
        END ))
   AS C12H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12J'
            THEN 1
            ELSE 0 
        END ))
   AS C12J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12L'
            THEN 1
            ELSE 0 
        END ))
   AS C12L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12M'
            THEN 1
            ELSE 0 
        END ))
   AS C12M,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12N'
            THEN 1
            ELSE 0 
        END ))
   AS C12N,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12P'
            THEN 1
            ELSE 0 
        END ))
   AS C12P,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12Q'
            THEN 1
            ELSE 0 
        END ))
   AS C12Q,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12R'
            THEN 1
            ELSE 0 
        END ))
   AS C12R,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C12S'
            THEN 1
            ELSE 0 
        END ))
   AS C12S,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C13B'
            THEN 1
            ELSE 0 
        END ))
   AS C13B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C13C'
            THEN 1
            ELSE 0 
        END ))
   AS C13C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C13D'
            THEN 1
            ELSE 0 
        END ))
   AS C13D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C13F'
            THEN 1
            ELSE 0 
        END ))
   AS C13F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C13G'
            THEN 1
            ELSE 0 
        END ))
   AS C13G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C13K'
            THEN 1
            ELSE 0 
        END ))
   AS C13K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C14B'
            THEN 1
            ELSE 0 
        END ))
   AS C14B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C14C'
            THEN 1
            ELSE 0 
        END ))
   AS C14C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C21B'
            THEN 1
            ELSE 0 
        END ))
   AS C21B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C21C'
            THEN 1
            ELSE 0 
        END ))
   AS C21C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C21D'
            THEN 1
            ELSE 0 
        END ))
   AS C21D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C22B'
            THEN 1
            ELSE 0 
        END ))
   AS C22B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C22C'
            THEN 1
            ELSE 0 
        END ))
   AS C22C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C22F'
            THEN 1
            ELSE 0 
        END ))
   AS C22F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C23C'
            THEN 1
            ELSE 0 
        END ))
   AS C23C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C23D'
            THEN 1
            ELSE 0 
        END ))
   AS C23D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C23F'
            THEN 1
            ELSE 0 
        END ))
   AS C23F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C23G'
            THEN 1
            ELSE 0 
        END ))
   AS C23G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C25B'
            THEN 1
            ELSE 0 
        END ))
   AS C25B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C25C'
            THEN 1
            ELSE 0 
        END ))
   AS C25C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C25D'
            THEN 1
            ELSE 0 
        END ))
   AS C25D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C25F'
            THEN 1
            ELSE 0 
        END ))
   AS C25F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C30B'
            THEN 1
            ELSE 0 
        END ))
   AS C30B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C40B'
            THEN 1
            ELSE 0 
        END ))
   AS C40B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'C99Z'
            THEN 1
            ELSE 0 
        END ))
   AS C99Z,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D01B'
            THEN 1
            ELSE 0 
        END ))
   AS D01B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D01C'
            THEN 1
            ELSE 0 
        END ))
   AS D01C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D01D'
            THEN 1
            ELSE 0 
        END ))
   AS D01D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D01F'
            THEN 1
            ELSE 0 
        END ))
   AS D01F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D01G'
            THEN 1
            ELSE 0 
        END ))
   AS D01G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D01H'
            THEN 1
            ELSE 0 
        END ))
   AS D01H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D02G'
            THEN 1
            ELSE 0 
        END ))
   AS D02G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D02H'
            THEN 1
            ELSE 0 
        END ))
   AS D02H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D02J'
            THEN 1
            ELSE 0 
        END ))
   AS D02J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D03C'
            THEN 1
            ELSE 0 
        END ))
   AS D03C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D03D'
            THEN 1
            ELSE 0 
        END ))
   AS D03D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D03J'
            THEN 1
            ELSE 0 
        END ))
   AS D03J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D04B'
            THEN 1
            ELSE 0 
        END ))
   AS D04B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D04C'
            THEN 1
            ELSE 0 
        END ))
   AS D04C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D04D'
            THEN 1
            ELSE 0 
        END ))
   AS D04D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D04G'
            THEN 1
            ELSE 0 
        END ))
   AS D04G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D04H'
            THEN 1
            ELSE 0 
        END ))
   AS D04H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D05B'
            THEN 1
            ELSE 0 
        END ))
   AS D05B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D05C'
            THEN 1
            ELSE 0 
        END ))
   AS D05C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D06B'
            THEN 1
            ELSE 0 
        END ))
   AS D06B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D06C'
            THEN 1
            ELSE 0 
        END ))
   AS D06C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D06F'
            THEN 1
            ELSE 0 
        END ))
   AS D06F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D06G'
            THEN 1
            ELSE 0 
        END ))
   AS D06G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D06H'
            THEN 1
            ELSE 0 
        END ))
   AS D06H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D06J'
            THEN 1
            ELSE 0 
        END ))
   AS D06J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D06L'
            THEN 1
            ELSE 0 
        END ))
   AS D06L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D06M'
            THEN 1
            ELSE 0 
        END ))
   AS D06M,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D06N'
            THEN 1
            ELSE 0 
        END ))
   AS D06N,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D06P'
            THEN 1
            ELSE 0 
        END ))
   AS D06P,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D06Q'
            THEN 1
            ELSE 0 
        END ))
   AS D06Q,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D07B'
            THEN 1
            ELSE 0 
        END ))
   AS D07B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D21B'
            THEN 1
            ELSE 0 
        END ))
   AS D21B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D21C'
            THEN 1
            ELSE 0 
        END ))
   AS D21C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D21D'
            THEN 1
            ELSE 0 
        END ))
   AS D21D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D21F'
            THEN 1
            ELSE 0 
        END ))
   AS D21F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D21G'
            THEN 1
            ELSE 0 
        END ))
   AS D21G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D21H'
            THEN 1
            ELSE 0 
        END ))
   AS D21H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D21J'
            THEN 1
            ELSE 0 
        END ))
   AS D21J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'D99Z'
            THEN 1
            ELSE 0 
        END ))
   AS D99Z,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E01B'
            THEN 1
            ELSE 0 
        END ))
   AS E01B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E01C'
            THEN 1
            ELSE 0 
        END ))
   AS E01C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E01D'
            THEN 1
            ELSE 0 
        END ))
   AS E01D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E01F'
            THEN 1
            ELSE 0 
        END ))
   AS E01F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E01H'
            THEN 1
            ELSE 0 
        END ))
   AS E01H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E02B'
            THEN 1
            ELSE 0 
        END ))
   AS E02B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E02C'
            THEN 1
            ELSE 0 
        END ))
   AS E02C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E02D'
            THEN 1
            ELSE 0 
        END ))
   AS E02D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E02F'
            THEN 1
            ELSE 0 
        END ))
   AS E02F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E03B'
            THEN 1
            ELSE 0 
        END ))
   AS E03B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E03C'
            THEN 1
            ELSE 0 
        END ))
   AS E03C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E03D'
            THEN 1
            ELSE 0 
        END ))
   AS E03D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E03F'
            THEN 1
            ELSE 0 
        END ))
   AS E03F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E04B'
            THEN 1
            ELSE 0 
        END ))
   AS E04B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E04C'
            THEN 1
            ELSE 0 
        END ))
   AS E04C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E04D'
            THEN 1
            ELSE 0 
        END ))
   AS E04D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E04F'
            THEN 1
            ELSE 0 
        END ))
   AS E04F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E04G'
            THEN 1
            ELSE 0 
        END ))
   AS E04G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E04H'
            THEN 1
            ELSE 0 
        END ))
   AS E04H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E05B'
            THEN 1
            ELSE 0 
        END ))
   AS E05B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E05C'
            THEN 1
            ELSE 0 
        END ))
   AS E05C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E05D'
            THEN 1
            ELSE 0 
        END ))
   AS E05D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E05F'
            THEN 1
            ELSE 0 
        END ))
   AS E05F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E05G'
            THEN 1
            ELSE 0 
        END ))
   AS E05G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E06B'
            THEN 1
            ELSE 0 
        END ))
   AS E06B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E06C'
            THEN 1
            ELSE 0 
        END ))
   AS E06C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E21B'
            THEN 1
            ELSE 0 
        END ))
   AS E21B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E21C'
            THEN 1
            ELSE 0 
        END ))
   AS E21C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E21D'
            THEN 1
            ELSE 0 
        END ))
   AS E21D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E21F'
            THEN 1
            ELSE 0 
        END ))
   AS E21F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'E99Z'
            THEN 1
            ELSE 0 
        END ))
   AS E99Z,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F01B'
            THEN 1
            ELSE 0 
        END ))
   AS F01B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F01C'
            THEN 1
            ELSE 0 
        END ))
   AS F01C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F01D'
            THEN 1
            ELSE 0 
        END ))
   AS F01D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F01K'
            THEN 1
            ELSE 0 
        END ))
   AS F01K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F01L'
            THEN 1
            ELSE 0 
        END ))
   AS F01L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F01M'
            THEN 1
            ELSE 0 
        END ))
   AS F01M,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F01N'
            THEN 1
            ELSE 0 
        END ))
   AS F01N,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F01P'
            THEN 1
            ELSE 0 
        END ))
   AS F01P,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F02B'
            THEN 1
            ELSE 0 
        END ))
   AS F02B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F02C'
            THEN 1
            ELSE 0 
        END ))
   AS F02C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F02D'
            THEN 1
            ELSE 0 
        END ))
   AS F02D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F02F'
            THEN 1
            ELSE 0 
        END ))
   AS F02F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F02G'
            THEN 1
            ELSE 0 
        END ))
   AS F02G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F02K'
            THEN 1
            ELSE 0 
        END ))
   AS F02K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F02M'
            THEN 1
            ELSE 0 
        END ))
   AS F02M,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F02N'
            THEN 1
            ELSE 0 
        END ))
   AS F02N,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F02P'
            THEN 1
            ELSE 0 
        END ))
   AS F02P,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F03B'
            THEN 1
            ELSE 0 
        END ))
   AS F03B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F03C'
            THEN 1
            ELSE 0 
        END ))
   AS F03C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F03D'
            THEN 1
            ELSE 0 
        END ))
   AS F03D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F03G'
            THEN 1
            ELSE 0 
        END ))
   AS F03G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F03H'
            THEN 1
            ELSE 0 
        END ))
   AS F03H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F04B'
            THEN 1
            ELSE 0 
        END ))
   AS F04B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F04C'
            THEN 1
            ELSE 0 
        END ))
   AS F04C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F04D'
            THEN 1
            ELSE 0 
        END ))
   AS F04D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F04F'
            THEN 1
            ELSE 0 
        END ))
   AS F04F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F15B'
            THEN 1
            ELSE 0 
        END ))
   AS F15B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F15C'
            THEN 1
            ELSE 0 
        END ))
   AS F15C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F15D'
            THEN 1
            ELSE 0 
        END ))
   AS F15D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16B'
            THEN 1
            ELSE 0 
        END ))
   AS F16B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16C'
            THEN 1
            ELSE 0 
        END ))
   AS F16C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16D'
            THEN 1
            ELSE 0 
        END ))
   AS F16D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16F'
            THEN 1
            ELSE 0 
        END ))
   AS F16F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16G'
            THEN 1
            ELSE 0 
        END ))
   AS F16G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16H'
            THEN 1
            ELSE 0 
        END ))
   AS F16H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16J'
            THEN 1
            ELSE 0 
        END ))
   AS F16J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16K'
            THEN 1
            ELSE 0 
        END ))
   AS F16K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16L'
            THEN 1
            ELSE 0 
        END ))
   AS F16L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16M'
            THEN 1
            ELSE 0 
        END ))
   AS F16M,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16N'
            THEN 1
            ELSE 0 
        END ))
   AS F16N,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16P'
            THEN 1
            ELSE 0 
        END ))
   AS F16P,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16S'
            THEN 1
            ELSE 0 
        END ))
   AS F16S,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F16T'
            THEN 1
            ELSE 0 
        END ))
   AS F16T,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F17B'
            THEN 1
            ELSE 0 
        END ))
   AS F17B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F17C'
            THEN 1
            ELSE 0 
        END ))
   AS F17C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F17D'
            THEN 1
            ELSE 0 
        END ))
   AS F17D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F21H'
            THEN 1
            ELSE 0 
        END ))
   AS F21H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F21K'
            THEN 1
            ELSE 0 
        END ))
   AS F21K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F21L'
            THEN 1
            ELSE 0 
        END ))
   AS F21L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F21S'
            THEN 1
            ELSE 0 
        END ))
   AS F21S,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F21V'
            THEN 1
            ELSE 0 
        END ))
   AS F21V,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F21W'
            THEN 1
            ELSE 0 
        END ))
   AS F21W,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F21Y'
            THEN 1
            ELSE 0 
        END ))
   AS F21Y,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F22B'
            THEN 1
            ELSE 0 
        END ))
   AS F22B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F22D'
            THEN 1
            ELSE 0 
        END ))
   AS F22D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F22G'
            THEN 1
            ELSE 0 
        END ))
   AS F22G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23B'
            THEN 1
            ELSE 0 
        END ))
   AS F23B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23C'
            THEN 1
            ELSE 0 
        END ))
   AS F23C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23D'
            THEN 1
            ELSE 0 
        END ))
   AS F23D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23G'
            THEN 1
            ELSE 0 
        END ))
   AS F23G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23H'
            THEN 1
            ELSE 0 
        END ))
   AS F23H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23J'
            THEN 1
            ELSE 0 
        END ))
   AS F23J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23K'
            THEN 1
            ELSE 0 
        END ))
   AS F23K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23L'
            THEN 1
            ELSE 0 
        END ))
   AS F23L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23M'
            THEN 1
            ELSE 0 
        END ))
   AS F23M,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23N'
            THEN 1
            ELSE 0 
        END ))
   AS F23N,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23Q'
            THEN 1
            ELSE 0 
        END ))
   AS F23Q,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F23R'
            THEN 1
            ELSE 0 
        END ))
   AS F23R,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F24B'
            THEN 1
            ELSE 0 
        END ))
   AS F24B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F24C'
            THEN 1
            ELSE 0 
        END ))
   AS F24C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F24D'
            THEN 1
            ELSE 0 
        END ))
   AS F24D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F24F'
            THEN 1
            ELSE 0 
        END ))
   AS F24F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F24H'
            THEN 1
            ELSE 0 
        END ))
   AS F24H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F24J'
            THEN 1
            ELSE 0 
        END ))
   AS F24J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F25B'
            THEN 1
            ELSE 0 
        END ))
   AS F25B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F25C'
            THEN 1
            ELSE 0 
        END ))
   AS F25C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F25D'
            THEN 1
            ELSE 0 
        END ))
   AS F25D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F25J'
            THEN 1
            ELSE 0 
        END ))
   AS F25J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F26B'
            THEN 1
            ELSE 0 
        END ))
   AS F26B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F27B'
            THEN 1
            ELSE 0 
        END ))
   AS F27B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F27D'
            THEN 1
            ELSE 0 
        END ))
   AS F27D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F28B'
            THEN 1
            ELSE 0 
        END ))
   AS F28B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F28C'
            THEN 1
            ELSE 0 
        END ))
   AS F28C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F28D'
            THEN 1
            ELSE 0 
        END ))
   AS F28D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F28F'
            THEN 1
            ELSE 0 
        END ))
   AS F28F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F28G'
            THEN 1
            ELSE 0 
        END ))
   AS F28G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F41A'
            THEN 1
            ELSE 0 
        END ))
   AS F41A,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F41B'
            THEN 1
            ELSE 0 
        END ))
   AS F41B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F41C'
            THEN 1
            ELSE 0 
        END ))
   AS F41C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F41F'
            THEN 1
            ELSE 0 
        END ))
   AS F41F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F41G'
            THEN 1
            ELSE 0 
        END ))
   AS F41G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F41H'
            THEN 1
            ELSE 0 
        END ))
   AS F41H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F41J'
            THEN 1
            ELSE 0 
        END ))
   AS F41J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F42B'
            THEN 1
            ELSE 0 
        END ))
   AS F42B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F42C'
            THEN 1
            ELSE 0 
        END ))
   AS F42C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F42D'
            THEN 1
            ELSE 0 
        END ))
   AS F42D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'F99Z'
            THEN 1
            ELSE 0 
        END ))
   AS F99Z,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01B'
            THEN 1
            ELSE 0 
        END ))
   AS G01B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01C'
            THEN 1
            ELSE 0 
        END ))
   AS G01C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01D'
            THEN 1
            ELSE 0 
        END ))
   AS G01D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01F'
            THEN 1
            ELSE 0 
        END ))
   AS G01F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01G'
            THEN 1
            ELSE 0 
        END ))
   AS G01G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01H'
            THEN 1
            ELSE 0 
        END ))
   AS G01H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01J'
            THEN 1
            ELSE 0 
        END ))
   AS G01J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01K'
            THEN 1
            ELSE 0 
        END ))
   AS G01K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01L'
            THEN 1
            ELSE 0 
        END ))
   AS G01L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01M'
            THEN 1
            ELSE 0 
        END ))
   AS G01M,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01N'
            THEN 1
            ELSE 0 
        END ))
   AS G01N,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01P'
            THEN 1
            ELSE 0 
        END ))
   AS G01P,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01Q'
            THEN 1
            ELSE 0 
        END ))
   AS G01Q,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01R'
            THEN 1
            ELSE 0 
        END ))
   AS G01R,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01S'
            THEN 1
            ELSE 0 
        END ))
   AS G01S,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01T'
            THEN 1
            ELSE 0 
        END ))
   AS G01T,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01V'
            THEN 1
            ELSE 0 
        END ))
   AS G01V,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G01W'
            THEN 1
            ELSE 0 
        END ))
   AS G01W,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G02B'
            THEN 1
            ELSE 0 
        END ))
   AS G02B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G02C'
            THEN 1
            ELSE 0 
        END ))
   AS G02C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G02F'
            THEN 1
            ELSE 0 
        END ))
   AS G02F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G03B'
            THEN 1
            ELSE 0 
        END ))
   AS G03B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G03C'
            THEN 1
            ELSE 0 
        END ))
   AS G03C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G03D'
            THEN 1
            ELSE 0 
        END ))
   AS G03D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G03F'
            THEN 1
            ELSE 0 
        END ))
   AS G03F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G03G'
            THEN 1
            ELSE 0 
        END ))
   AS G03G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G03H'
            THEN 1
            ELSE 0 
        END ))
   AS G03H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G04B'
            THEN 1
            ELSE 0 
        END ))
   AS G04B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G04C'
            THEN 1
            ELSE 0 
        END ))
   AS G04C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G04D'
            THEN 1
            ELSE 0 
        END ))
   AS G04D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G04F'
            THEN 1
            ELSE 0 
        END ))
   AS G04F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G04G'
            THEN 1
            ELSE 0 
        END ))
   AS G04G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G04R'
            THEN 1
            ELSE 0 
        END ))
   AS G04R,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G05B'
            THEN 1
            ELSE 0 
        END ))
   AS G05B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G05D'
            THEN 1
            ELSE 0 
        END ))
   AS G05D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G05F'
            THEN 1
            ELSE 0 
        END ))
   AS G05F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G05G'
            THEN 1
            ELSE 0 
        END ))
   AS G05G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G06C'
            THEN 1
            ELSE 0 
        END ))
   AS G06C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G06D'
            THEN 1
            ELSE 0 
        END ))
   AS G06D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G06E'
            THEN 1
            ELSE 0 
        END ))
   AS G06E,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G06F'
            THEN 1
            ELSE 0 
        END ))
   AS G06F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G06G'
            THEN 1
            ELSE 0 
        END ))
   AS G06G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G06J'
            THEN 1
            ELSE 0 
        END ))
   AS G06J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G06K'
            THEN 1
            ELSE 0 
        END ))
   AS G06K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G06M'
            THEN 1
            ELSE 0 
        END ))
   AS G06M,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G06N'
            THEN 1
            ELSE 0 
        END ))
   AS G06N,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G06Q'
            THEN 1
            ELSE 0 
        END ))
   AS G06Q,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G06T'
            THEN 1
            ELSE 0 
        END ))
   AS G06T,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G07B'
            THEN 1
            ELSE 0 
        END ))
   AS G07B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G07C'
            THEN 1
            ELSE 0 
        END ))
   AS G07C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G07D'
            THEN 1
            ELSE 0 
        END ))
   AS G07D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G07F'
            THEN 1
            ELSE 0 
        END ))
   AS G07F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G07G'
            THEN 1
            ELSE 0 
        END ))
   AS G07G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G08B'
            THEN 1
            ELSE 0 
        END ))
   AS G08B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G08C'
            THEN 1
            ELSE 0 
        END ))
   AS G08C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G08G'
            THEN 1
            ELSE 0 
        END ))
   AS G08G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G09B'
            THEN 1
            ELSE 0 
        END ))
   AS G09B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G09C'
            THEN 1
            ELSE 0 
        END ))
   AS G09C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G09D'
            THEN 1
            ELSE 0 
        END ))
   AS G09D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G09F'
            THEN 1
            ELSE 0 
        END ))
   AS G09F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G09G'
            THEN 1
            ELSE 0 
        END ))
   AS G09G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G10B'
            THEN 1
            ELSE 0 
        END ))
   AS G10B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G10C'
            THEN 1
            ELSE 0 
        END ))
   AS G10C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G10D'
            THEN 1
            ELSE 0 
        END ))
   AS G10D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G10F'
            THEN 1
            ELSE 0 
        END ))
   AS G10F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G10G'
            THEN 1
            ELSE 0 
        END ))
   AS G10G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G10H'
            THEN 1
            ELSE 0 
        END ))
   AS G10H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G10K'
            THEN 1
            ELSE 0 
        END ))
   AS G10K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G10L'
            THEN 1
            ELSE 0 
        END ))
   AS G10L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G11B'
            THEN 1
            ELSE 0 
        END ))
   AS G11B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G11C'
            THEN 1
            ELSE 0 
        END ))
   AS G11C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G12B'
            THEN 1
            ELSE 0 
        END ))
   AS G12B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G21B'
            THEN 1
            ELSE 0 
        END ))
   AS G21B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G21C'
            THEN 1
            ELSE 0 
        END ))
   AS G21C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G21D'
            THEN 1
            ELSE 0 
        END ))
   AS G21D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G21F'
            THEN 1
            ELSE 0 
        END ))
   AS G21F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G21G'
            THEN 1
            ELSE 0 
        END ))
   AS G21G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G21H'
            THEN 1
            ELSE 0 
        END ))
   AS G21H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G21J'
            THEN 1
            ELSE 0 
        END ))
   AS G21J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G21K'
            THEN 1
            ELSE 0 
        END ))
   AS G21K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'G99Z'
            THEN 1
            ELSE 0 
        END ))
   AS G99Z,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01B'
            THEN 1
            ELSE 0 
        END ))
   AS H01B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01C'
            THEN 1
            ELSE 0 
        END ))
   AS H01C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01F'
            THEN 1
            ELSE 0 
        END ))
   AS H01F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01G'
            THEN 1
            ELSE 0 
        END ))
   AS H01G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01H'
            THEN 1
            ELSE 0 
        END ))
   AS H01H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01J'
            THEN 1
            ELSE 0 
        END ))
   AS H01J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01K'
            THEN 1
            ELSE 0 
        END ))
   AS H01K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01L'
            THEN 1
            ELSE 0 
        END ))
   AS H01L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01M'
            THEN 1
            ELSE 0 
        END ))
   AS H01M,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01P'
            THEN 1
            ELSE 0 
        END ))
   AS H01P,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01Q'
            THEN 1
            ELSE 0 
        END ))
   AS H01Q,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01R'
            THEN 1
            ELSE 0 
        END ))
   AS H01R,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01S'
            THEN 1
            ELSE 0 
        END ))
   AS H01S,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H01T'
            THEN 1
            ELSE 0 
        END ))
   AS H01T,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H02B'
            THEN 1
            ELSE 0 
        END ))
   AS H02B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H02G'
            THEN 1
            ELSE 0 
        END ))
   AS H02G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H02H'
            THEN 1
            ELSE 0 
        END ))
   AS H02H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H02J'
            THEN 1
            ELSE 0 
        END ))
   AS H02J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H02K'
            THEN 1
            ELSE 0 
        END ))
   AS H02K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H02M'
            THEN 1
            ELSE 0 
        END ))
   AS H02M,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H02N'
            THEN 1
            ELSE 0 
        END ))
   AS H02N,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H02P'
            THEN 1
            ELSE 0 
        END ))
   AS H02P,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H03B'
            THEN 1
            ELSE 0 
        END ))
   AS H03B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H03C'
            THEN 1
            ELSE 0 
        END ))
   AS H03C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H03D'
            THEN 1
            ELSE 0 
        END ))
   AS H03D,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H03F'
            THEN 1
            ELSE 0 
        END ))
   AS H03F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H03G'
            THEN 1
            ELSE 0 
        END ))
   AS H03G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H03H'
            THEN 1
            ELSE 0 
        END ))
   AS H03H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H03J'
            THEN 1
            ELSE 0 
        END ))
   AS H03J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H03K'
            THEN 1
            ELSE 0 
        END ))
   AS H03K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H03L'
            THEN 1
            ELSE 0 
        END ))
   AS H03L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H03M'
            THEN 1
            ELSE 0 
        END ))
   AS H03M,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H04B'
            THEN 1
            ELSE 0 
        END ))
   AS H04B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H04H'
            THEN 1
            ELSE 0 
        END ))
   AS H04H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H04J'
            THEN 1
            ELSE 0 
        END ))
   AS H04J,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H04K'
            THEN 1
            ELSE 0 
        END ))
   AS H04K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H04L'
            THEN 1
            ELSE 0 
        END ))
   AS H04L,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H04M'
            THEN 1
            ELSE 0 
        END ))
   AS H04M,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H04N'
            THEN 1
            ELSE 0 
        END ))
   AS H04N,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H04Q'
            THEN 1
            ELSE 0 
        END ))
   AS H04Q,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H04R'
            THEN 1
            ELSE 0 
        END ))
   AS H04R,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H04S'
            THEN 1
            ELSE 0 
        END ))
   AS H04S,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H04W'
            THEN 1
            ELSE 0 
        END ))
   AS H04W,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H05B'
            THEN 1
            ELSE 0 
        END )) 
   AS H05B,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H05C'
            THEN 1
            ELSE 0 
        END ))
   AS H05C,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H05F'
            THEN 1
            ELSE 0 
        END ))
   AS H05F,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H05G'
            THEN 1
            ELSE 0 
        END ))
   AS H05G,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H05H'
            THEN 1
            ELSE 0 
        END ))
   AS H05H,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H05K'
            THEN 1
            ELSE 0 
        END ))
   AS H05K,
MAX((CASE 
            WHEN left(ipc_class_symbol,4) = 'H99Z'
            THEN 1
            ELSE 0 
        END ))
   AS H99Z
   
FROM tls209_appln_ipc
JOIN tls201_appln USING(appln_id) 
WHERE docdb_family_id IN (SELECT panel_docdb_family_id FROM PATSTAT.ubaFamilies)
GROUP BY docdb_family_id) g
GROUP BY docdb_family_id) AS updator USING (docdb_family_id)
SET patentIndicators.IPC4bitString = updator.IPC4bitString;
COMMIT;
