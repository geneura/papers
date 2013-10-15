###############################################################################
# Makefile
###############################################################################

BIB = $(wildcard *.bib)
BST = $(wildcard *.bst)
CLS = $(wildcard *.cls)
EPS = $(wildcard *.eps)
STY = $(wildcard *.sty)
TEX = $(wildcard *.tex)
BBL = $(TEX:.tex=.bbl)
DVI = $(TEX:.tex=.dvi)
PDF = $(TEX:.tex=.pdf)

###############################################################################

all:	$(PDF)

auto:
	while true; do $(MAKE); sleep 1; done

clean:
	$(RM) $(BBL) $(DVI) $(PDF) *.aux *.blg *.log *~

###############################################################################

%.dvi:	%.tex $(BIB) $(BST) $(CLS) $(EPS) $(STY)
	latex $*
	latex $*
	bibtex $*
	latex $*
	bibtex $*
	latex $*
	latex $*

%.pdf:	%.dvi
	dvipdf $*

###############################################################################

.NOEXPORT:

###############################################################################

