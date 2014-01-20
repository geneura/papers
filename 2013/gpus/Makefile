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
BLG = $(TEX:.tex=.blg)
DVI = $(TEX:.tex=.dvi)
PDF = $(TEX:.tex=.pdf)

###############################################################################

all:	$(PDF)

auto:
	while true; do $(MAKE); sleep 1; done

clean:
	$(RM) $(BBL) $(BLG) $(DVI) $(PDF) *.aux *.log *~

#warning: clean
#	$(MAKE) | grep '^Warning--' | sort | uniq > /tmp/output.txt
#	while read i; do \
#		echo "$$i --> $$(grep -l -m 1 -n $${i/* /} $(BIB))"; \
#	done < /tmp/output.txt
#	$(RM) /tmp/output.txt

warning: $(BLG)
	while read i; do \
		[ "$${i:0:7}" = "Warning" ] && echo "$$i --> $$(grep -l -m 1 -n $${i/* /} $(BIB))"; \
	done < $<

###############################################################################

%.aux: %.tex
	latex $*

%.bib: %.tex
	latex $*

%.bbl %.blg: %.aux $(BIB)
	bibtex $*

%.dvi:	%.tex $(BIB) $(BST) $(CLS) $(EPS) $(STY)
	latex $*
	latex $*
	bibtex $*
	latex $*
	bibtex $*
	latex $*
	latex $*

%.pdf:	%.dvi
	dvipdf $<

###############################################################################

.PRECIOUS: $(BLG) $(DVI)

###############################################################################

.NOEXPORT:

###############################################################################

