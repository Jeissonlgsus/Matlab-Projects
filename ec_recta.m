function [m,b] = ec_recta(recta)
    % Calcula los coeficientes para la ecuacion de recta
    % recta tiene la forma [x0,y0,x1,y1]
    % NO APLICA PARA PENDIENTE INFINITA
    % y = mx+b
    
    dy = recta(4)-recta(2);
    dx = recta(3)-recta(1); % verificar condicion dx1 es cero
    
 
    m = dy/dx;    
    % b = y-m*x
    b = recta(2)-m*recta(1);    
   
end