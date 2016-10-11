outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;
input TEX;

beginfig(1);
fill (30,0)--(60,0)--(60,30)--(30,60)--(0,60)--(0,30)--cycle withcolor white * 0.6;
fill (30,30)--(60,30)--(30,60)--cycle withcolor white * 0.4;
draw (30,0)--(60,0)--(60,30)--(30,60)--(0,60)--(0,30)--cycle;
draw (30,0)--(30,60);
draw (0,60)--(60,0);
draw (0,30)--(60,30);
draw (30,30)--(45,45);
draw (30,60)--(30,30)--(60,30) withpen pencircle scaled 2;
fill unitsquare scaled 10 shifted (80,0) withcolor white * 0.6;
label.rt(btex surrounding mesh etex, (90,5));
fill unitsquare scaled 10 shifted (80,15) withcolor white * 0.4;
label.rt(btex cavity etex, (90,20));
drawarrow (80,40)--(60,30);
label.rt(btex cavity boundary etex, (80,40));
drawarrow (80,60)..{dir 220}(0.4[(30,60),(60,30)]);
label.rt(btex {\bf not} cavity boundary etex, (80,60));
endfig;

end.



