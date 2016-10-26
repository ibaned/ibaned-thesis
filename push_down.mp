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
drawarrow (000,-75){down}..(000,-088);
drawarrow (016,-75){down}..(002,-120);
drawarrow (033,-75){down}..(058,-120);
drawarrow (050,-75){down}..(058,-090);
drawarrow (070,-75){down}..(062,-090);
drawarrow (086,-75){down}..(062,-120);
drawarrow (103,-75){down}..(118,-120);
drawarrow (120,-75){down}..(120,-088);
% new uses to new copies
%   first rank
drawarrow (00,-45){down}..(00,-73){down};
drawarrow (10,-45){down}..(16,-73){down};
drawarrow (20,-45){down}..(50,-73){down};
drawarrow (30,-45){down}..(16,-73){down};
drawarrow (40,-45){down}..(33,-73){down};
drawarrow (50,-45){down}..(50,-73){down};
%   second rank
drawarrow (070,-45){down}..(070,-73){down};
drawarrow (080,-45){down}..(086,-73){down};
drawarrow (090,-45){down}..(103,-73){down};
drawarrow (100,-45){down}..(070,-73){down};
drawarrow (110,-45){down}..(103,-73){down};
drawarrow (120,-45){down}..(120,-73){down};
% new highs to new low uses
%   first rank
draw (10,-15){down}..(00,-45){down};
draw (10,-15){down}..(10,-45){down};
draw (10,-15){down}..(20,-45){down};
draw (40,-15){down}..(30,-45){down};
draw (40,-15){down}..(40,-45){down};
draw (40,-15){down}..(50,-45){down};
%   second rank
draw (080,-15){down}..(070,-45){down};
draw (080,-15){down}..(080,-45){down};
draw (080,-15){down}..(090,-45){down};
draw (110,-15){down}..(100,-45){down};
draw (110,-15){down}..(110,-45){down};
draw (110,-15){down}..(120,-45){down};
% new triangles
draw (0,-0)--(30,-0)--(0,-30)--cycle;
draw (50,-0)--(50,-30)--(20,-30)--cycle;
draw (70,-0)--(70,-30)--(100,-30)--cycle;
draw (120,-0)--(90,-0)--(120,-30)--cycle;
% old vertex owners
fill fullcircle scaled 4 shifted (0,-90) withcolor white;
draw fullcircle scaled 4 shifted (0,-90);
fill fullcircle scaled 4 shifted (0,-120) withcolor white;
draw fullcircle scaled 4 shifted (0,-120);
fill fullcircle scaled 4 shifted (60,-90) withcolor white;
draw fullcircle scaled 4 shifted (60,-90);
fill fullcircle scaled 4 shifted (60,-120) withcolor white;
draw fullcircle scaled 4 shifted (60,-120);
fill fullcircle scaled 4 shifted (120,-90) withcolor white;
draw fullcircle scaled 4 shifted (120,-90);
fill fullcircle scaled 4 shifted (120,-120) withcolor white;
draw fullcircle scaled 4 shifted (120,-120);
% new copies
%   first rank
fill fullsquare scaled 4 shifted (0,-75) withcolor white;
draw fullsquare scaled 4 shifted (0,-75);
fill fullsquare scaled 4 shifted (16,-75) withcolor white;
draw fullsquare scaled 4 shifted (16,-75);
fill fullsquare scaled 4 shifted (33,-75) withcolor white;
draw fullsquare scaled 4 shifted (33,-75);
fill fullsquare scaled 4 shifted (50,-75) withcolor white;
draw fullsquare scaled 4 shifted (50,-75);
%   second rank
fill fullsquare scaled 4 shifted (70,-75) withcolor white;
draw fullsquare scaled 4 shifted (70,-75);
fill fullsquare scaled 4 shifted (86,-75) withcolor white;
draw fullsquare scaled 4 shifted (86,-75);
fill fullsquare scaled 4 shifted (103,-75) withcolor white;
draw fullsquare scaled 4 shifted (103,-75);
fill fullsquare scaled 4 shifted (120,-75) withcolor white;
draw fullsquare scaled 4 shifted (120,-75);
% new uses
%   first rank
fill fullsquare scaled 4 shifted (00,-45);
fill fullsquare scaled 4 shifted (10,-45);
fill fullsquare scaled 4 shifted (20,-45);
fill fullsquare scaled 4 shifted (30,-45);
fill fullsquare scaled 4 shifted (40,-45);
fill fullsquare scaled 4 shifted (50,-45);
%   second rank
fill fullsquare scaled 4 shifted (070,-45);
fill fullsquare scaled 4 shifted (080,-45);
fill fullsquare scaled 4 shifted (090,-45);
fill fullsquare scaled 4 shifted (100,-45);
fill fullsquare scaled 4 shifted (110,-45);
fill fullsquare scaled 4 shifted (120,-45);

% now lets talk about it...
draw fullsquare scaled 10 shifted (140,-08);
label(btex $1$ etex, (140,-08));
label.rt(btex each new triangle copy sends to etex scaled 0.8, (145,-08));
label.rt(btex the old owners of vertices used etex scaled 0.8, (145,-15));
draw fullsquare scaled 10 shifted (140,-108);
label(btex $2$ etex, (140,-108));
label.rt(btex old vertex owners receive new uses, etex scaled 0.8, (145,-108));
label.rt(btex combine those from same new ranks etex scaled 0.8, (145,-115));
draw fullsquare scaled 10 shifted (140,-68);
label(btex $3$ etex, (140,-68));
label.rt(btex result is new vertex copies, sent to new ranks, etex scaled 0.8, (145,-68));
label.rt(btex indexed, and echoed back to old vertex owners etex scaled 0.8, (145,-75));
draw fullsquare scaled 10 shifted (140,-48);
label(btex $4$ etex, (140,-48));
label.rt(btex old vertex owners send new vertex copy indices to etex scaled 0.8, (145,-48));
label.rt(btex new vertex uses, creating new connectivity array. etex scaled 0.8, (145,-55));
draw fullsquare scaled 10 shifted (140,-88);
label(btex $5$ etex, (140,-88));
label.rt(btex old vertex owners send new vertex owner indices to etex scaled 0.8, (145,-88));
label.rt(btex new vertex copies, creating new ownership arrays. etex scaled 0.8, (145,-95));
endfig;

end.

endfig;

end.




