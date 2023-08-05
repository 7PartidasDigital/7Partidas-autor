library(stylo)

# Esta sección lee el fichero que haya en el test_set y localiza los
# puntos en que comienza cada Partida y cada Título, los cuales están
# marcado con el signo del euro -€-
texto <- readLines("test_set/7Partidas.txt")
texto <- paste(texto, collapse = " ")
texto <- unlist(strsplit(texto, " "))
miliarios <- which(texto == "€")
etiquetas <- paste("T", 0:length(miliarios), sep = ".") # Para Partidas individuales. Marca títulos
# Crea las etiquetas para todas las Partidas por Partida y Título
etiquetas <- c("0.0", paste("1.", 1:24, sep = ""),
           paste("2.", 0:31, sep = ""),
           paste("3.", 0:32, sep = ""),
           paste("4.", 0:27, sep = ""),
           paste("5.", 0:15, sep = ""),
           paste("6.", 0:19, sep = ""),
           paste("7.", 0:34, sep = ""))

# Selecciona solo la posición del comienzo de Partida para el análisis de 7Partidas.txt sin títulos
etiquetas_partida <- c(etiquetas[1:2], etiquetas[26], etiquetas[58], etiquetas[91], etiquetas[119], etiquetas[119], etiquetas[135], etiquetas[155])
miliarios_partida <- c(miliarios[1:2], miliarios[26], miliarios[58], miliarios[91], miliarios[119], miliarios[119], miliarios[135], miliarios[155])


options(scipen = 999) # Quita la notación científica

# Rolling.classify sin etiquetas
rolling.classify(classification.method = "delta",
                 mfw=1000,
                 training.set.sampling = "normal.sampling",
                 slice.size = 5000,
                 slice.overlap = 4500)

# Debido a la existencia de material preliminar hay ficheros con texto .0
# la variable etiqueta debe corregirse para que no haya sobre escritura.
# Se hace con la línea siguiente, pero hay que estar atento los índices
# de etiquetas en el Global Environment y solo selección todos los elementos
# salvo el último.
etiquetas <- etiquetas[1:35]

# Rolling.classify con etiquetas
rolling.classify(classification.method = "nsc",
                 mfw=100,
                 training.set.sampling = "normal.sampling",
                 slice.size = 5000,
                 slice.overlap = 4500,
                 milestone.points = miliarios,
                 milestone.labels = etiquetas)
