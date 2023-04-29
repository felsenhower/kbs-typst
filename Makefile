.PHONY: default all clean examples

TARGETS := presentation.pdf thumbnail.svg

default: all

all: $(TARGETS)

thumbnail.svg: presentation.pdf
	pdf2svg $^ $@ 1

%.pdf: %.typ examples
	typst compile $<

examples:
	$(MAKE) -C examples

clean:
	$(RM) $(TARGETS)
	$(MAKE) -C examples clean
