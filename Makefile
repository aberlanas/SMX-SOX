#!/usr/bin/make -f

#TEMPLATE_TEX_PD="rsrc/templates/pd-nologo-tpl.latex"
# Colors
BLUE= \e[1;34m
LIGHTBLUE= \e[94m
LIGHTGREEN= \e[92m
LIGHTYELLOW= \e[93m

RESET= \e[0m

# Templates 
TEMPLATE_TEX_PD="../rsrc/templates/eisvogel.tex"
PANDOC_OPTIONS="-V fontsize=12pt -V mainfont="Ubuntu" --pdf-engine=xelatex"
TEMPLATE_TEX_TASK="../rsrc/templates/eisvogel.tex"

# PDFS
PDF_PATH:=$(shell readlink -f PDFS)

# Units 
UNIT01_DIR:=$(shell readlink -f Unit01-Introduction-and-Virtualization/)
UD01_FILES := $(wildcard $(UNIT01_DIR)/*.md)

UNIT02_DIR:=$(shell readlink -f Unit02-Software-and-Updates)
UD02_FILES:=$(wildcard $(UNIT02_DIR)/*.md)

UNIT03_DIR:=$(shell readlink -f Unit03-FileSystems)
UD03_FILES:=$(wildcard $(UNIT03_DIR)/*.md)

# RULES

clean:
	@echo " [${BLUE} * Step : Clean ${RESET}] "
	@echo "${LIGHTBLUE} -- PDFS ${RESET}"
	rm -f PDFS/*.pdf
	rm -f PDFS/*.odt


files:
	@echo " [${BLUE} * Step : Files ${RESET}] "
	@echo "${LIGHTBLUE} * Creating folder [ PDFS ]${RESET}"
	mkdir -p PDFS

prog-didactica: files
	@echo " [ Step : prog-didactica ]"
	@echo " * [ PDF ] : Programacion Didactica ..."
	
	@cd ProgramacionDidactica/ && pandoc --template $(TEMPLATE_TEX_PD) $(PANDOC_OPTIONS) -o $(PDF_PATH)/ProgramacionDidactica_SOX.pdf ./PD_*.md

	@echo " * [ ODT ] : Programacion Didactica ..."
	@cd ProgramacionDidactica/ && pandoc -o $(PDF_PATH)/ProgramacionDidactica_SOX.odt ./PD_*.md 
	
	@echo " * [ PDF Result ] : $(PDF_PATH)/ProgramacionDidactica_SOX.pdf"
	atril $(PDF_PATH)/ProgramacionDidactica_SOX.pdf

unit-01: clean files

	@echo " [${BLUE} * Step : Compiling PDF ${RESET}] "
	@echo " [${LIGHTGREEN} UD 01 - Introduction and Virtualization ${RESET}] "

	@for f in $(UD01_FILES); do \
		#echo $$f ;\
    	echo " - ${LIGHTYELLOW} Working${RESET} with: `basename $$f`";\
		cd $(UNIT01_DIR) && pandoc $$f --template $(TEMPLATE_TEX_TASK) $(PANDOC_OPTIONS) --from markdown --listings -o $(PDF_PATH)/`basename $$f .md`.pdf ;\
    done

unit-02: clean files

	@echo " [${BLUE} * Step : Compiling PDF ${RESET}] "
	@echo " [${LIGHTGREEN} Unit 02 - Software and Updates ${RESET}] "

	@for f in $(UD02_FILES); do \
		#echo $$f ;\
    	echo " - ${LIGHTYELLOW} Working${RESET} with: `basename $$f`";\
		cd $(UNIT02_DIR) && pandoc $$f --template $(TEMPLATE_TEX_TASK) $(PANDOC_OPTIONS) --from markdown --listings -o $(PDF_PATH)/`basename $$f .md`.pdf ;\
    done	

unit-03: clean files

	@echo " [${BLUE} * Step : Compiling PDF ${RESET}] "
	@echo " [${LIGHTGREEN} Unit 03 - Software and Updates ${RESET}] "

	@for f in $(UD03_FILES); do \
		#echo $$f ;\
    	echo " - ${LIGHTYELLOW} Working${RESET} with: `basename $$f`";\
		cd $(UNIT03_DIR) && pandoc $$f --template $(TEMPLATE_TEX_TASK) $(PANDOC_OPTIONS) --from markdown --listings -o $(PDF_PATH)/`basename $$f .md`.pdf ;\
    done	
