install.packages("userfriendlyscience")
library(userfriendlyscience)

names(BD_Likert_csv_BD_Likert_csv)
dim(BD_Likert_csv_BD_Likert_csv)
str(BD_Likert_csv_BD_Likert_csv)
anyNA(BD_Likert_csv_BD_Likert_csv)

which(is.na(BD_Likert_csv_BD_Likert_csv))

BD_Likert_csv_BD_Likert_csv2<-na.omit(BD_Likert_csv_BD_Likert_csv)
attach(BD_Likert_csv_BD_Likert_csv)

Constructo1<-data.frame(A1,A2,A3,A4,A5,A6,A7)
constructo2<-data.frame(B1,B2,B3,B4)
constructo3<-data.frame(C1,C2,C3,C4,C5,C6)
constructo4<-data.frame(D1,D2,D3,D4,D5,D6,D7)
constructo5<-data.frame(E1,E2,E3,E4,E5,E6,E7,E8,E9)
constructo6<-data.frame(F1,F2,F3,F4,F5)
constructo7<-data.frame(G1,G2,G3,G4,G5,G6,G7,G8)
constructo8<-data.frame(H1,H2,H3,H4)

scaleReliability(constructo1)
scaleReliability(constructo2)
scaleReliability(constructo3)
scaleReliability(constructo4)
scaleReliability(constructo5)
scaleReliability(constructo6)
scaleReliability(constructo7)

