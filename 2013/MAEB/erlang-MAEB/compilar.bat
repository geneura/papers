#!/bin/sh

rm *.aux
rm *.bbl
rm *.blg
rm *.log
rm *~
rm *.dvi

latex erlang-ae-model.tex && latex erlang-ae-model.tex &&  latex erlang-ae-model.tex && bibtex erlang-ae-model && latex erlang-ae-model.tex && latex erlang-ae-model.tex && latex erlang-ae-model.tex && echo "-----------------------------" && dvips erlang-ae-model.dvi -o && ps2pdf erlang-ae-model.ps && echo " "
