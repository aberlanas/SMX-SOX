#!/bin/bash

mkdir -p PDFS

makeUD06(){

    cd UD06-Usuarios-en-red
    for f in $(find . -name  "*.md"); do
        echo "Procesando : ${f}"
        DESTPDF=$(basename $f| cut -d "." -f1).pdf
        pandoc ${f} -o ../PDFS/${DESTPDF} --from markdown --template ../rsrc/templates/eisvogel.tex --listings

    done
    cd ..
}

makeExams(){

    cd Examenes
    for f in $(find . -name  "*.md"); do
        echo "Procesando : ${f}"
        DESTPDF=$(basename $f| cut -d "." -f1).pdf
        pandoc ${f} -o ../PDFS/${DESTPDF} --from markdown --template ../rsrc/templates/eisvogel.tex --listings

    done
    cd ..
}


makeUDXX(){

    cd UDXX-Recuperacion
    for f in $(find . -name  "*.md"); do
        echo "Procesando : ${f}"
        DESTPDF=$(basename $f| cut -d "." -f1).pdf
        pandoc ${f} -o ../PDFS/${DESTPDF} --from markdown --template ../rsrc/templates/eisvogel.tex --listings

    done
    cd ..
}


makeUDXZ(){

    cd UDXZ-Coaching
    for f in $(find . -name  "*.md"); do
        echo "Procesando : ${f}"
        DESTPDF=$(basename $f| cut -d "." -f1).pdf
        pandoc ${f} -o ../PDFS/${DESTPDF} --from markdown --template ../rsrc/templates/eisvogel.tex --listings

    done
    cd ..
}

#makeUD06
#makeExams
makeUDXX
#makeUDXZ

exit 0