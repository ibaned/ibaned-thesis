outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;
input boxes

beginfig(1);
draw fullcircle scaled 3 shifted (0,0);
draw fullcircle scaled 3 shifted (40,40);
draw fullcircle scaled 3 shifted (0,80);
draw (4,4)--(36,36);
drawarrow (0,74)--(0,6);
draw (4,76)--(36,44) withpen pencircle scaled 2;
draw (4,10)--(32,40)--(4,70)--cycle withpen pencircle scaled 2;
label.rt(btex bold lines denote etex, (50,40));
label.rt(btex same classification etex, (50,30));
label.lft(btex collapsing$\to$ etex, (-4,80));
label.lft(btex along$\to$ etex, (-4,40));
label.lft(btex onto$\to$ etex, (-4,0));
endfig;

end.

