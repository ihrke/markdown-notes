MD_FILES=notes.md ## add more files here if needed
BIBLIOGRAPHY=references.bib
TEX_FILES:=$(MD_FILES:.md=.tex)
PDF_FILES:=$(MD_FILES:.md=.pdf)
TEMPLATE=templates/notes.latex
PANDOC=pandoc

all: $(PDF_FILES)


%.pdf: %.tex
	pdflatex $<

%.tex: %.md
	$(PANDOC) -f markdown+smart --filter pandoc-fignos --filter pandoc-citeproc --template $(TEMPLATE) $< -o $@ --bibliography ${BIBLIOGRAPHY}

.PHONY : clean
clean :
	-rm $(PDF_FILES) $(TEX_FILES) *.aux *.out *.log *.fdb_latexmk *.fls *.synctex.gz
