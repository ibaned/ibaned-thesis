outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;

beginfig(1);
draw fullcircle scaled 120;
pair a,b,c;
b := (55,0);
a := (45,0) rotated -55;
c := (45,0) rotated 50;
draw (0,0)--a--b--c--cycle;
draw a--c;
draw (0,0)--b dashed evenly;
fill fullcircle scaled 4;
fill fullcircle scaled 4 shifted a;
fill fullcircle scaled 4 shifted b;
fill fullcircle scaled 4 shifted c;
label.lft(btex $o$ etex, (0,0));
label.lft(btex $a$ etex, a);
label.lft(btex $c$ etex, c);
label.bot(btex $b$ etex, b);
label.urt(btex $l$ etex, ((b+c)/2));
label.lrt(btex $l$ etex, ((a+b)/2));
label.lft(btex $l$ etex, 0.75[a,c]);
draw ((15,0) rotated -55){dir 80}..((15,0) rotated 50);
label.urt(btex $\theta$ etex, ((15,0) rotated -55));
label.ulft(btex $1$ etex, c/2);
label.llft(btex $1$ etex, a/2);
endfig;

end.


