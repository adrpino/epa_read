
epa_read <- function(f_name) {

	datos <- read.fwf(f_name,
	col.names = c("ciclo","ccaa","prov","nvivi","nivel","npers","edad5", 		
	"relpp1","sexo1","ncony","npadre","nmadre","rellmili","eciv1","prona",
	"regna1","nac1", "exregna1","anore1","nforma","rellb","edadest","cursr",
	"ncursr","cursnr","ncurnr","hcurnr","rellb2","trarem","ayudfa","ausent",
	"rznotb","vincul","nuevem","ocup1","act1","situ","sp","ducon1","ducon2",
	"ducon3","tcontm","tcontd","dren","dcom","proest","regest","parco1", 
	"parco2","horasp_h","horasp_m","horash_h","horash_m","horase_h","horase_m",
	"extra","extpag_h","extpag_m","extnpg_h","extnpg_m","rzdifh","traplu","ocuplu1",
	"actplu1","sitplu1","horplu_h","horplu_m","mashor","dismas","rzndish","hordes",
	"busotr","busca","desea","fobact","nbusca","asala","embus","itbu","disp",
	"rzndis","empant","dtant","ocupa","acta","situa","ofemp","sidi1","sidi2",
	"sidi3","sidac1","sidac2","mun1","prore1","repaire1","traant","aoi","cse","factorel"),

	widths=c(3,2,2,5,1,2,2,1,1,2,2,2,1,1,2,3,1,3,2,2,2,3,1,2,1,2,3,2,  # until RELLB
	1,1,1,2,2,1,1,1,2,1,1,1,2,2,2,3,3,
	2,3,1,2, 2,2, 2,2, 2,2, 1, 2,2, 2,2, 2,1,1,1,2, 2,2, 1,1,2,2,1,  # until BUSOTR
	1,1,1,2,1,1,2,1,1,	# RZNDIS
	1,3,1,1,2,1,2,2,2,1,1,	# SIDAC2
	1,2,3,1,2,2,7))

	datos$rellmili<- NULL
	datos$rellb <- NULL
	datos$rellb2 <- NULL
	datos$factorel<- datos$factorel/100

	f_name<-unlist(strsplit(f_name,split=".",fixed=TRUE))[1]
	file_str<-paste(f_name,"_f",".csv",sep="")
	write.csv(datos, file=file_str )


cat(paste0("File ","'",file_str,"'"," saved."),"\n")

}
