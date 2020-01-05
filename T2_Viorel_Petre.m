P=40;  % Perioada semnalului
w=2*pi/P; 
D=17;  % Durata semnalului dreptunghiular
rezolutie=1/10; 
% Rezolutie aleasa ca sa avem imagine mai exacta, dar si sa nu avem timp de rulare foarte mare
t = -2*P:rezolutie:2*P;
semnal=0.5*square(w*t,42.5)+0.5;
% Semnalul dreptunghiular este format doar din valori de 1 si 0 asa ca am
% facut 4 perioade una dupa alta pentru afisare

f = @(t) (0.5*square(w*t,42.5)+0.5);
X0 = integral(f, 0, P);

xk = [];
for i = 1:50
    f = @(t) ((0.5*square(w*t,42.5)+0.5).*exp(-1j*w*t*i));
    xk = [xk integral(f, 0, P)];
end

coef = [2*abs(fliplr(xk)) 2*X0 2*abs(xk)];
 
figure(1);
stem(-50:50, coef);
title(' Spectrul lui x(t) ')
k = 1:50;
semnal2 = 1/P*(X0 + 2*xk*exp(1j*w*k'*t));
figure(2);
plot(t, semnal);
title('x(t)(linie solida) si reconstructia folosind N coeficienti (linie punctata)');
hold on;
plot(t, semnal2, '--');
hold off;
%Seriile Fourier sunt o unealt? matematic? folosit? pentru a analiza func?iile periodice descompunându-le într-o sum? ponderat?
%de func?ii sinusoidale componente care sunt denumite armonice.Se observa faptul ca semnalul poate fi aproximat printr-o
%suma de sin, variatiile semnalului prezentand un caracter sinusoidal.