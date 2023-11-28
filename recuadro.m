function [salida] = recuadro(matriz,p_x,p_y,ancho,alto)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
salida = matriz(p_y:p_y+alto:p_x+ancho,:);


end

