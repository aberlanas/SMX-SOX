#!/usr/bin/make -f

TEMPLATE_TEX_PD="rsrc/templates/pd-nologo-tpl.latex"


clean:
	@echo " * Clean workspace "

prog-didactica:
	@echo " * [ PDF ] : Programacion Didactica "
	@echo $(TEMPLATE_TEX_PD)
