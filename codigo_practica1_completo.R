library(datasets)
library(dplyr)
library(ggplot2)
datos=datasets::USArrests
dim(datos)
str(datos)
summary(datos)
print("desviaciones típicas de cada variable: \n")
sd(datos$Murder)
sd(datos$Assault)
sd(datos$Rape)
sd(datos$UrbanPop)
discretizada <- ifelse(USArrests$UrbanPop > 50, "Más urbana", "Más rural")

# Crear un gráfico de barras para visualizar la discretización
ggplot(USArrests, aes(x = discretizada)) +
  geom_bar(fill = "lightblue") +
  labs(title = "Distribución de la Población",
       x = "Población",
       y = "Numero de estados") +
  theme_minimal() 
ggplot(datos, aes(x = Assault)) + 
  geom_histogram(aes(y = ..density..),
                 colour = 1, fill = "lightblue", bins=20) +
  geom_density(lwd = 1, colour = "red",
               fill = "red", alpha = 0.2) + theme_minimal()

ggplot(datos, aes(x = Murder)) + 
  geom_histogram(aes(y = ..density..),
                 colour = 1, fill = "lightblue", bins=20) +
  geom_density(lwd = 1, colour = "red",
               fill = "red", alpha = 0.2) + theme_minimal()

ggplot(datos, aes(x = Rape)) + 
  geom_histogram(aes(y = ..density..),
                 colour = 1, fill = "lightblue", bins=20) +
  geom_density(lwd = 1, colour = "red",
               fill = "red", alpha = 0.2) + theme_minimal()
mean_value <- 21.23     
sd_value <- 9.366385    
x <- seq(0, 60, length.out = 1000)
y <- dnorm(x, mean = mean_value, sd = sd_value)
# Crear un dataframe para ggplot
normal <- data.frame(x = x, y = y)

ggplot(USArrests, aes(x = Rape)) + 
  geom_density(lwd = 1, colour = "red", fill = "red", alpha = 0.2) + 
  geom_line(data = normal, aes(x = x, y = y), colour = "blue", lwd = 1) + 
  theme_minimal() +
  labs(title = "Distribución de las violaciones frente a su distribución teórica",
       x = "Violaciones",
       y = "Densidad")
media <- 21.232
sd <- 9.36638453105965
n <- 50
valor_critico <- 1.96  

error_std <- valor_critico * (sd / sqrt(n))

IC_inferior <- media - error_std
IC_superior <- media + error_std

# Mostrar el resultado
print(paste("IC_95% = (",IC_inferior,", ", IC_superior,")"))
x <- 10
n <- 10000
simulacion <- rnorm(n, mean = mean(USArrests$Murder), sd = sd(USArrests$Murder))
prob <- mean(simulacion > x)
print(paste("Probabilidad de que haya más de 10 asesinatos = ", prob))
# Discretizar la variable UrbanPop
USArrests$UrbanPop_discreta <- ifelse(USArrests$UrbanPop > 50, "Más Población Urbana", "Más Población Rural")

ggplot(USArrests, aes(x = Murder, fill = UrbanPop_discreta)) +
  geom_density(alpha = 0.5, show.legend = TRUE) +
  labs(title = "Distribución de Asesinatos en Función de la Población Urbana/Rural",
       x = "Número de Asesinatos",
       y = "Densidad") +
  scale_fill_manual(values = c("Más Población Urbana" = "lightblue", "Más Población Rural" = "tomato")) +
  theme_minimal()
murder_summary <- USArrests |>
  group_by(UrbanPop_discreta) |>
  summarize(Total_asesinatos = sum(Murder))

ggplot(murder_summary, aes(x = UrbanPop_discreta, y = Total_asesinatos, fill = UrbanPop_discreta)) +
  geom_bar(stat = "identity", show.legend = FALSE) +  
  labs(title = "Total de Asesinatos según Población Urbana/Rural",
       x = "Categoría de Población",
       y = "Total de Asesinatos") +
  scale_fill_manual(values = c("Más Población Urbana" = "lightblue", "Más Población Rural" = "tomato")) +
  theme_minimal()
murder_summary_2 <- USArrests |>
  group_by(UrbanPop_discreta) |>
  summarize(Media_asesinatos = mean(Murder))

ggplot(murder_summary_2, aes(x = UrbanPop_discreta, y = Media_asesinatos, fill = UrbanPop_discreta)) +
  geom_bar(stat = "identity", show.legend = FALSE) +  
  labs(title = "Media de Asesinatos según Población Urbana/Rural",
       x = "Categoría de Población",
       y = "Media de Asesinatos") +
  scale_fill_manual(values = c("Más Población Urbana" = "lightblue", "Más Población Rural" = "tomato")) +
  theme_minimal()


ggplot(USArrests, aes(x = UrbanPop_discreta, y = Murder, fill = UrbanPop_discreta)) +
  geom_boxplot(show.legend = FALSE) +  
  labs(title = "Distribución de Asesinatos según Población Urbana/Rural",
       x = "Categoría de Población",
       y = "Número de Asesinatos") +
  scale_fill_manual(values = c("Más Población Urbana" = "lightblue", "Más Población Rural" = "tomato")) +
  theme_minimal()
urbano <- USArrests |> filter(UrbanPop_discreta == "Más Población Urbana") |> select(Murder)
rural <- USArrests |> filter(UrbanPop_discreta == "Más Población Rural") |> select(Murder)

result <- t.test(urbano$Murder, rural$Murder, var.equal = FALSE)
print(result)