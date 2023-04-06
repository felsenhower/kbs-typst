.PHONY: default all clean

TARGETS := presentation.pdf

default: all

all: $(TARGETS)

%.pdf: %.typ
	typst $^

clean:
	$(RM) $(TARGETS)
