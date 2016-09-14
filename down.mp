outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;

beginfig(1);
draw (0,0)--(60,0)--(60,10)--(0,10)--cycle;
label(btex 0 etex, (5,5));
draw (10,0)--(10,10);
label(btex 1 etex, (15,5));
draw (20,0)--(20,10);
label(btex 3 etex, (25,5));
draw (30,0)--(30,10);
label(btex 2 etex, (35,5));
draw (40,0)--(40,10);
label(btex 3 etex, (45,5));
draw (50,0)--(50,10);
label(btex 1 etex, (55,5));
draw (0,10)--(0,20);
label.top(btex 0 etex, (15,10));
draw (30,10)--(30,20);
label.top(btex 1 etex, (45,10));
draw (60,10)--(60,20);
label.lft(btex triangle etex, (0,15));
label.lft(btex adj vertex etex, (0,5));
endfig;

end.

