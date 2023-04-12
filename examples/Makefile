.PHONY: default all clean

SOURCES := $(shell find . -regex '\./[0-9]+\.typ')
TARGETS := $(SOURCES:%.typ=%.svg)

default: all

all: $(TARGETS)

%.svg: %.pdf
	pdf2svg $^ $@

%.pdf: %_with_template.typ
	typst compile $^ $@

%_with_template.typ: template.typ %.typ
	cat $^ > $@

clean:
	$(RM) $(TARGETS)
