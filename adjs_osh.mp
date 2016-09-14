outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;

beginfig(1);
path box;
box := (-30,-10)--(30,-10)--(30,10)--(-30,10)--cycle;
draw box;
label(btex regions etex, (0,0));
draw box shifted (0,-50);
label(btex faces etex, (0,-50));
draw box shifted (0,-100);
label(btex edges etex, (0,-100));
draw box shifted (0,-150);
label(btex vertices etex, (0,-150));
drawarrow ((0,0)+(-10,-10))--((0,-50)+(-10,10));
drawarrow ((0,-50)+(-10,-10))--((0,-100)+(-10,10));
drawarrow ((0,-100)+(-10,-10))--((0,-150)+(-10,10));
endfig;

end.


