MAIN_BASE = ibanez_thesis
MAIN = $(MAIN_BASE).tex

FIGS = \
full_rep.png \
one_level.png \
oo.png \
flex.png \
arraylist.png \
mixed.png \
indset_iters.png \
mpi_indset.png \
albany1.png \
albany2.png

BIBS = \
scorec-refs/scorec-refs.bib

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
title.tex \
$(FIGS) \
$(BIBS)

$(MAIN_BASE).pdf: $(SRCS)
	pdflatex $(MAIN)
	bibtex $(MAIN_BASE)
	pdflatex $(MAIN)
	pdflatex $(MAIN)

%.png : %.mp
	mpost $<
