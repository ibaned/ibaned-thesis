outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;
input boxes

beginfig(1);
fill (-30,-30)--(90,-30)--(90,60)--(-30,60)--cycle withcolor white * 0.7;
pair a,b,c;
a := (0,0);
b := (60,0);
c := (60,0) rotated 60;
fill a--b--c--cycle withcolor white;
draw a--b--c--cycle;
fill fullcircle scaled 6 shifted c;
drawarrow (a+(6,4))--(b+(-6,4));
draw fullcircle scaled (2*60/sqrt(3)) shifted ((a+b+c)/3) withpen pencircle scaled 1.5;
label(btex empty etex, (a+b+c)/3);
label.llft(btex mesh etex, (90,60));
label.ulft(btex CAD vertex etex scaled 0.75, c);
label.top(btex CAD edge etex scaled 0.75, (30,-30));
endfig;

end.


