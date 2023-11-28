clc; clear;
n = 4;
m = 6;
archivo = '361.jpg';
im2 = imread (archivo);
ancho = floor(size(im2,2)/m);
alto = floor(size (im2,1)/n);
copia = im2(1:alto*n,1:ancho*m,:);
imshow(copia);
x = randpers(n,m)