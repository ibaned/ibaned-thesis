outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;

beginfig(1);
draw ((0,0)--(1,0)--(1,1)--(0,1)--cycle) scaled 30 shifted (10,10);
draw ((0,0)--(1,1)) scaled 30 shifted (10,10);
fill fullcircle scaled 3 shifted (10,10) withcolor white;
draw fullcircle scaled 3 shifted (10,10);
draw ((0,0)--(1,0)--(1,1)--(0,1)--cycle) scaled 30 shifted (-40,10);
draw ((0,0)--(1,1)) scaled 30 shifted (-40,10);
fill fullcircle scaled 3 shifted (-10,10) withcolor black;
draw fullcircle scaled 3 shifted (-10,10);
draw ((0,0)--(1,0)--(1,1)--(0,1)--cycle) scaled 30 shifted (-40,-40);
draw ((0,0)--(1,1)) scaled 30 shifted (-40,-40);
fill fullcircle scaled 3 shifted (-10,-10) withcolor white;
draw fullcircle scaled 3 shifted (-10,-10);
draw ((0,0)--(1,0)--(1,1)--(0,1)--cycle) scaled 30 shifted (10,-40);
draw ((0,0)--(1,1)) scaled 30 shifted (10,-40);
fill fullcircle scaled 3 shifted (10,-10) withcolor white;
draw fullcircle scaled 3 shifted (10,-10);
picture common;
common := currentpicture;
currentpicture := nullpicture;
draw common;
drawdblarrow (-8,10)--(8,10);
drawdblarrow (8,-10)--(-8,-10);
drawdblarrow (10,-8)--(10,8);
drawdblarrow (-10,8)--(-10,-8);
drawdblarrow (-8,-8)--(8,8);
drawdblarrow (-8,8)--(8,-8);
picture leftpic;
leftpic := currentpicture;
currentpicture := nullpicture;
draw common;
drawarrow (8,10)--(-8,10);
drawarrow (-10,-8)--(-10,8);
drawarrow (8,-8)--(-8,8);
drawarrow (-11,11){dir (90+45)}..(-10,20){dir 0}..(-9,11){dir (270-45)};
picture rightpic;
rightpic := currentpicture;
currentpicture := nullpicture;
draw leftpic shifted (-50,0);
draw rightpic shifted (50,0);
fill fullcircle scaled 3 shifted (100,-10) withcolor white;
draw fullcircle scaled 3 shifted (100,-10);
label.rt(btex non-owned copy etex scaled 0.8, (100,-10));
fill fullcircle scaled 3 shifted (100,-20) withcolor black;
draw fullcircle scaled 3 shifted (100,-20);
label.rt(btex owned copy etex scaled 0.8, (100,-20));
drawarrow (100,5)--(100,20);
label.rt(btex remote copy link etex scaled 0.8, (100,15));
label.bot(btex complete etex scaled 0.8, (-50,-40));
label.bot(btex owner-based etex scaled 0.8, (50,-40));
endfig;

end.



