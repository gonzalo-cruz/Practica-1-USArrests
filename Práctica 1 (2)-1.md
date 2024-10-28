**Grado en Ciencia e Ingeniería de Datos Curso 2024-2025**

**Inferencia Estadística Práctica 1**

Práctica en grupo de dos personas. Se requiere la entrega de una memoria en formato pdf. La memoria ha de incluir el código empleado así como una explicación de la solución propuesta para cada uno de los ejercicios propuestos. Cada grupo trabajará con un conjunto de datos diferente:



|**Grupo**|**Base de datos**|**Descripción**|
| - | - | - |
|1|diamonds|Librería ggplot2|
|2|flights|Librería nycflights13|
|3|airquality|Librería datasets|
|4|USArrests|Librería datasets|
|5|Boston|Librería MASS|
|6|UScereal|Librería MASS|
|7|pima|Librería pdp|
|8|adult|Librería arules|
|9|churn|Librería liver|
|10|bank|Librería liver|
|11|mtcars|Librería datasets|
|12|wine|Librería HDclassif|
|13|Mushroom|Librería arulesCBA|
|14|Bike\_buyers|<p>bike\_buyers = read.csv('bike\_buyers.csv', header=T, na.strings='')</p><p>Datos en Kaggle.com</p>|
|15|Airpassengers|Librería datasets|
|16|Studentperformance|datos=read.csv("https://raw.githubusercontent.com/srpay d/R-Analysis/refs/heads/master/StudentsPerformance.cs v")|
|17|spam|Librería kernlab|

Se pide:

1. (1 punto) Realizar un Análisis Exploratorio de Datos sobre los datos. Responder (al menos) a estas preguntas:
1. ¿Cuál es el tamaño de la base de datos? Es decir:
   1. ¿Cuántas observaciones hay?
   1. ¿Cuántas variables/características están medidas?
1. Si el número de observaciones es mayor de 1000 tomar una muestra aleatoria simple de 1000 observaciones para responder al resto de cuestiones planteadas. Establece una semilla para que el ejercicio sea reproducible.
1. ¿Qué tipo de variables aparecen en la base de datos?
   1. ¿Qué variables son discretas?
   1. ¿Cuáles son continuas?
   1. ¿Qué categorías tienen las variables?
   1. ¿Hay variables tipo texto?
1. ¿Es posible identificar variables irrelevantes?
2. (1 punto) Calcular estadísticos resumen (media, desviación típica, frecuencia,etc) de todas las variables de interés.
2. (1 punto) Emplear técnicas gráficas para estudiar la distribución de (al menos) una variable discreta. Si no existe una variable discreta en el conjunto de datos, podéis crearla.
2. (1 punto) Emplear técnicas gráficas para estudiar la distribución de (al menos) una variable continua. Si es necesario, transformar la variable para conseguir una distribución conocida.
2. (1 punto) Deriva teóricamente el estimador de máxima verosimilitud de (al menos) uno de los parámetros de la distribución anterior. Compara la distribución muestral con la distribución teórica. (1 punto)
2. (1 punto) Repite el ejercicio anterior empleando el método de los momentos. Calcula el valor del estimador en la muestra de datos y su intervalo de confianza.
2. (2 puntos) Para una variable continua, calcular la probabilidad que el verdadero valor de la variable sea superior a un valor fijo.
   1. Si asumes una distribución para la variable, puedes resolver el problema desde un punto de vista teórico.
   1. Desde un punto de vista práctico, mediante simulación.
2. (1 punto) Dada una variable continua y una discreta, realiza un gráfico en el que se comparan las distribuciones de la variable continua en (al menos) dos grupos construidos en base a la variable discreta. Por ejemplo, representar la edad en base al género.
2. (1 punto) En vista de los resultados anteriores, plantea un contraste de hipótesis.
   1. Resuelve dicho contraste explicando qué suposiciones has tenido en cuenta (+1 punto extra)
2. (+1 punto extra) Dadas dos variables discretas, construye una tabla de contingencia para estudiar la asociación entre ellas. Representa gráficamente dicha asociación.
