a = 0:0.1:2
b = [1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1]
%vectorul coloana b trebuie sa aiba 21 de elemente, exact ca a pt a se
%putea realiza inmultirea
a*b
%se afiseaza suma elementelor din a inmultite pe rand cu elementele
%corespunzatoare din b
b*a
%se afiseaza o matrice de 21x21 avand pe fiecare linie elementele din a
%inmultite cu elementele din b
a.*b
%se afiseaza acelasi lucru ca la b*a
