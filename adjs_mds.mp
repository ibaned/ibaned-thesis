outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;
input TEX;

beginfig(1);
for i=0 upto 1:
  pair c,d;
  c := (i*20 + 5, -((i+2)*20 + 5));
  drawarrow (c+(0,15))--(c+(0,5));
  drawarrow (c+(15,0))--(c+(5,0));
  d := ((i+2)*20 + 5, -(i*20 + 5));
  drawarrow (d+(0,-15))--(d+(0,-5));
  drawarrow (d+(-15,0))--(d+(-5,0));
endfor;
for i=0 upto 3:
  for j=(i+1) upto 3:
    draw unitsquare scaled 10 shifted (i*20, -(j*20 + 10));
    draw unitsquare scaled 10 shifted (j*20, -(i*20 + 10));
  endfor;
endfor;
for i=0 upto 2:
  fill unitsquare scaled 10 shifted (i*20, -((i+1)*20 + 10)) withcolor black;
  fill unitsquare scaled 10 shifted ((i+1)*20, -((i*20) + 10)) withcolor black;
endfor;

for i=0 upto 3:
  label(TEX("$" & decimal(i) & "$"), (i*20 + 5, 8));
  label(TEX("$" & decimal(i) & "$"), (-8, -(i*20 + 5)));
endfor;
drawarrow (20,-65)--(10,-65);
drawarrow (0,-30){dir 260}..(0,-60){dir 280};
drawarrow (50,-5)--(60,-5);
drawarrow (70,-40){dir 80}..(70,-10){dir 100};

label.lft(btex from etex, (-15,-25));
label.lft(btex dimension etex, (-15,-35));
label.top(btex to dimension etex, (30,15));

fill unitsquare scaled 10 shifted (100,10);
label.rt(btex permanent adjacency etex, (110,15));
draw unitsquare scaled 10 shifted (100,-10);
label.rt(btex computed adjacency etex, (110,-5));
draw unitsquare scaled 10 shifted (100,-30);
drawarrow (105,-40)--(105,-30);
drawarrow (90,-25)--(100,-25);
label.rt(btex unite etex, (120,-25));
draw unitsquare scaled 10 shifted (100,-70);
drawarrow (105,-50)--(105,-60);
drawarrow (120,-65)--(110,-65);
label.rt(btex intersect etex, (120,-65));
endfig;

end.


