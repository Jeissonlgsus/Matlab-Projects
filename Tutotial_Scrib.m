clc; clear;
% limpia el comand window y borra variables
% uso de codigo normal
% Uso de plot con un solo parametro plot(parametros)
m = [3 2 -1 0 8 2];
%colores;rojo(r);verde(g);azul(b);amarillo(y);negro(k);cian(c)
%color = [R,G,B] en rango (0,1)
r = [0.5 0 0];
%plot(m,'mo-','LineWidth',2,'color',r); grid;
%title('Gráfica de ejemplo','FontSize',14)
%xlabel('Eje X');ylabel('Eje Y');
%legend('Gráfica 1')
%uso de dos parametros
x1 = 1: length(m);
x1 = 2: (length(m)+1);
x1 = linspace (-10,10,length(m))
m2 = m+1
%plot(x1,m); grid;
%plot(m,'mo-','LineWidth',2,'color',r); grid;
plot(x1,m,x1,m2)
legend('Gráfica de m','Gráfica de m2')

x2 = x1-0.5
plot(x1,m,x2,m2)
legend('Gráfica de m','Gráfica de m2')
plot(x1,m,x2,m2,x1,m+m2)
%Sin embargo hacer 10 graficas seria algo muy engorroso.
%para ello usamos
hold on
plot([1 2 3 4 5 6],[1 4 9 16 25 36]);
hold off
%De este modo, conserva las graficasa anteriores.
%__________________________________
%veamos un metodo aun mas eficiente para multimples graficas.
m0 = randi([-5,5],4,7)
plot(m0);grid;

j = [1 1 1 1;2 4 8 16;3 9 27 0]
plot(j);grid;
legend('g1','g2','g3')
%-----------------------------
