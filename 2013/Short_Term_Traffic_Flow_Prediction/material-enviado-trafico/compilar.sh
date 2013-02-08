#!/bin/sh

rm *.bbl
rm *.aux
rm *.blg
rm *.log
rm *~
rm *.dvi

#latex paper.tex && latex paper.tex &&  latex paper.tex && bibtex paper && latex paper.tex && latex paper.tex && latex paper.tex && echo "-----------------------------" && dvips paper.dvi -o && echo " " && ps2pdf paper.ps

pdflatex paper.tex
pdflatex paper.tex
bibtex paper
pdflatex paper.tex
pdflatex paper.tex
pdflatex paper.tex


rm *.aux
rm *.blg
rm *.log
rm *~
rm *.dvi

