.PHONY: default all clean examples

TARGETS := presentation.pdf

default: all

all: $(TARGETS)

%.pdf: %.typ examples
	typst $<

examples:
	$(MAKE) -C examples

clean:
	$(RM) $(TARGETS)
	$(MAKE) -C examples clean
