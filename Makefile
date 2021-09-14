#!/usr/bin/make -f

#TEMPLATE_TEX_PD="rsrc/templates/pd-nologo-tpl.latex"
TEMPLATE_TEX_PD="rsrc/templates/eisvogel.tex"
PANDOC_OPTIONS="-V fontsize=12pt -V mainfont="Ubuntu" --pdf-engine=xelatex"
TEMPLATE_TEX_TASK="../rsrc/templates/eisvogel.tex"

PDF_PATH:=$(shell readlink -f PDFS)

UNIT01_DIR:=$(shell readlink -f Unit01-Introduction-and-Virtualization/)
UD01_FILES := $(wildcard $(UNIT01_DIR)/*.md)

clean:
	@echo " * Clean workspace "
	@echo " -- PDFS "
	rm -f PDFS/*.pdf
	rm -f PDFS/*.odt


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

unit-01: clean files

	@echo " [ UD 01 - Introduction and Virtualization ] "

	@for f in $(UD01_FILES); do \
		#echo $$f ;\
    	echo " --> Working with:  `basename $$f`";\
		cd $(UNIT01_DIR) && pandoc $$f --template $(TEMPLATE_TEX_TASK) $(PANDOC_OPTIONS) --from markdown --listings -o $(PDF_PATH)/`basename $$f .md`.pdf ;\
    done
	
