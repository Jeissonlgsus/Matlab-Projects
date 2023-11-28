function [x,y] = rpoligono(lados,radio)
    %Al igual que poligono, la funcion rpoligono nos proporciona una
    %rotacion de 90 grados la cual tiene como vertice principal el angulo 0
    %lados = 5
    %radio = 2
    a = (180-360/lados)/2;
    theta = 360/lados;
angulos = 0:theta:360;
angulos = angulos+a;
x=radio*cosd(angulos);
y=radio*sind(angulos);
%plot(x,y,"LineWidth",2);
end