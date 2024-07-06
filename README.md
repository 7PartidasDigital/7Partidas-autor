[![DOI](https://zenodo.org/badge/675071641.svg)](https://zenodo.org/doi/10.5281/zenodo.12674161)
# Los autores de las _Siete Partidas_: una visión desde la estilometría

Este repositorio ofrece los textos que se han utlizadoi para el artículo «Los autores de las _Siete Partidas_: una visión desde la estilomtería», realizado bajo el proyecto [7PartidasDigital](https://7partidas.hypotheses.org) (PID2020-112621GB-I00) Financiado por la Agencia Estatal de Investigación: /AEI/10.13039/501100011033) y publicado en la revista [_Philologica Hispalensis_](https://revistascientificas.us.es/index.php/PH/index), 38/2 (2024).

En el directorio `script` se hay dos ficheros `recuentos_basicos.R`que hace una serie de recuentos elementales (cantidad de tokens y tipos que hay en cada titulo. Este `script` exige tener instalada la librería `tidyverse` y `tidytext`. `PARTIDAS_autoria.R` lleva a cabo el análisis `rolling.classify`. Para poderlo llevar a cabo, así como cual quiera de los otros análisis presentados en el artículo, es necesario tener la librería `stylo`.

El directorio `corpus-titulos` contiene el texto se las _Siete Partidas_ dividido por títulos. El nombre de estos ficheros sigue el patrón `n-xx.txt`, donde `n` indica la Partida y `xx` los títulos.
El directorio `corpus-lopez` contiene el texto se las _Siete Partidas_ dividido por _Partida_.
El directorio `reference_set` contiene cada una de las _Siete Partidas_ y el directorio `test_set` contiene un único fichero que contiene el texto de las _Siete Partidas_. Estos dos directorios se han de emplear como se indican en el `script` titulado `PARTIDAS_autoria.R` y de acuerdo con las explicaciones dentro del artículo.

Todos los ficheros son de texto plano con codificación UTF-8 y LF (UNIX).

Todos los análisis se hacen sobre el texto de la edición publicada por Gregorio López en 1555, la cual ha sido transcrita y etiquetada en XML-TEI por el equipo de 7PartidasDigital, la cual se encuentra accesible en Fradejas Rueda, J. M. (2018). 7PartidasDigital/XML-TEI (v.0.2) [Data set]. Zenodo. https://doi.org/10.5281/zenodo.1299569.

Los materiales se ofrecen bajo una licencia Attribution 4.0 International (CC BY 4.0)

<p align="center">
<img src=https://f-origin.hypotheses.org/wp-content/blogs.dir/3658/files/2015/06/EXPLICIT-7PARTIDAS-e1495528094806.png>
</p>
