#!/bin/sh

rm *.aux
rm *.bbl
rm *.blg
rm *.log
rm *~
rm *.dvi

pdflatex gpbot-fitness.tex && pdflatex gpbot-fitness.tex &&  pdflatex gpbot-fitness.tex  && bibtex gpbot-fitness && pdflatex gpbot-fitness.tex && pdflatex gpbot-fitness.tex && pdflatex gpbot-fitness.tex && echo "-----------------------------"  && echo " "