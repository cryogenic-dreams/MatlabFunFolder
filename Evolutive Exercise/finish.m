function parametrosFinales=finish(vector1, vector2, vector3, vector4, vector5)%vector1-4 conjtest, vector5 conjtrain demanda de energia
auxMin=1000000000000; %una inicializaci�n poco ortodoxa pero es necesaria para la comparaci�n de m�s abajo

for i=1:1:100000
    %normalizacion
    vectoraux1=normalizar(vector1);
    vectoraux2=normalizar(vector2);
    vectoraux3=normalizar(vector3);
    vectoraux4=normalizar(vector4);
    vectoraux5=normalizar(vector5);
    
    %dibujamos el consumo real, estar� en verde como en las diapositivas
    hold on
    plot(vector5,'g')
    
    %creacion 10 hijos (puede ser cualquier otro n�mero de hijos)
    p=(rand(10,1)*10)-5*ones(10,1);
    p=[p,(rand(10,8)*2)-1*ones(10,8)];
    
    for j=1:1:10
        E=estimar(vectoraux1, vectoraux2, vectoraux3, vectoraux4, p(j,:)); %estimamos el consumo de 15 a�os usando conjtest
        dif=((vectoraux5-E).^2);  %miramos
        dif=sum(dif)/15;          %cu�l es la diferencia usando el consumo de los otros 15 a�os
        D1(j)=dif;                %y la guardamos
    end
    
    %cu�l es el hijo que m�s se aproxima a 0 o cu�l es la menor diferencia
    [D,I]=min(D1);
    %guardamos el m�nimo y los parametros en auxiliares
    if auxMin>D(1)
        auxMin=D(1);
        auxPara=p(I(1),:);
    end

end
E=estimar(vector1, vector2, vector3, vector4, auxPara); %se usa estimar nuevamente para poder hacer un plot
%dibujamos el consumo estimado, estar� en rojo como en las diapositivas
plot(E, 'r')
hold off

n=max(vector5);
parametroaux=desnormalizar(auxPara, n);
parametrosFinales=parametroaux;