outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;

beginfig(1);
draw (30,70)--(130,70)--(130,80)--(30,80)--cycle;
label(btex sources etex, (80,75));
drawarrow (30,70)--(0,50);
drawarrow (130,70)--(160,50);
label(btex expand (duplicate entries) etex scaled 0.9, (80,60));
draw (0,40)--(160,40)--(160,50)--(0,50)--cycle;
label(btex edges sorted by source etex, (80,45));
drawarrow (0,40)--(20,20);
drawarrow (20,40)--(0,20);
drawarrow (140,40)--(160,20);
drawarrow (160,40)--(140,20);
label(btex permute etex scaled 0.9, (80,30));
draw (0,10)--(160,10)--(160,20)--(0,20)--cycle;
label(btex edges sorted by destination rank etex, (80,15));
drawarrow (20,10)--(20,-10);
drawarrow (140,10)--(140,-10);
label(btex \tt MPI\_Neighbor\_alltoallv etex scaled 0.9, (80,0));
draw (-20,0)--(20,0) dashed evenly;
draw (140,0)--(250,0) dashed evenly;
label.top(btex source rank memory etex scaled 0.8, (210,0));
label.bot(btex destination rank memory etex scaled 0.8, (210,0));
draw (0,-10)--(160,-10)--(160,-20)--(0,-20)--cycle;
label(btex edges sorted by source rank etex, (80,-15));
drawarrow (0,-20)--(20,-40);
drawarrow (20,-20)--(0,-40);
drawarrow (140,-20)--(160,-40);
drawarrow (160,-20)--(140,-40);
label(btex permute etex scaled 0.9, (80,-30));
draw (0,-40)--(160,-40)--(160,-50)--(00,-50)--cycle;
label(btex edges sorted by destination etex, (80,-45));
drawarrow (0,-50)--(30,-70);
drawarrow (160,-50)--(130,-70);
label(btex reduce (combine entries) etex scaled 0.9, (80,-60));
draw (30,-70)--(130,-70)--(130,-80)--(30,-80)--cycle;
label(btex destinations etex, (80,-75));
endfig;

end.



