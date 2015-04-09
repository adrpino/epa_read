# epa_read
# Simple R function that reads fixed width data from the "Encuesta de Población Activa" (EPA)
# The microdata of the EPA survey are published as fixed width data, in which each observation is just a row of numbers.

# This functions splits this data on columns and saves it to a more usable .csv file, using the dictionaries of the survey and the "read.fwf()" funcion of R. It saves the files in the current working directory
