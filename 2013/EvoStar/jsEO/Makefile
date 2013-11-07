###############################################################################
# Makefile
###############################################################################

SRC = $(wildcard *.tex)
BN = $(basename $(SRC))

TEX = latex -file-line-error -interaction=nonstopmode
BIB = BIBINPUTS=../../../../biblio bibtex

###############################################################################

default: $(BN).dvi

all: $(BN).pdf

auto:
	while true; do nice $(MAKE); sleep 1; done

clean:
	$(RM) $(BN).{aux,bbl,blg,dvi,log,nav,out,pdf,ps,snm,toc} WARNINGS *~ .*~

###############################################################################

.PHONY: all auto clean

###############################################################################

%.dvi: %.tex
	$(TEX) $<
	while grep "Rerun to get cross-references right" $*.log; do $(TEX) $<; done
	$(BIB) $*
	$(TEX) $<

%.ps: %.dvi 
	dvips -Ppdf $*

%.pdf: %.ps
	ps2pdf $<

###############################################################################

.PRECIOUS: %.aux %.bbl %.bib %.blg %.dvi %.log

###############################################################################

