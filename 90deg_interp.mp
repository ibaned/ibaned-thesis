outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;
input TEX;

beginfig(1);
draw (-50,0)--(50,0);
fill fullcircle scaled 2 shifted (-50,0);
fill fullcircle scaled 2 shifted (50,0);
fill fullcircle scaled 2 shifted (0,0);
draw fullcircle xscaled 50 yscaled 8 shifted (50,0);
draw fullcircle xscaled 50 yscaled 8 rotated 90 shifted (-50,0);
draw fullcircle xscaled 50 yscaled 8 rotated 45 shifted (0,0);
draw fullcircle xscaled 50 yscaled 8 rotated -45 shifted (0,0) dashed evenly;
drawarrow (((0,0)--(1,0)) scaled 25 shifted (50,0));
drawarrow (((0,0)--(1,0)) scaled 25 rotated 90 shifted (-50,0));
drawarrow (((0,0)--(1,0)) scaled 25 rotated 45 shifted (0,0));
endfig;

end.



