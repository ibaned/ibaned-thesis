outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;

beginfig(1);
draw (0,0)--(70,70);
label.bot(btex $a_0$ etex scaled 0.8, (0,0));
draw (20,0)--(10,10);
label(btex $\bigotimes$ etex scaled 0.8, (10,10));
label.bot(btex $a_1$ etex scaled 0.8, (20,0));
draw (40,20)--(30,30);
label(btex $\bigotimes$ etex scaled 0.8, (30,30));
label.bot(btex $a_2$ etex scaled 0.8, (40,20));
draw (60,40)--(50,50);
label(btex $\bigotimes$ etex scaled 0.8, (50,50));
label.bot(btex $a_3$ etex scaled 0.8, (60,40));
draw (80,60)--(70,70);
label(btex $\bigotimes$ etex scaled 0.8, (70,70));
label.bot(btex $a_4$ etex scaled 0.8, (80,60));
label.top(btex result etex scaled 0.8, (70,75));
picture leftpic;
leftpic := currentpicture;
currentpicture := nullpicture;
draw (0,0)--(40,40);
label.bot(btex $a_0$ etex scaled 0.8, (0,0));
draw (20,0)--(10,10);
label(btex $\bigotimes$ etex scaled 0.8, (10,10));
label.bot(btex $a_1$ etex scaled 0.8, (20,0));
draw (40,0)--(50,10);
label(btex $\bigotimes$ etex scaled 0.8, (50,10));
label.bot(btex $a_2$ etex scaled 0.8, (40,0));
draw (60,0)--(30,30);
label.bot(btex $a_3$ etex scaled 0.8, (60,0));
draw (80,0)--(40,40);
label(btex $\bigotimes$ etex scaled 0.8, (40,40));
label.bot(btex $a_4$ etex scaled 0.8, (80,0));
label(btex $\bigotimes$ etex scaled 0.8, (30,30));
label.top(btex result etex scaled 0.8, (40,45));
picture rightpic;
rightpic := currentpicture;
currentpicture := nullpicture;
draw leftpic shifted (-50,0);
draw rightpic shifted (50,0);
endfig;

end.




