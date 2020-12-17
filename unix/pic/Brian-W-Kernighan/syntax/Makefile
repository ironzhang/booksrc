# Makefile

PIC = pic
ROFF = groff
CONVERT = convert

all_pic = $(wildcard *.pic)
all_eps = $(all_pic:.pic=.eps)
all_png = $(all_pic:.pic=.png)

all: $(all_eps) $(all_png)

%.eps: %.pic
	$(ROFF) -Kutf8 -p $^ | ps2eps > $@

%.png: %.eps
	$(CONVERT) -density 600 $^ -resize 100% $@

clean:
	rm -rf $(all_eps) $(all_png)

