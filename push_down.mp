outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;
input TEX;

beginfig(1);
% old vertex owners
fill fullcircle scaled 3 shifted (0,90) withcolor white;
draw fullcircle scaled 3 shifted (0,90);
fill fullcircle scaled 3 shifted (0,120) withcolor white;
draw fullcircle scaled 3 shifted (0,120);
fill fullcircle scaled 3 shifted (60,90) withcolor white;
draw fullcircle scaled 3 shifted (60,90);
fill fullcircle scaled 3 shifted (60,120) withcolor white;
draw fullcircle scaled 3 shifted (60,120);
fill fullcircle scaled 3 shifted (120,90) withcolor white;
draw fullcircle scaled 3 shifted (120,90);
fill fullcircle scaled 3 shifted (120,120) withcolor white;
draw fullcircle scaled 3 shifted (120,120);
% new copies to old owners
draw (0,75){up}..(0,88);
draw (16,75){up}..(2,120);
draw (33,75){up}..(58,120);
draw (50,75){up}..(58,90);
draw (70,75){up}..(62,90);
draw (86,75){up}..(62,120);
draw (103,75){up}..(118,120);
draw (120,75){up}..(120,88);
% new uses to new copies
%   first rank
draw (0,45){up}..(0,75){up};
draw (10,45){up}..(16,75){up};
draw (20,45){up}..(50,75){up};
draw (30,45){up}..(16,75){up};
draw (40,45){up}..(33,75){up};
draw (50,45){up}..(50,75){up};
%   second rank
draw (70,45){up}..(70,75){up};
draw (80,45){up}..(86,75){up};
draw (90,45){up}..(103,75){up};
draw (100,45){up}..(70,75){up};
draw (110,45){up}..(103,75){up};
draw (120,45){up}..(120,75){up};
% new highs to new low uses
%   first rank
draw (10,15){up}..(00,45){up};
draw (10,15){up}..(10,45){up};
draw (10,15){up}..(20,45){up};
draw (40,15){up}..(30,45){up};
draw (40,15){up}..(40,45){up};
draw (40,15){up}..(50,45){up};
%   second rank
draw (80,15){up}..(70,45){up};
draw (80,15){up}..(80,45){up};
draw (80,15){up}..(90,45){up};
draw (110,15){up}..(100,45){up};
draw (110,15){up}..(110,45){up};
draw (110,15){up}..(120,45){up};
% new triangles
draw (0,0)--(30,0)--(0,30)--cycle;
draw (50,0)--(50,30)--(20,30)--cycle;
draw (70,0)--(70,30)--(100,30)--cycle;
draw (120,0)--(90,0)--(120,30)--cycle;
% new copies
%   first rank
path fullsquare;
fullsquare := unitsquare shifted (-.5,-.5);
fill fullsquare scaled 3 shifted (0,75) withcolor white;
draw fullsquare scaled 3 shifted (0,75);
fill fullsquare scaled 3 shifted (16,75) withcolor white;
draw fullsquare scaled 3 shifted (16,75);
fill fullsquare scaled 3 shifted (33,75) withcolor white;
draw fullsquare scaled 3 shifted (33,75);
fill fullsquare scaled 3 shifted (50,75) withcolor white;
draw fullsquare scaled 3 shifted (50,75);
%   second rank
fill fullsquare scaled 3 shifted (70,75) withcolor white;
draw fullsquare scaled 3 shifted (70,75);
fill fullsquare scaled 3 shifted (86,75) withcolor white;
draw fullsquare scaled 3 shifted (86,75);
fill fullsquare scaled 3 shifted (103,75) withcolor white;
draw fullsquare scaled 3 shifted (103,75);
fill fullsquare scaled 3 shifted (120,75) withcolor white;
draw fullsquare scaled 3 shifted (120,75);
endfig;

end.

endfig;

end.




