v=randn(1,20) %se declara vectorul cu elemente aleatoare cu distributie normala (gaussiana)
for i=1:20 %se parcurge vectorul
    if v(i)<0 %se pune conditia ca elementele sa fie negative
        v(i) %se afiseaza elementele negative
    end
end