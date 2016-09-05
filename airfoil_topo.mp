outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;

beginfig(1);
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
endfig;

end.

