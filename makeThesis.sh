##########
#
# Does the whole loop for compiling the thesis
#
# It only does one loop and it needs the aux file, generated after it runs, to do things correctly
#
#########

echo "makeThesis():  Making aux file."
pdflatex --draft thesis #draft will only produce the aux file
echo "makeThesis(): Creating Bibliography."
bibtex thesis
echo "makeThesis(): Remaking thesis, with only errors and warnings shown"
pdflatex thesis | grep -i 'warning\|error'