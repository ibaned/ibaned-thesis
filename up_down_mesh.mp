outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;

beginfig(1);
draw (0,0)--(60,0)--(60,60)--(0,60)--cycle;
draw (60,0)--(0,60);
label(btex 0 etex, (60,60)/3);
label(btex 1 etex, (60,60)*2/3);
fill fullcircle scaled 4 shifted (0,0);
label.llft(btex 0 etex, (0,0));
fill fullcircle scaled 4 shifted (60,0);
label.lrt(btex 1 etex, (60,0));
fill fullcircle scaled 4 shifted (60,60);
label.urt(btex 2 etex, (60,60));
fill fullcircle scaled 4 shifted (0,60);
label.ulft(btex 3 etex, (0,60));
endfig;

end.


