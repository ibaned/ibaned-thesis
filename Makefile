MAIN_BASE = ibanez_thesis
MAIN = $(MAIN_BASE).tex
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

$(MAIN_BASE).pdf: $(SRCS)
	pdflatex $(MAIN)
	bibtex $(MAIN_BASE)
	pdflatex $(MAIN)
	pdflatex $(MAIN)
