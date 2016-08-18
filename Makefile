MAIN_BASE = ibanez_thesis
MAIN = $(MAIN_BASE).tex
SRCS = \
$(MAIN) \
rpiabs.tex \
ack.tex \
rpiapp.tex \
rpibib.tex \
chap1.tex \
chap2.tex \
chap3.tex \
chap4.tex \
chap5.tex \
chap6.tex \
title.tex

$(MAIN_BASE).pdf: $(SRCS)
	pdflatex $(MAIN)
	bibtex $(MAIN_BASE)
	pdflatex $(MAIN)
	pdflatex $(MAIN)
