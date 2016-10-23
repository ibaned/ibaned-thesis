outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;
input TEX;

beginfig(1);
path fullsquare;
fullsquare := unitsquare shifted (-.5,-.5);
% new copies to old owners
drawarrow (0,75){up}..(0,88);
drawarrow (16,75){up}..(2,120);
drawarrow (33,75){up}..(58,120);
drawarrow (50,75){up}..(58,90);
drawarrow (70,75){up}..(62,90);
drawarrow (86,75){up}..(62,120);
drawarrow (103,75){up}..(118,120);
drawarrow (120,75){up}..(120,88);
% new uses to new copies
%   first rank
drawarrow (00,45){up}..(00,73){up};
drawarrow (10,45){up}..(16,73){up};
drawarrow (20,45){up}..(50,73){up};
drawarrow (30,45){up}..(16,73){up};
drawarrow (40,45){up}..(33,73){up};
drawarrow (50,45){up}..(50,73){up};
%   second rank
drawarrow (70,45){up}..(070,73){up};
drawarrow (80,45){up}..(086,73){up};
drawarrow (90,45){up}..(103,73){up};
drawarrow (100,45){up}..(70,73){up};
drawarrow (110,45){up}..(103,73){up};
drawarrow (120,45){up}..(120,73){up};
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
% old vertex owners
fill fullcircle scaled 4 shifted (0,90) withcolor white;
draw fullcircle scaled 4 shifted (0,90);
fill fullcircle scaled 4 shifted (0,120) withcolor white;
draw fullcircle scaled 4 shifted (0,120);
fill fullcircle scaled 4 shifted (60,90) withcolor white;
draw fullcircle scaled 4 shifted (60,90);
fill fullcircle scaled 4 shifted (60,120) withcolor white;
draw fullcircle scaled 4 shifted (60,120);
fill fullcircle scaled 4 shifted (120,90) withcolor white;
draw fullcircle scaled 4 shifted (120,90);
fill fullcircle scaled 4 shifted (120,120) withcolor white;
draw fullcircle scaled 4 shifted (120,120);
% new copies
%   first rank
fill fullsquare scaled 4 shifted (0,75) withcolor white;
draw fullsquare scaled 4 shifted (0,75);
fill fullsquare scaled 4 shifted (16,75) withcolor white;
draw fullsquare scaled 4 shifted (16,75);
fill fullsquare scaled 4 shifted (33,75) withcolor white;
draw fullsquare scaled 4 shifted (33,75);
fill fullsquare scaled 4 shifted (50,75) withcolor white;
draw fullsquare scaled 4 shifted (50,75);
%   second rank
fill fullsquare scaled 4 shifted (70,75) withcolor white;
draw fullsquare scaled 4 shifted (70,75);
fill fullsquare scaled 4 shifted (86,75) withcolor white;
draw fullsquare scaled 4 shifted (86,75);
fill fullsquare scaled 4 shifted (103,75) withcolor white;
draw fullsquare scaled 4 shifted (103,75);
fill fullsquare scaled 4 shifted (120,75) withcolor white;
draw fullsquare scaled 4 shifted (120,75);
% new uses
%   first rank
fill fullsquare scaled 4 shifted (00,45);
fill fullsquare scaled 4 shifted (10,45);
fill fullsquare scaled 4 shifted (20,45);
fill fullsquare scaled 4 shifted (30,45);
fill fullsquare scaled 4 shifted (40,45);
fill fullsquare scaled 4 shifted (50,45);
%   second rank
fill fullsquare scaled 4 shifted (070,45);
fill fullsquare scaled 4 shifted (080,45);
fill fullsquare scaled 4 shifted (090,45);
fill fullsquare scaled 4 shifted (100,45);
fill fullsquare scaled 4 shifted (110,45);
fill fullsquare scaled 4 shifted (120,45);

% now lets talk about it...
draw fullsquare scaled 10 shifted (140,15);
label(btex $1$ etex, (140,15));
label.rt(btex each new triangle copy sends to etex scaled 0.8, (145,15));
label.rt(btex the old owners of vertices used etex scaled 0.8, (145,08));
draw fullsquare scaled 10 shifted (140,115);
label(btex $2$ etex, (140,115));
label.rt(btex old vertex owners receive new uses, etex scaled 0.8, (145,115));
label.rt(btex combine those from same new ranks etex scaled 0.8, (145,108));
draw fullsquare scaled 10 shifted (140,75);
label(btex $3$ etex, (140,75));
label.rt(btex result is new vertex copies, sent to new ranks, etex scaled 0.8, (145,75));
label.rt(btex indexed, and echoed back to old vertex owners etex scaled 0.8, (145,68));
draw fullsquare scaled 10 shifted (140,55);
label(btex $4$ etex, (140,55));
label.rt(btex old vertex owners send new vertex copy indices to etex scaled 0.8, (145,55));
label.rt(btex new vertex uses, creating new connectivity array. etex scaled 0.8, (145,48));
draw fullsquare scaled 10 shifted (140,95);
label(btex $5$ etex, (140,95));
label.rt(btex old vertex owners send new vertex owner indices to etex scaled 0.8, (145,95));
label.rt(btex new vertex copies, creating new ownership arrays. etex scaled 0.8, (145,88));
endfig;

end.

endfig;

end.




