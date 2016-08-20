outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;

beginfig(1);
path bar;
bar := (0,0)--(150,0)--(150,10)--(0,10)--cycle;
draw bar;
draw bar shifted (0,40);
draw bar shifted (0,80);
label.lft(btex edge first up etex, (0,5));
label.rt(btex $n_e$ etex, (150,5));
label.lft(btex triangle next up etex, (0,45));
label.rt(btex $3n_t$ etex, (150,45));
label.lft(btex quad next up etex, (0,85));
label.rt(btex $4n_q$ etex, (150,85));
draw (90,0)--(90,10);
label.lft(btex \dots etex, (90,5));
label.rt(btex q,10,2 etex, (90,5));
draw (120,0)--(120,10);
label.rt(btex \dots etex, (120,5));
draw (60,80)--(60,90);
label.lft(btex \dots etex, (60,85));
label.rt(btex t,4,0 etex, (60,85));
draw (90,80)--(90,90);
label.rt(btex \dots etex, (90,85));
draw (30,40)--(30,50);
label.lft(btex \dots etex, (30,45));
label.rt(btex null etex, (30,45));
draw (60,40)--(60,50);
label.rt(btex \dots etex, (60,45));
drawarrow (105,10){up}..(85,80){up};
drawarrow (65,80){down}..(45,50){down};
picture rightpicture;
rightpicture := currentpicture;
currentpicture := nullpicture;
draw (0,0)--(80,0)--(80,50)--(0,50)--cycle;
label.top(btex quad \#10 etex, (40,0));
draw (0,55)--(80,55) withpen pencircle scaled 3;
label.top(btex edge \#20 etex, (40,57));
draw (0,70)--(80,70)--(40,120)--cycle;
label.top(btex triangle \#4 etex, (40,70));
picture leftpicture;
leftpicture := currentpicture;
currentpicture := nullpicture;
draw leftpicture;
draw (90,-10)--(90,120) withpen pencircle scaled 2 dashed evenly;
draw rightpicture shifted (180,0);
endfig;

end.


