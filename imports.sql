BEGIN;

COPY foodgroups             FROM 'FD_GROUP.psv' (DELIMITER '|');
COPY foods                  FROM 'FOOD_DES.psv' (DELIMITER '|');
COPY langual_desc           FROM 'LANGDESC.psv' (DELIMITER '|');
COPY langual_factor         FROM 'LANGUAL.psv'  (DELIMITER '|');
COPY nutrients_desc         FROM 'NUTR_DEF.psv' (DELIMITER '|');
COPY source_codes           FROM 'SRC_CD.psv'   (DELIMITER '|');
COPY data_derivation_codes  FROM 'DERIV_CD.psv' (DELIMITER '|');
COPY weights                FROM 'WEIGHT.psv'   (DELIMITER '|');
COPY footnotes              FROM 'FOOTNOTE.psv' (DELIMITER '|');
COPY data_sources           FROM 'DATA_SRC.psv' (DELIMITER '|');
COPY data_sources_link      FROM 'DATSRCLN.psv' (DELIMITER '|');
COPY nutrients              FROM 'NUT_DATA.psv' (DELIMITER '|');

COMMIT;
