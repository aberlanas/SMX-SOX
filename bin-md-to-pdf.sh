#!/bin/bash

mkdir -p PDFS

cd UD06-Usuarios-en-red
for f in $(find . -name  "*.md"); do
    echo "Procesando : ${f}"
    DESTPDF=$(basename $f| cut -d "." -f1).pdf
	pandoc ${f} -o ../PDFS/${DESTPDF} --from markdown --template ../rsrc/templates/eisvogel.tex --listings

done

exit 0