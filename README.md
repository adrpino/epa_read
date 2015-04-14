This is a simple R function that reads fixed width data from the "Encuesta de Población Activa" (EPA)
The microdata of the EPA survey are published as fixed width data, in which each observation is just a row of numbers.

This functions splits this data on columns and saves it to a more usable .csv file, using the dictionaries of the survey and the "read.fwf()" funcion of R. It saves the files in the current working directory

The column names and the widths of the variables are based on the diccionaries of the survey. These and the data itself can be downloaded here: 
http://www.ine.es/dyngs/INEbase/es/operacion.htm?c=Estadistica_C&cid=1254736176918&menu=resultados&secc=1254736030639&idp=1254735976595
