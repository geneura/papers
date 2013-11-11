###############################################################################
# Makefile
###############################################################################

SRC = $(wildcard *.tex)
BSN = $(basename $(SRC))

BIB = BIBINPUTS=../../../../biblio bibtex
TEX = pdflatex -file-line-error -interaction=nonstopmode

###############################################################################

all: $(BSN).pdf

auto:
	while true; do nice $(MAKE); sleep 1; done

clean:
	$(RM) $(BSN).{aux,bbl,bib,blg,dvi,log,nav,out,pdf,ps,snm,toc} WARNINGS *~

###############################################################################

.PHONY: all auto clean

###############################################################################

%.pdf : %.tex %.bbl %.blg
	$(TEX) $<

%.bbl %.blg : %.aux %.bib
	$(BIB) $*

%.aux : %.tex
	$(TEX) $<
	while grep "Rerun to get cross-references right" $*.log; do $(TEX) $<; done

%.bib : %.tex
	$(TEX) $<

###############################################################################

.PRECIOUS: %.aux %.bbl %.bib %.blg %.dvi %.log

###############################################################################

