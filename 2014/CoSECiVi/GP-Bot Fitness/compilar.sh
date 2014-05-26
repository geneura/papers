#!/bin/sh

#Esto no funciona porque no están las versiones .png de las figuras y en el texto están metidas explícitamente las EPS. 
rm *.aux
rm *.bbl
rm *.blg
rm *.log
rm *~
rm *.dvi

pdflatex gpbot-fitness.tex && pdflatex gpbot-fitness.tex &&  pdflatex gpbot-fitness.tex  && bibtex gpbot-fitness && pdflatex gpbot-fitness.tex && pdflatex gpbot-fitness.tex && pdflatex gpbot-fitness.tex && echo "-----------------------------"  && echo " "