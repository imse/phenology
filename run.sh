#!/bin/bash

less vlabparams.json

#debug linesls -l
if [ -e data/img.zip ]
then
	echo -e "File data/img exists"
  unzip data/img.zip -d unzipped
  #unzip data/img.zip -d /unzipped
  #unzip data/s2.zip -d /tmp/unzipped

  #$(ls -d /data/*.SAFE)
  ls -d unzipped/*.SAFE
  ls -l unzipped/*.SAFE
else
	echo -e "File  sat_product  exists"
  ls -l data/sat_product
  ls -d data/sat_product

  grep -oP "(?<=<PRODUCT_URI>)[^<]+" data/sat_product/MTD_*.xml

  var="$(grep -oP "(?<=<PRODUCT_URI>)[^<]+" data/sat_product/MTD_*.xml)"
  echo "$var"

	mv data/sat_product data/$var
	mv data/$var /unzipped

fi

#unzip data/img.zip
#python pheno.py  data/sat_product
#python S2_Calc_one.py
python S2_calc.py
