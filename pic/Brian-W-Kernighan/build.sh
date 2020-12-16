#!/bin/bash

pic p1.pic | groff | ps2eps > p1.eps
pic p1.pic | groff -Tpdf >p1.pdf
convert -density 600 p1.eps -resize 100% p1.png

