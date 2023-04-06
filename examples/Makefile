.PHONY: default all clean

SOURCES := $(shell find . -name '*.typ')
TARGETS := $(SOURCES:%.typ=%.pdf)
TARGETS += $(SOURCES:%.typ=%-crop.pdf)

default: all

all: $(TARGETS)

%-crop.pdf: %.pdf
	pdfcrop $^

%.pdf: %.typ
	typst $^

clean:
	$(RM) $(TARGETS)
