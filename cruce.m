function [x0,y0,valido] = cruce(r1,r2)
    %Con esta funcion podemos determinar el cruce entre dos rectas r1 y r2
    % Validar si las pendientes son infinitas
    % m = dy/dx 
    
    [m1,b1] = ec_recta(r1);
    [m2,b2] = ec_recta(r2);
    valido = 1; % asumo que el cruce es valido
    % encontrar cruce
    % m1*x+b1 = m2*x+b2
    % x = (b2-b1/m1-m2)
    if m1 == Inf | m2 == Inf | m1 == -Inf | m2 == -Inf
        x0 = r2(1);
        y0 = m2*x0+b2; 
        if m1 == Inf | m1 == -Inf
            x0 = r1(1);
            y0 = m2*x0+b2; 
        end
    else
        x0 = (b2-b1)/(m1-m2);
        y0 = m2*x0+b2;     
    end

    
    
     % 1. Verificanco si x0 no se encuentra en el rango de recta1
    if r1(1)<r1(3)
        if r1(1)>x0 | x0>r1(3)
        % si no es valido para el rango x
        valido = 0;
        end
    elseif r1(1)<x0 | x0<r1(3)
        % si no es valido para el rango x
        valido = 0;
    end
  
    % 2. Verificanco si y0 se encuentra en el rango de recta1
   
    if r1(2)<r1(4);
        if r1(2)>y0 | y0>r1(4)
        % si no es valido para el rango x
        valido = 0;
        end
    elseif r1(2)<y0 | y0<r1(4)
        % si no es valido para el rango x
        valido = 0;
    end
    
    % 3. Verificanco si x0 se encuentra en el rango de recta2
   
    if r2(1)<r2(3)
        if r2(1)>x0 | x0>r2(3)
        % si no es valido para el rango x
        valido = 0;
        end
    elseif r2(1)<x0 | x0<r2(3)
        % si no es valido para el rango x
        valido = 0;
    end
  
    % 4. Verificanco si y0 se encuentra en el rango de recta2
   
    if r2(2)<r2(4)
        if r2(2)>y0 | y0>r2(4)
        % si no es valido para el rango x
        valido = 0;
        end
    elseif r2(2)<y0 | y0<r2(4)
        % si no es valido para el rango x
        valido = 0;
    end

end