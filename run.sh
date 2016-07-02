#!/bin/bash

# download the USDA nutritional data
wget https://www.ars.usda.gov/SP2UserFiles/Place/12354500/Data/SR/SR28/dnload/sr28asc.zip

# unzip package.zip
unzip sr28asc.zip

# Transform data to psv (pipe separated values)
python3 data-import.py -i FD_GROUP.txt
python3 data-import.py -i FOOD_DES.txt
python3 data-import.py -i LANGDESC.txt
python3 data-import.py -i LANGUAL.txt
python3 data-import.py -i NUTR_DEF.txt
python3 data-import.py -i SRC_CD.txt
python3 data-import.py -i DERIV_CD.txt
python3 data-import.py -i WEIGHT.txt
python3 data-import.py -i FOOTNOTE.txt
python3 data-import.py -i DATA_SRC.txt
python3 data-import.py -i DATSRCLN.txt
python3 data-import.py -i NUT_DATA.txt

#C reate the DB schema. Make sure the DB and name/role exist otherwise this will fail.
psql -f schema.sql

# Import the data
psql -f imports.sql

# Delete all downloaded files once we're finished
#ls *.psv *.txt *.pdf *.zip | xargs rm
