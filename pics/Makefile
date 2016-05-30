.PHONY: default pics prev saw-it clean

SRC = $(notdir $(basename $(wildcard ./src/*.eps)))
SRC += $(notdir $(basename $(wildcard ./src/*.svg)))

PDF = $(addsuffix .pdf, $(SRC))
PREVIEW = $(addsuffix .lastviewed, $(SRC))

default: pics

%.pdf: ./src/%.eps
	cat $< | epstopdf --filter | pdfcrop - $@;

%.pdf: ./src/%.svg
	rsvg-convert -f pdf  $< | pdfcrop - $@;

pics: $(PDF)

%.lastviewed: %.pdf
	xdg-open $< 1>$@ 2>$@ &

prev: $(PREVIEW)

saw-it:
	touch $(PREVIEW)

clean:
	rm $(PDF)
