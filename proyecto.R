
library(RMySQL)
database<- dbConnect(MySQL(), user="root", host="localhost", password="", dbname="miproyect")
query<- dbGetQuery(database, statement = "SELECT * FROM busqueda")
query

install.packages("Hmisc")
library(Hmisc)

install.packages("mice")
library(mice)

#para ver en formato tabla
install.packages("VIM")
library(VIM)

md.pattern(query)
aggr(query)

variable.data = query$producto
mas.vendido = query$marca

head(mas.vendido, 4) #esto saca el numero de datos que se decea ver

precios.date = query$precio
query$precio = 

query$marca[query$marca == "hikvision"] <- "dahua" # con esto se manipula datos, pero no  manipula la base de datos

install.packages("tidyr")
library(tidyr)

database<- dbConnect(MySQL(), user="root", host="localhost", password="", dbname="miproyect")
query.predicciones<- dbGetQuery(database, statement = "INSERT INTO predicciones (nro_prediccion, producto) VALUES ('2', 'camara')")
query.predicciones

database<- dbConnect(MySQL(), user="root", host="localhost", password="", dbname="miproyect")
query.predicciones<- dbGetQuery(database, statement = "SELECT * FROM predicciones")
query.predicciones

summary(query)
str(query)

summary(query$producto) # MUY UTIL PARA FILTRAR CUANTAS VECES APARECE EN LA BASE DE DATOS.
moments::kurtosis(query$precio)

hist(query$precio)

database<- dbConnect(MySQL(), user="root", host="localhost", password="", dbname="miproyect")
query.venta<- dbGetQuery(database, statement = "SELECT * FROM venta")
query.venta

hist(query.venta$precio)

summary(query.venta)

