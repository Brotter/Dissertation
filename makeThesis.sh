##########
#
# Does the whole loop for compiling the thesis
#
# It only does one loop and it needs the aux file, generated after it runs, to do things correctly
#
#########

pdflatex --draft thesis #draft will only produce the aux file
bibtex thesis
pdflatex thesis