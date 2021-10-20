# Class 5: Data Visualization

#Today we are going to use ggplot2 package
#First we need to load the package!
library(ggplot2)

head(cars)
#We will use this inbuilt "cars" dataset first
#All ggplots have at least 3 layers, 
# data + aes + geoms
ggplot(data=cars)+aes(x=speed, y=dist)+
  geom_point()+
  geom_smooth(method="lm")+
  labs(title="Stopping Distance of Old Cars",
       x="Speed (MPH)", y="Stopping Distance (ft)")
#Sidenote: ggplot is not the only graphing system, but very popular and good 
#to use base R graphics

#easy quick way to visualize data essentially the first three stats of ggplot
plot(cars)
plot(cars$speed, cars$speed)



url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"

genes <- read.delim(url)
head(genes)

nrow(genes)
colnames(genes)
ncol(genes)

table(genes$State)
#to find the percent up regulated genes:
127/5196
#or
round(table(genes$State)/nrow(genes)*100, 3) 
#3 determines the number of significant figures, you can change based on what you want
#dont put quotation marks for the axes
ggplot(data=genes)+
  aes(x=Condition1, y=Condition2)+
  geom_point()
#adding color
p<-ggplot(data=genes)+
  aes(x=Condition1, y=Condition2, col=State)+
  geom_point()
p
#changing colors
p+scale_color_manual(values=c("blue","gray","red"))
#add labels
p+scale_color_manual(values=c("blue","gray","red"))+
  labs(title="Gene Expression Changes Upon Drug Treatment",
         x="Control (no drug)",
       y="Drug Treatment")
#Lets explore the gapminder dataset

#install.packages("gapminder")
library("gapminder")
head(gapminder)

#year and life expectancy plot

ggplot(gapminder)+
  aes(x=year, y=lifeExp)+
  geom_point()
#boxplot
ggplot(gapminder)+
  aes(x=year, y=lifeExp, col=continent)+
  geom_jitter(width=0.3, alpha=0.4)+
  geom_boxplot(aes(group=year), alpha=0.2)

#violin plot
ggplot(gapminder)+
  aes(x=year, y=lifeExp, col=continent)+
  geom_jitter(width=0.3, alpha=0.4)+
  geom_violin(aes(group=year), alpha=0.2)

#install the plotly
#install.packages("plotly")
#library(plotly)
#ggplotly()



