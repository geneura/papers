#!/bin/sh

#Esto no funciona porque no están las versiones .png de las figuras y en el texto están metidas explícitamente las EPS. 
rm *.aux
rm *.bbl
rm *.blg
rm *.log
rm *~
rm *.dvi

latex gpbot-fitness.tex && latex gpbot-fitness.tex &&  latex gpbot-fitness.tex && bibtex gpbot-fitness && latex gpbot-fitness.tex && latex gpbot-fitness.tex && latex gpbot-fitness.tex && echo "-----------------------------" && dvips gpbot-fitness.dvi -o && ps2pdf gpbot-fitness.ps && echo " "
