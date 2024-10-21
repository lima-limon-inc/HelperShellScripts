COMMONNAME=${1}
OUTPUTNAME=${2}

cat ${COMMONNAME}* > .todo.md

# perl -Mutf8 -CSD -pe 's/(?[ \p{Emoji} - [\001 - \377] ])//g' .todo.md > limpio.md

xelatex caratula.tex

pandoc --pdf-engine=xelatex --toc .todo.md -o contenido.pdf

pdfunite caratula.pdf contenido.pdf ${OUTPUTNAME}.pdf

exit $?
