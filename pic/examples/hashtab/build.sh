#!/bin/bash

pic hashtab.pic | groff -Tpdf >hashtab.pdf
pic hashtab.pic | groff | ps2eps > hashtab.eps
convert -density 600 hashtab.eps -resize 100% hashtab.png

