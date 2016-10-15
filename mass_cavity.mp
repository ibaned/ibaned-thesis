outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;

beginfig(1);
fill (0,0)--(30,0)--(30,30)--(0,60)--cycle withcolor white * 0.7;
draw (0,0)--(30,0)--(30,30)--(0,60)--cycle;
draw (0,0)--(30,30)--(0,30)--cycle withpen pencircle scaled 1.2;
label(btex $\Omega_a$ etex scaled 0.6, ((0,0)+(30,30)+(0,30))/3);
draw (0,0)--(30,30)--(0,30);
drawarrow (35,30)--(35,0);
label.rt(btex collapse etex scaled 0.6, (35,15));
label.bot(btex $\Omega_D$ etex scaled 0.6, (15,0));
picture donor;
donor := currentpicture;
currentpicture := nullpicture;
fill (0,0)--(30,0)--(0,60)--cycle withcolor white * 0.7;
draw (0,0)--(30,0)--(0,60)--cycle;
draw (30,0)--(0,60)--(0,30)--cycle withpen pencircle scaled 1.2;
label(btex $\Omega_b$ etex scaled 0.6, ((30,0)+(0,60)+(0,30))/3);
draw (0,30)--(30,0);
label.bot(btex $\Omega_T$ etex scaled 0.6, (15,0));
picture target;
target := currentpicture;
currentpicture := nullpicture;
fill (0,0)--(30,0)--(30,30)--(0,60)--cycle withcolor white * 0.7;
fill (0,0)--(30,0)--(0,60)--cycle withcolor white * 0.5;
draw (0,0)--(30,0)--(30,30)--(0,60)--cycle;
draw (0,0)--(30,30)--(0,30);
draw (0,0)--(30,0)--(0,60)--cycle;
draw (0,30)--(30,0);
pair ip;
ip := (((0,60)--(30,0)) intersectionpoint ((0,0)--(30,30)));
draw (15,15)--(ip)--(15,30)--(0,30)--cycle
withpen pencircle scaled 1.2;
draw (-10,30){dir 0}..(((15,15)+ip+(15,30)+(0,30))/4){dir 45};
label.lft(btex $\Omega_a \cap \Omega_b$ etex scaled 0.6, (-10,30));
label.bot(btex $\Omega_D \cup \Omega_T$ etex scaled 0.6, (15,0));
picture common;
common := currentpicture;
currentpicture := nullpicture;
draw donor shifted (-100,0);
draw target shifted (-20,0);
draw common shifted (50,0);
endfig;

end.



