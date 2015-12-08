function Datos=practicaFinal(estructuraTest, estructuraTrain)
    %De estructuraTest sacaremos los valores del PIB, la poblacion, la
    %exportacio y la importacion
    %Y de estructuraTrain obtenemos el consumo
Datos=finish(estructuraTest.pib, estructuraTest.poblacion, estructuraTest.exportaciones, estructuraTest.importaciones, estructuraTrain.consumo);