#!/bin/sh

rm *.aux
rm *.bbl
rm *.blg
rm *.log
rm *~
rm *.dvi

latex gpbot-fitness.tex && latex gpbot-fitness.tex &&  latex gpbot-fitness.tex  && bibtex gpbot-fitness && latex gpbot-fitness.tex && latex gpbot-fitness.tex && latex gpbot-fitness.tex && echo "-----------------------------" && dvips gpbot-fitness.dvi -o && ps2pdf gpbot-fitness.ps && echo " "