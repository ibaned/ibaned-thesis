outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;

beginfig(1);
for i=0 upto 6:
  pair a,b,c,d,e;
  a := (1,0) scaled 15 rotated (i*60);
  c := (2,0) scaled 15 rotated (i*60);
  b := a rotated -60;
  e := c rotated -60;
  d := (c+e)/2;
  fill a--b--e--c--cycle withcolor (white * 0.7);
  draw a--c--e--b--cycle;
  draw a--d--b;
  fill fullcircle scaled 3 shifted a withcolor white;
  draw fullcircle scaled 3 shifted a;
  fill fullcircle scaled 3 shifted b withcolor white;
  draw fullcircle scaled 3 shifted b;
  fill fullcircle scaled 3 shifted c withcolor black;
  fill fullcircle scaled 3 shifted d withcolor black;
  fill fullcircle scaled 3 shifted e withcolor black;
endfor;
picture common;
common := currentpicture;
currentpicture := nullpicture;
for i=0 upto 6:
  pair a,b;
  a := (1,0) scaled 15 rotated (i*60);
  b := a rotated -60;
  fill (0,0)--a--b--cycle withcolor white;
  draw a--(0,0)--b;
endfor;
path fullsquare;
fullsquare := unitsquare shifted (-1/2,-1/2);
fill fullsquare scaled 4 withcolor white;
draw fullsquare scaled 4;
draw common;
picture donor;
donor := currentpicture;
currentpicture := nullpicture;
for i=0 upto 6:
  pair a,b;
  a := (1,0) scaled 15 rotated (i*60);
  b := a rotated -60;
  fill (0,0)--a--b--cycle withcolor white;
endfor;
for i=2 upto 4:
  draw (15,0)--((15,0) rotated (i*60));
endfor;
draw common;
picture target;
target := currentpicture;
currentpicture := nullpicture;
draw donor shifted (-40,0);
draw target shifted (40,0);
label.bot(btex Donor mesh etex, (-40,-30));
label.bot(btex Target mesh etex, (40,-30));
draw fullcircle scaled 4 shifted (-80,-50);
label.rt(btex ${\cal N}_T \cap {\cal N}_D$ etex, (-75,-50));
fill fullcircle scaled 4 shifted (-80,-65) withcolor black;
label.rt(btex ${\cal N}_F$ etex, (-75,-65));
draw fullsquare scaled 4 shifted (-80,-80);
label.rt(btex ${\cal N}_D - {\cal N}_T$ etex, (-75,-80));
path tri;
tri := (1,0)--((1,0) rotated 120)--((1,0) rotated 240)--cycle;
draw tri scaled 6 shifted (10,-50);
label.rt(btex $E_{\rm int}$ etex, (15,-50));
fill tri scaled 6 shifted (10,-65) withcolor (white * 0.7);
draw tri scaled 6 shifted (10,-65);
label.rt(btex $E_{\rm buf}$ etex, (15,-65));
endfig;

end.


