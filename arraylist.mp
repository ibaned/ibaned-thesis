outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;
input boxes

% make text labels smaller
defaultscale := 0.6;

beginfig(1);
boxjoin();
boxit.h("h");
drawboxed(h);
boxjoin(a.e + (10,0) = b.w);
boxit.a("a");
boxit.b("b");
boxit.c("c");
boxit.d("d");
a.n = h.s - (0,10);
drawboxed(a,b,c,d);
drawarrow h.s--a.n;
drawarrow a.s{1,-1}..c.s;
drawarrow c.w--b.e;
drawarrow b.n{1,1}..d.n;
boxjoin();
boxit.ah("0");
ah.w = h.e + (80,00);
drawboxed(ah);
boxjoin(a.e = b.w);
boxit.aa("2");
boxit.ab("3");
boxit.ac("1");
boxit.ad("-1");
aa.n = ah.s - (0,10);
drawboxed(aa,ab,ac,ad);
label.top("h",ah.n);
label.top("a",aa.n);
label.top("b",ab.n);
label.top("c",ac.n);
label.top("d",ad.n);
label.bot("0",aa.s);
label.bot("1",ab.s);
label.bot("2",ac.s);
label.bot("3",ad.s);
endfig;

end.

