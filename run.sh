#!/bin/bash

#debug linesls -l

ls -l data/sat_product
ls -d data/sat_product


grep -oP "(?<=<PRODUCT_URI>)[^<]+" data/sat_product/MTD_*.xml

var="$(grep -oP "(?<=<PRODUCT_URI>)[^<]+" data/sat_product/MTD_*.xml)"
echo "$var"

mv data/sat_product data/$var


#python pheno.py  data/sat_product
python S2_Calc_one.py
