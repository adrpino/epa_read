# epa_read
Simple R function that reads fixed width data from the "Encuesta de Población Activa" (EPA)

The microdata of the EPA survey are published as fixed width data, in which each observation is just a row of numbers,
not human readable.

This functions splits this data on columns and saves it to a more usable .csv file.
