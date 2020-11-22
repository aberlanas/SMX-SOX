#!/usr/bin/make -f

TEMPLATE_TEX_PD="rsrc/templates/pd-nologo-tpl.latex"
PANDOC_OPTIONS="-V fontsize=12pt -V mainfont="Ubuntu" --pdf-engine=xelatex"

PDF_PATH:=$(shell readlink -f PDFS)

clean:
	@echo " * Clean workspace "
	@echo " -- UD 01 "
	rm -f UD01-Introduccion-y-virtualizacion/*.pdf
	rm -f UD01-Introduccion-y-virtualizacion/*.tex

	@echo " -- UD 02 "
	rm -f UD02-PowerShell-y-Bash/*.pdf
	rm -f UD02-PowerShell-y-Bash/*.tex

	@echo " -- UD 03 "
	rm -f UD03-Usuarios-Grupos-Permisos/*.pdf
	rm -f UD03-Usuarios-Grupos-Permisos/*.tex

	@echo " -- UD 04 "
	rm -f UD04-Sistemas-de-Ficheros/*.pdf
	rm -f UD04-Sistemas-de-Ficheros/*.tex


files:
	@echo " [ Step : files ]"
	@echo " * Creating folder [ PDFS ]"
	@mkdir -p PDFS

prog-didactica: files
	@echo " [ Step : prog-didactica ]"
	@echo " * [ PDF ] : Programacion Didactica ..."
	@pandoc --template $(TEMPLATE_TEX_PD) $(PANDOC_OPTIONS) -o $(PDF_PATH)/ProgramacionDidactica_SOX.pdf ProgramacionDidactica/PD_*.md
	@pandoc -o $(PDF_PATH)/ProgramacionDidactica_SOX.odt ProgramacionDidactica/PD_*.md 
	@echo " * [ PDF Result ] : $(PDF_PATH)/ProgramacionDidactica_SOX.pdf"
	atril $(PDF_PATH)/ProgramacionDidactica_SOX.pdf
