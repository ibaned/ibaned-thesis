outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;
input TEX;

beginfig(1);
for i=0 upto 1:
  pair c;
  c := (i*20 + 5, -((i+2)*20 + 5));
  drawarrow (c+(0,15))--(c+(0,5));
  drawarrow (c+(15,0))--(c+(5,0));
endfor;
for i=0 upto 3:
  label(TEX("$" & decimal(i) & "$"), (i*20 + 5, 8));
  label(TEX("$" & decimal(i) & "$"), (-8, -(i*20 + 5)));
  for j=(i+1) upto 3:
    draw unitsquare scaled 10 shifted (j*20, -(i*20 + 10));
    fill unitsquare scaled 10 shifted (j*20, -(i*20 + 10)) withcolor (white*0.7);
    draw unitsquare scaled 10 shifted (i*20, -(j*20 + 10));
    fill unitsquare scaled 10 shifted (i*20, -(j*20 + 10)) withcolor (white*0.7);
  endfor;
endfor;
for i=0 upto 2:
  fill unitsquare scaled 10 shifted (i*20, -((i+1)*20 + 10)) withcolor black;
endfor;
for i=0 upto 2:
  pair c;
  c := (i*20 + 5, -((i+1)*20 + 5));
  drawarrow (c+(5,5))--(c+(15,15)) dashed evenly;
endfor;
for i=0 upto 1:
  pair c;
  c := (i*20 + 5, -((i+2)*20 + 5));
  drawarrow (c+(5,5))--(c+(35,35)) dashed evenly;
endfor;
drawarrow (0,-30){dir 260}..(0,-60){dir 280};
drawarrow (20,-65)--(10,-65);
drawarrow (10,-60){dir 75}..(60,-10){dir 15} dashed evenly;
endfig;

end.


