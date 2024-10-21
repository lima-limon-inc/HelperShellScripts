#!/bin/sh


# 1 is input file
# 2 is output file
pngify() {
    INPUT=$(1)
    OUTPUT=$(2)
    convert   -alpha remove -alpha off -quality 100 -density 150   -sharpen 0x1.0 -verbose $INPUT $OUTPUT
}

pngify $1 $2
