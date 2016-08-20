outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;
input boxes

beginfig(1);
boxjoin(a.se = b.ne; a.sw = b.nw);
for i = 0 upto 3:
  boxit.p[i]();
endfor;
boxjoin(a.se = b.ne; a.sw = b.nw);
for i = 0 upto 3:
  boxit.l[i]();
endfor;
l[0].e = l[0].w + (100,0);
l[0].w = p[0].e + (10,0);
boxjoin();
boxit.a();
a.n = p[0].n + (30,0);
a.s = p[3].s + (30,0);
boxit.b();
b.n = p[0].n + (50,0);
b.s = p[3].s + (50,0);
boxit.e();
e.ne = l[0].ne;
e.nw = e.ne - (30,0);
e.n - e.s = p[0].n - p[3].s;
boxit.ff();
ff.s = p[0].n + (0,10);
for i = 0 upto 3:
  drawboxed(p[i]);
endfor;
for i = 0 upto 3:
  drawboxed(l[i]);
endfor;
fill bpath a withcolor .8 white;
drawboxed(a);
fill bpath b withcolor .8 white;
drawboxed(b);
fill bpath e withcolor .5 white;
drawboxed(e);
drawboxed(ff);
drawarrow ff.e{right}..a.n;
drawarrow a.n{1,1}..b.n;
for i = 0 upto 3:
  drawarrow p[i].e--l[i].w;
endfor;
label.lft(btex first free: etex scaled 0.5, ff.w);
label.lft(btex free list: etex scaled 0.5, p[0].w);
label.lft(btex attribute 1: etex scaled 0.5, p[1].w);
label.lft(btex attribute 2: etex scaled 0.5, p[2].w);
label.lft(btex attribute 3: etex scaled 0.5, p[3].w);
label.top(btex extra etex scaled 0.5, e.n);
endfig;

end.
