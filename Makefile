#!/usr/bin/make -f

TEMPLATE_TEX_PD="rsrc/templates/pd-nologo-tpl.latex"
PANDOC_OPTIONS="-V fontsize=12pt -V mainfont="Ubuntu" --pdf-engine=xelatex"

PDF_PATH:=$(shell readlink -f PDFS)

clean:
	@echo " * Clean workspace "

prog-didactica:
	@echo " * [ PDF ] : Programacion Didactica "
	pandoc --template $(TEMPLATE_TEX_PD) $(PANDOC_OPTIONS) -o $(PDF_PATH)/ProgramacionDidactica_SOX.pdf ProgramacionDidactica/PD_*.md 

