function [x,y] = poligono(lados,radio)
    %Esta funcion genera coordenadas rectamgulares 
    % para un poligono de radio y lados dados
    %
    %Se debe usar de la siguiente manera
    %[x,y] = poligono(lados,radio);
    %Donde [x,y] son las coordenadas del poligono
    
theta = 360/lados;
angulos = 0:theta:360;
angulos = angulos + 90;
x=radio*cosd(angulos);
y=radio*sind(angulos);

end