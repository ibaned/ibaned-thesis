outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;

beginfig(1);
picture foil_topo,tri_topo;
pair h,l,u,r;
h := (0,30);
l := (60,0);
u := (0,3);
r := (3,0);
draw fullcircle scaled 2;
draw fullcircle scaled 2 shifted l;
draw fullcircle scaled 2 shifted h;
draw fullcircle scaled 2 shifted (h+l);
draw (r)--(l-r);
draw (r+h)--(l-r+h);
draw (u)--(h-u);
draw (u+l)--(h-u+l);
path domain,foil;
pair fc;
domain := (u+r)--(l-r+u)--(l+h-r-u)--(h-u+r)--cycle;
foil := (-20,0)..{right}(0,-5)..(5,0)..(0,5){left}..(-20,0)--cycle;
fc := ((h+l)/2+(10,0));
fill domain withcolor (white * 0.6);
fill ((foil scaled 1.3) shifted fc) withcolor white;
draw foil shifted fc;
fill (fullcircle scaled 5 shifted (fc-(20,0))) withcolor white;
draw fullcircle scaled 2 shifted (fc-(20,0));
fill ((foil scaled 0.8) shifted fc) withcolor (white * 0.6);
foil_topo := currentpicture;
currentpicture := nullpicture;
path tri;
tri := (0,15)--((0,15) rotated 120)--((0,15) rotated 240)--cycle;
draw tri;
fill tri scaled 0.8 withcolor (white * 0.6);
for i=0 upto 3:
  fill ((fullcircle scaled 4) shifted (point i of tri)) withcolor white;
  draw ((fullcircle scaled 2) shifted (point i of tri));
endfor;
tri_topo := currentpicture;
currentpicture := nullpicture;
draw foil_topo;
draw tri_topo shifted (100,10);
draw fullcircle scaled 2 shifted (0,-10);
label.rt(btex vertex etex scaled 0.7, (0,-10));
draw (40,-10)--(50,-10);
label.rt(btex edge etex scaled 0.7, (50,-10));
fill (((0,0)--(1,0)--(1,1)--(0,1)--cycle) scaled 10) shifted (90,-15) withcolor (white * 0.6);
label.rt(btex face etex scaled 0.7, (100,-10));
endfig;

end.

