#!/bin/bash

#debug linesls -l
if [ -e data/img.zip ]
then
	echo -e "File data/img exists"
else
	echo -e "File  doesnt exists"
fi

#unzip data/img.zip
unzip data/img.zip -d data
#unzip data/img.zip -d /unzipped
#unzip data/s2.zip -d /tmp/unzipped

#$(ls -d /data/*.SAFE)
ls -d data/*.SAFE
ls -l data/*.SAFE
#ls -l data/sat_product
#ls -d data/sat_product

#grep -oP "(?<=<PRODUCT_URI>)[^<]+" data/sat_product/MTD_*.xml

#var="$(grep -oP "(?<=<PRODUCT_URI>)[^<]+" data/sat_product/MTD_*.xml)"
#echo "$var"

#mv data/sat_product data/$var


#python pheno.py  data/sat_product
python S2_Calc_one.py
