Práctica de la asignatura Inferencia Estadística en la cual se pide resolver las siguientes preguntas usando R y Rstudio

Con la database USArrests de la librería dataset se pide lo siguiente:
1. (1 punto) Realizar un Análisis Exploratorio de Datos sobre los datos. Responder (al
menos) a estas preguntas:
  a. ¿Cuál es el tamaño de la base de datos? Es decir:
    i. ¿Cuántas observaciones hay?
    ii. ¿Cuántas variables/características están medidas?
  b. Si el número de observaciones es mayor de 1000 tomar una muestra
    aleatoria simple de 1000 observaciones para responder al resto de
    cuestiones planteadas. Establece una semilla para que el ejercicio sea
    reproducible.
  c. ¿Qué tipo de variables aparecen en la base de datos?
    i. ¿Qué variables son discretas?
    ii. ¿Cuáles son continuas?
    iii. ¿Qué categorías tienen las variables?
    iv. ¿Hay variables tipo texto?
  d. ¿Es posible identificar variables irrelevantes?
2. (1 punto) Calcular estadísticos resumen (media, desviación típica, frecuencia,etc) de
todas las variables de interés.
3. (1 punto) Emplear técnicas gráficas para estudiar la distribución de (al menos) una
variable discreta. Si no existe una variable discreta en el conjunto de datos, podéis
crearla.
4. (1 punto) Emplear técnicas gráficas para estudiar la distribución de (al menos) una
variable continua. Si es necesario, transformar la variable para conseguir una
distribución conocida.
##5. (1 punto) Deriva teóricamente el estimador de máxima verosimilitud de (al menos)
uno de los parámetros de la distribución anterior. Compara la distribución muestral
con la distribución teórica. (1 punto)
##6. (1 punto) Repite el ejercicio anterior empleando el método de los momentos. Calcula
el valor del estimador en la muestra de datos y su intervalo de confianza.
7. (2 puntos) Para una variable continua, calcular la probabilidad que el verdadero valor
de la variable sea superior a un valor fijo.
  a. Si asumes una distribución para la variable, puedes resolver el problema
  desde un punto de vista teórico.
  b. Desde un punto de vista práctico, mediante simulación.
8. (1 punto) Dada una variable continua y una discreta, realiza un gráfico en el que se
comparan las distribuciones de la variable continua en (al menos) dos grupos
construidos en base a la variable discreta. Por ejemplo, representar la edad en base
al género.
9. (1 punto) En vista de los resultados anteriores, plantea un contraste de hipótesis.
  a. Resuelve dicho contraste explicando qué suposiciones has tenido en cuenta
  (+1 punto extra)
10. (+1 punto extra) Dadas dos variables discretas, construye una tabla de contingencia
para estudiar la asociación entre ellas. Representa gráficamente dicha asociación
