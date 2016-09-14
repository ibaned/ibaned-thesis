outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;

beginfig(1);
draw (0,0)--(60,0)--(60,10)--(0,10)--cycle;
draw (60,0)--(70,0)--(70,10)--(60,10) dashed evenly;
label(btex 0 etex, (5,5));
draw (10,0)--(10,10);
label(btex 0 etex, (15,5));
draw (20,0)--(20,10);
label(btex 1 etex, (25,5));
draw (30,0)--(30,10);
label(btex 1 etex, (35,5));
draw (40,0)--(40,10);
label(btex 0 etex, (45,5));
draw (50,0)--(50,10);
label(btex 1 etex, (55,5));
draw (0,-20)--(50,-20)--(50,-10)--(0,-10)--cycle;
label(btex 0 etex, (5,-25));
label(btex 0 etex, (5,-15));
draw (10,-20)--(10,-10);
label(btex 1 etex, (15,-25));
label(btex 1 etex, (15,-15));
draw (20,-20)--(20,-10);
label(btex 2 etex, (25,-25));
label(btex 3 etex, (25,-15));
draw (30,-20)--(30,-10);
label(btex 3 etex, (35,-25));
label(btex 4 etex, (35,-15));
draw (40,-20)--(40,-10);
label(btex 6 etex, (45,-15));
label.lft(btex adj triangle etex, (0,5));
label.lft(btex offset etex, (0,-15));
label.lft(btex vertex etex, (0,-25));
drawarrow ( 5,-10)--( 5,0);
drawarrow (15,-10)--(15,0);
drawarrow (25,-10)--(35,0);
drawarrow (35,-10)--(45,0);
drawarrow (45,-10){up}..(65,0){up};
endfig;

end.

