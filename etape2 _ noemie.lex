{%
/* date = mois avec 31jr | mois avec 30jrs | février */
/*commentaire de test*/
%}

reference ([a-zA-Z]{1,3}[0-9]{1,6})
egal [=]
entier ([-]?[0-9]+)
reel ([-]?[0-9]+[,][0-9]+|[-]?[0-9]+[,][0-9]+)
texte (\"(("")|[^"])*\")
boolean ([Vv][Rr][Aa][Ii])|([Ff][Aa][Uu][Xx])
somme ([Ss][Oo][Mm][Mm][Ee])
moyenne ([Mm][Oo][Yy][Ee][Nn][Nn][Ee])
min ([Mm][Ii][Nn])
max ([Mm][Aa][Xx])
si ([Ss][Ii])
heure (([0|1][0-9]|[2][0-4]):[0-5][0-9]:[0-5][0-9])
date ( (([0][1-9]|[1|2][0-9]|[3][0|1])/([0][1|3|5|7|8]|[1][0|2])/([0-9][0-9][0-9][0-9])) | (([0][1-9]|[1|2][0-9]|[3][0])/([0][4|6|9]|[1][1])/([0-9][0-9][0-9][0-9])) | (([0][1-9]|[1|2][0-8])/([2])/([0-9][0-9][0-9][0-9])) )

%%
reference {printf("REFERENCE DE CELLULE");}
egal {printf("EGAL");}
entier {printf("ENTIER");)
(-?[0-9]+,[0-9]+)|(-?[0-9]*,[0-9]+) {printf("REEL");}
texte {printf("TEXTE");}
boolean {printf("BOOLEEN");}
 {printf("DATE");}
heure {printf("HEURE");}
"(" {printf("PO");}
")" {printf("PF");}
"+" {printf("PLUS");}
"-" {printf("MOINS");}
"/" {printf("DIVISE");}
"*" {printf("MULTI");}
"&" {printf("ETCOM");}
"^" {printf("EXPO");}
\n {printf("NL");}
somme {printf("SOMME");}
moyenne {printf("MOYENNE");}
min {printf("MIN");}
max {printf("MAX");}
si {printf("SI");}
";" {printf("PV");}
":" {printf("DEUXPT");}
"<" {printf("INF");}
">" {printf("SUP");}
"<>" {printf("DIFFERENT");}
"<=" {printf("INFEGAL");}
">=" {printf("SUPEGAL");}
