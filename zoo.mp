outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;

beginfig(1);
fill fullcircle scaled 4 shifted (0,5);
label.bot("point", (0,0));
draw (45,0)--(75,0);
label.bot("line", (60,0));
draw ((-1,0)--(1,0)--(0,sqrt(3))--cycle) scaled 20 shifted (120,0);
label.bot("triangle", (120,0));
draw ((-1,0)--(1,0)--(1,2)--(-1,2)--cycle) scaled 16 shifted (180,0);
label.bot("quadrilateral", (180,0));
draw ((0,0)--(2,-1)) scaled 10 shifted (-10,-50);
draw ((0,0)--(3,1)) scaled 10 shifted (-10,-50) dashed evenly;
draw ((0,0)--(0,3)) scaled 10 shifted (-10,-50);
draw ((2,-1)--(3,1)--(0,3)--cycle) scaled 10 shifted (-10,-50);
label.bot("tetrahedron", (0,-60));
draw ((0,1)--(1,0.2)--(2,1)--cycle) scaled 20 shifted (40,-40);
draw (((0,1)--(1,0.2)--(2,1)) shifted (0,-1)) scaled 20 shifted (40,-40);
draw ((0,1)--(2,1)) shifted (0,-1) scaled 20 shifted (40,-40) dashed evenly;
draw ((0,1)--(0,0)) scaled 20 shifted (40,-40);
draw ((1,0.2)--(1,-0.8)) scaled 20 shifted (40,-40);
draw ((2,1)--(2,0)) scaled 20 shifted (40,-40);
label.bot("prism", (60,-60));
draw ((0,0)--(1,-1)--(3,-1)) scaled 15 shifted (90,-45);
draw ((3,-1)--(2,0)--(0,0)) scaled 15 shifted (90,-45) dashed evenly;
draw ((2,1.5)--(0,0)) scaled 15 shifted (90,-45);
draw ((2,1.5)--(1,-1)) scaled 15 shifted (90,-45);
draw ((2,1.5)--(3,-1)) scaled 15 shifted (90,-45);
draw ((2,1.5)--(2,0)) scaled 15 shifted (90,-45) dashed evenly;
label.bot("pyramid", (120,-60));
draw ((0,0)--(1,-1)--(3,-1)) scaled 15 shifted (150,-45);
draw ((3,-1)--(2,0)--(0,0))  scaled 15 shifted (150,-45) dashed evenly;
draw ((0,0)--(1,-1)--(3,-1)) shifted (0,1.5) scaled 15 shifted (150,-45);
draw ((3,-1)--(2,0)--(0,0))  shifted (0,1.5) scaled 15 shifted (150,-45);
draw ((0,0)--(0,1.5)) scaled 15 shifted (150,-45);
draw ((1,-1)--(1,0.5)) scaled 15 shifted (150,-45);
draw ((3,-1)--(3,0.5)) scaled 15 shifted (150,-45);
draw ((2,0)--(2,1.5)) scaled 15 shifted (150,-45) dashed evenly;
label.bot("hexahedron", (180,-60));
endfig;

end.


