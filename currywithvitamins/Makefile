TYPST = typst
SRC = main.typ
OUT_FMT = svg

%.svg: $(SRC)
	$(TYPST) compile --format $(OUT_FMT) $< $*.svg

all: pages

pages: $(patsubst %,main-%.svg,$(shell seq 1 2))

main-%.svg: $(SRC)
	$(TYPST) compile --format $(OUT_FMT) $< main-{p}.svg
