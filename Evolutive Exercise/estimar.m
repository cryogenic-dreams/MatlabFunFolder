function valores=estimar(vector1, vector2, vector3, vector4, parametro)%valores del conj test y vector con 9 parametros llamado parametro
for i=1:1:15 %por 15 años
    valor=parametro(1)+parametro(2)*vector1(i)^parametro(3)+parametro(4)*vector2(i)^parametro(5)+parametro(6)*vector3(i)^parametro(7)+parametro(8)*vector4(i)^parametro(9);
    valores(i)=valor;
end

