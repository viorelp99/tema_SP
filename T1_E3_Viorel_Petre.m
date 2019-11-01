v = [2+1i, 4+5i, 1+2i, 7+3i, 2-5i, 3-5i] % se declara vectorul cu elemente complexe
mean(real(v)) %media aritmetica a partilor reale ale elementelor
for i=1:6
    v(i)*v(i) %ridicarea la patrat a elementelor
end
v(:) .* v % inmultirea vectorului cu transpusul lui