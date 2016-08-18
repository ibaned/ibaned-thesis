MAIN = rpithes.tex
MAIN_BASE = $(MAIN:.tex=)
SRCS = \
$(MAIN) \
rpiabs.tex \
rpiack.tex \
rpiapp.tex \
rpibib.tex \
rpichap1.tex \
rpichap2.tex \
rpichap2.tex \
rpititle-phd.tex

thesis.pdf: $(SRCS)
	pdflatex $(MAIN)
	bibtex $(MAIN_BASE)
	pdflatex $(MAIN)
	pdflatex $(MAIN)
