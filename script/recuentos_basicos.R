library(tidyverse)
library(tidytext)
ficheros <- list.files() # Puede cambiar
titulo <- gsub(".txt", "", ficheros)
tabla <- tibble(titulo = character(),
                    graficas = numeric(),
                    tipos = numeric())
for(i in 1:length(ficheros)){
  texto <- tibble(texto = readLines(ficheros[i]))
  titulo_palabras <- texto %>%
    unnest_tokens(palabra, texto)
  tipos <- titulo_palabras %>%
    count(palabra)
  temporal <- tibble(titulo = titulo[i],
                   graficas = nrow(titulo_palabras),
                   tipos = nrow(tipos))
  tabla <- bind_rows(tabla,temporal)
}

summary(tabla)

tabla %>% count(graficas) %>% print(n=Inf)

borrables <- tabla %>%
  filter(graficas < 2000)
borrar <- paste(borrables$titulo, ".txt", sep = "")
file.remove(borrar)



