# Makefile

PIC = pic
CONVERT = convert

all_pic = $(wildcard *.pic)
all_eps = $(all_pic:.pic=.eps)
all_png = $(all_pic:.pic=.png)

all: $(all_eps) $(all_png)

%.eps: %.pic
	$(PIC) $^ | groff | ps2eps > $@

%.png: %.eps
	$(CONVERT) -density 600 $^ -resize 100% $@

clean:
	rm -rf $(all_eps) $(all_png)

