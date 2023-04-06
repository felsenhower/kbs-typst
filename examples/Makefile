.PHONY: default all clean

SOURCES := $(shell find . -name '*.typ')
TARGETS := $(SOURCES:%.typ=%.svg)
TARGETS += $(SOURCES:%.typ=%-crop.svg)

default: all

all: $(TARGETS)

%.svg: %.pdf
	pdf2svg $^ $@

%-crop.pdf: %.pdf
	pdfcrop $^

%.pdf: %.typ
	typst $^

clean:
	$(RM) $(TARGETS)
