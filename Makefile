MAIN_BASE = ibanez_thesis
MAIN = $(MAIN_BASE).tex

FIGS = \
push_down.png \
exch.png \
remotes.png \
reduce.png \
mass_cavity.png \
buffer_cavity.png \
cavity_boundary.png \
surf_collapse.png \
circle_hole.png \
edge_ring.png \
swap.png \
collapse.png \
90deg_interp.png \
log_interp.png \
max_tet_deg.png \
max_tri_deg.png \
up_down_mesh.png \
up.png \
down.png \
adjs_osh.png \
adjs_mds.png \
full_rep.png \
one_level.png \
oo.png \
flex.png \
arraylist.png \
mixed.png \
indset_iters.png \
mpi_indset.png \
albany1.png \
albany2.png \
def_topo.png \
zoo.png \
solid_angle.png \
scale_7k.png \
scale_112k.png

BIBS = \
scorec-refs/scorec-refs.bib \
scorec-refs/IEEEtran_rpi.bst

SRCS = \
$(MAIN) \
title.tex \
abs.tex \
ack.tex \
rpibib.tex \
chap1.tex \
chap2.tex \
chap3.tex \
chap4.tex \
chap5.tex \
chap6.tex \
appendix.tex \
$(FIGS) \
$(BIBS)

$(MAIN_BASE).pdf: $(SRCS)
	pdflatex $(MAIN)
	bibtex -min-crossrefs=100 $(MAIN_BASE)
	pdflatex $(MAIN)
	pdflatex $(MAIN)

%.png : %.mp
	mpost $<
