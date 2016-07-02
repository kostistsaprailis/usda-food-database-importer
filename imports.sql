BEGIN;

COPY foodgroups             FROM './FD_GROUP.psv' DELIMITER as '|' NULL as '';
COPY foods                  FROM './FOOD_DES.psv' DELIMITER as '|' NULL as '';
COPY langual_desc           FROM './LANGDESC.psv' DELIMITER as '|' NULL as '';
COPY langual_factor         FROM './LANGUAL.psv'  DELIMITER as '|' NULL as '';
COPY nutrients_desc         FROM './NUTR_DEF.psv' DELIMITER as '|' NULL as '';
COPY source_codes           FROM './SRC_CD.psv'   DELIMITER as '|' NULL as '';
COPY data_derivation_codes  FROM './DERIV_CD.psv' DELIMITER as '|' NULL as '';
COPY weights                FROM './WEIGHT.psv'   DELIMITER as '|' NULL as '';
COPY footnotes              FROM './FOOTNOTE.psv' DELIMITER as '|' NULL as '';
COPY data_sources           FROM './DATA_SRC.psv' DELIMITER as '|' NULL as '';
COPY data_sources_link      FROM './DATSRCLN.psv' DELIMITER as '|' NULL as '';
COPY nutrients              FROM './NUT_DATA.psv' DELIMITER as '|' NULL as '';

COMMIT;
