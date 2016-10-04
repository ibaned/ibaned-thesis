outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;
input boxes

beginfig(1);
pair a,b,c,d;
a := (30,0);
b := a rotated  90;
c := a rotated 180;
d := a rotated 270;
draw fullcircle scaled 60 withpen pencircle scaled 1.5;
fill fullcircle scaled 4 shifted a;
fill a--b--c--d--cycle withcolor white * 0.7;
draw a--b--c--cycle;
draw c--d--a;
drawarrow (b+(0,-4))--(a+(-6,2));
endfig;

end.



