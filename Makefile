MAIN_BASE = ibanez_thesis
MAIN = $(MAIN_BASE).tex
SRCS = \
$(MAIN) \
rpiabs.tex \
ack.tex \
rpiapp.tex \
rpibib.tex \
chap1.tex \
chap2-fund.tex \
chap3-para.tex \
chap4-adapt.tex \
chap5-app.tex \
title.tex

$(MAIN_BASE).pdf: $(SRCS)
	pdflatex $(MAIN)
	bibtex $(MAIN_BASE)
	pdflatex $(MAIN)
	pdflatex $(MAIN)
