Homework Question 6
================
Andrea Sama (A59010582)
10/24/2021

# Can you improve this analysis code?

library(bio3d) s1 \<- read.pdb(“4AKE”) # kinase with drug s2 \<-
read.pdb(“1AKE”) # kinase no drug s3 \<- read.pdb(“1E4Y”) # kinase with
drug s1.chainA \<- trim.pdb(s1, chain=“A”, elety=“CA”) s2.chainA \<-
trim.pdb(s2, chain=“A”, elety=“CA”) s3.chainA \<- trim.pdb(s1,
chain=“A”, elety=“CA”) s1.b \<- s1.chainA*a**t**o**m*b s2.b \<-
s2.chainA*a**t**o**m*b s3.b \<- s3.chainA*a**t**o**m*b plotb3(s1.b,
sse=s1.chainA, typ=“l”, ylab=“Bfactor”) plotb3(s2.b, sse=s2.chainA,
typ=“l”, ylab=“Bfactor”) plotb3(s3.b, sse=s3.chainA, typ=“l”,
ylab=“Bfactor”)

#make a function for this code x \<- read.pdb(“whatever”) x.chainA \<-
trim.pdb(x, chain=“A”, elety=“CA”) x.b \<- x.chainA*a**t**o**m*b
plot(x.b, sse=x.chainA, typ=“l”, ylab=“Bfactor”)

identify.chain \<- function(x) { y\<- trim.pdb(x, chain=“A”, elety=“CA”)
y*a**t**o**m*b plotb3(y*a**t**o**m*b, sse=y, typ=“l”, ylab=“Bfactor”)}
