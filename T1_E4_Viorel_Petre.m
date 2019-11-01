z=[0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]  %declararea vectorilor z,n,m
n=0:20						
m=-5:15
%punctul a)
figure(1);
subplot(2,1,2), stem(n,z);			%graficul lui z in functie de n	
subplot(2,1,1), stem(m,z);			%graficul lui z in functie de m

%punctul b)
figure(2);
t=abs(10-n)
stem(n,t)					%graficul lui t in functie de n

%punctul c)
%ambele functii pe acelasi grafic
figure(3);
a=-15:25					%declararea vectorului a
x1=sin(pi*a/17)             %se calculeaza x1
stem (a,x1)                 %afisarea functiei
hold on
b=0:50						%declararea vectorului b
x2=cos(pi*b/sqrt(23))       %se calculeaza x2
stem (b,x2)                 %afisarea functiei
hold off

%functiile afisate separat in 2 miniferestre
figure(4);
a=-15:25					
x1=sin(pi*a/17)
subplot (2,1,2), stem (a,x1)
b=0:50						
x2=cos(pi*b/sqrt(23))
subplot (2,1,1), stem (b,x2)
