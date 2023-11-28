function [xn,yn,xm,ym] = estrella(puntas,radio)
    %con esta funcion de crea una estrella de un radio determinado para
    %ello debemos especificar la cantidad de puntas y su longitud.
%     para graficar la funcion es necesario generar dos plot el primero con (xn,yn)
%     el segundo con(xm,ym)
puntas = 5;
radio = 2;
r2 = 1; %longitud del radio interno
%[x1,y1] = poligono(puntas,radio);
m = 360/puntas;
b = 0:m:360;
b = b + 90;
x1=radio*cosd(b);
y1=radio*sind(b);
%[x2,y2] = rpoligono(puntas,r2);
    a = (180-360/puntas)/2;
    n = 360/puntas;
c = 0:n:360;
c = c+a;
x2=r2*cosd(c);
y2=r2*sind(c);
 for i=1:puntas
     xn = [x1(i) x2(i+1)];
     yn = [y1(i) y2(i+1)];
     plot(xn,yn,'k',"LineWidth",2);
     xm = [x1(i) x2(i)];
     ym = [y1(i) y2(i)];
     hold on
     plot(xm,ym,'k',"LineWidth",2);
 end
hold off
end