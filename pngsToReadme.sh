#!/bin/sh

IMAGEDIR=${1}
PDFNAME=${2}
PDFNAME=${PDFNAME::-4}

sed -i "/!\[foto]($IMAGEDIR\/$PDFNAME-[[:digit:]]\+.png)/d" README.md

PNGAMOUNT=$(ls ${IMAGEDIR} | wc -l)

for ((i = 0; i < $PNGAMOUNT; i++)); do
    echo "![foto]($IMAGEDIR/$PDFNAME-"${i}".png)" >> README.md 
done
