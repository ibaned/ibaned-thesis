outputformat := "png";
outputtemplate := "%j.%o";
prologues := 3;
hppp := 0.25;
vppp := 0.25;

beginfig(1);
% region boundary
draw (-40,0)--(40,0)--(0,60)--cycle;
% region bottom
fill (-40,0)--(40,0)--(0,40)--cycle withcolor .4 white;
% region top right
fill (40,0)--(0,60)--(0,40)--cycle withcolor .7 white;
% region top left
fill (-40,0)--(0,60)--(0,40)--cycle withcolor .7 white;
% region bottom left to center
draw (-40,0)--(0,40);
% region bottom right to center
draw (40,0)--(0,40);
% region top to center
draw (0,60)--(0,40);
% right face
draw (60,30)--(20,90)--(20,70)--cycle;
% left face
draw (-60,30)--(-20,90)--(-20,70)--cycle;
% top edge
draw (0,90)--(0,110) withpen pencircle scaled 3bp;
% right edge
draw (50,20)--(15,55) withpen pencircle scaled 3bp;
% left edge
draw (-50,20)--(-15,55) withpen pencircle scaled 3bp;
% center vertex
draw fullcircle scaled 6 shifted (0,70);
% bottom right vertex
draw fullcircle scaled 6 shifted (65,5);
% bottom left vertex
draw fullcircle scaled 6 shifted (-65,5);
% right edge to right face
drawdblarrow (((50,20)+(15,55))/2)--(((60,30)+(20,70))/2);
% left edge to left face
drawdblarrow (((-50,20)+(-15,55))/2)--(((-60,30)+(-20,70))/2);
% right face to top edge
drawdblarrow (((20,70)+(20,90))/2)--(2,100);
% left face to top edge
drawdblarrow (((-20,70)+(-20,90))/2)--(-2,100);
% right face to region
drawdblarrow ((60,30)*0.3+(20,70)*0.7)--(((40,0)+(0,60)+(0,40))/3);
% left face to region
drawdblarrow ((-60,30)*0.3+(-20,70)*0.7)--(((-40,0)+(0,60)+(0,40))/3);
% right edge to center vertex
drawdblarrow ((15,55)+(-2,2))--((0,70)+(2,-2));
% left edge to center vertex
drawdblarrow ((-15,55)+(2,2))--((0,70)+(-2,-2));
% top edge to center vertex
drawdblarrow (0,88)--((0,70)+(0,3));
% right edge to bottom right vertex
drawdblarrow ((50,20)+(1,-1))--((65,5)+(-2,2));
% left edge to bottom left vertex
drawdblarrow ((-50,20)+(-1,-1))--((-65,5)+(2,2));
% region
label.top(btex region etex, (0,0));
% right face
label.rt(btex face etex, ((60,30)+(20,90))/2);
% top edge
label.rt(btex edge etex, (0,110));
% bottom right vertex
label.rt(btex vertex etex, (68,5));
endfig;

end.

