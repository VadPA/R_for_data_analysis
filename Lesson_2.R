library(cluster)
votes.repub

install.packages("dplyr")
library(dplyr)


data()
head(votes.repub)
str(votes.repub)
dim(votes.repub)
votes.repub[1:6, 1:10]

colMeans(votes.repub)
length(votes.repub)

colMeans(votes.repub, na.rm = TRUE)

votes.repub[, 30]
sum(votes.repub[, 30])
mean.col30 = sum(votes.repub[, 30])/length(votes.repub[, 30])
mean.col30

if(mean(votes.repub[, 30]) > 60){
  print("республиканцы набрали высокий процент голосов")
} else{
  print("республиканцы набрали < 60 процентов голосов")
}

if(mean(votes.repub[, 7], na.rm = TRUE) > 60){
  print("республиканцы набрали высокий процент голосов")
} else{
  print("республиканцы набрали < 60 процентов голосов")
}
x<-c(3, -1, 0, 0, 3, 5, 6)
x
ifelse(x!=0, "Yes", "No")
ifelse(x!=0, TRUE, FALSE)

length(ifelse(x!=0, TRUE, FALSE))

class(length(ifelse(x!=0, TRUE, FALSE)))
class(ifelse(x!=0, TRUE, FALSE))

ifelse(colMeans(votes.repub, na.rm = TRUE) > 60, 
       "респ. высокий %", "респ. набрали < 60 % голосов")

ifelse(colMeans(votes.repub, na.rm = TRUE) > 50, 
       "у респ. высокий %", "респ. набрали < 50 % голосов")

getwd()

dat<-read.csv("dat.csv")
head(dat)
dim(dat)
str(dat)

dat$d.date
unique(dat$d.date)
unique(dat$ball)
unique(dat$price)

datn<-dat[,-1]
datn
head(datn)
head(datn, 10)
str(datn)
unique(datn$ball)
unique(datn$price)

install.packages("lubridate")
library(lubridate)

?lubridate
class(datn$d.date)
dayn<-ymd(datn$d.date)
dayn
class(dayn)

day(dayn)

datn$price
datn$price[day(dayn)==1]
sum(datn$price[day(dayn)==1])

f.1<-function(d){sum(datn$price[day(dayn)==d])}
f.1(1)
f.1(2)
f.1(3)

sum(f.1(1),f.1(2),f.1(3))

month(datn$d.date)
day(datn$d.date)

f.2<-function(m, d){sum(datn$price[month(datn$d.date)==m & day(datn$d.date)==d])}
f.2(1,3)
f.2(1,1)
f.2(2,3)

for (i in 1:3) {
  print(f.1(i))
}

head(votes.repub)
?apply
class(votes.repub)

apply(votes.repub, 2, mean)

lapply(votes.repub, sum)
class(lapply(votes.repub, sum))

unlist(lapply(votes.repub, sum))
as.numeric(unlist(lapply(votes.repub, sum)))

sapply(votes.repub, sum)
class(sapply(votes.repub, sum))

a<-c(1,2,5,7,10)
a
diff(a)

range(a)
min(a)
max(a)

l<-function(x){diff(range(x))}
l(a)

tapply(Orange$circumference, Orange$Tree, l)

#--------------

z<-c(1, 2, 3, 5)
v<-c(0, 83, 23, 3, -8)
z%in%v

iris %>% dim
iris %>% filter(Species=="versicolor")
iris %>% filter(Species=="versicolor") %>% select(Petal.Length)
iris %>% filter(Species=="versicolor") %>% select(Petal.Length) %>% unlist
vc<-as.numeric(iris %>% filter(Species=="versicolor") %>% select(Petal.Length) %>% unlist)
vc

vg<-as.numeric(iris %>% filter(Species=="virginica") %>% select(Petal.Length) %>% unlist)
vg

vc %in% vg
sum(vc %in% vg)

#-----------------------

a<-c(1, 1, 1, 1, 1, 0, 0, 0)
a
b<-c(1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0)
b
sam.a<-sample(a, 2)
sam.b<-sample(b, 4)
sam.a
sam.b
c(sam.a, sam.b)
s<-sum(c(sam.a, sam.b))
s

mc<-function(m, n){sam.a<-sample(a, m)
sam.b<-sample(b, n)
s<-sum(c(sam.a, sam.b))
}

m<-replicate(100, mc(2,4))
m
mean(m==3)

m.1<-replicate(1000, mc(2,4))
mean(m.1==3)

m.2<-replicate(10000, mc(2,4))
mean(m.2==3)

m.3<-replicate(100000, mc(2,4))
mean(m.3==3)

m.4<-replicate(1000000, mc(2,4))
mean(m.4==3)

m.5<-replicate(2000000, mc(2,4))
mean(m.5==3)

#------------------
a.1<-c(1, 3, 5)
b.1<-c(0, 0, 0)

nm<-paste0(seq(1, 3), "_", "row")
nm

df.1<-data.frame(a.1, b.1, row.names = nm)
df.1
dim(df.1)

write.csv(df.1, file = "november.csv")

getwd()

df.2<-read.csv("november.csv")
df.2
class(df.2)

#--------------------------

read.csv("cardio_train.csv")
head(read.csv("cardio_train.csv"))

head(read.csv("cardio_train.csv", sep=";"))
read.csv("cardio_train.csv", sep=";", nrows = 5, row.names = paste0("row.", seq(1, 5)))
read.csv("cardio_train.csv", sep=";", nrows = 5, row.names = 1)
read.csv("cardio_train.csv", sep=";", nrows = 5)
read.csv("cardio_train.csv", sep=";", nrows = 5, row.names = 1)

read.csv("cardio_train.csv", sep=";", nrows = 5, row.names = paste0("row.", seq(1, 5)), header = FALSE)
read.csv("cardio_train.csv", sep=";", nrows = 5, row.names = paste0("row.", seq(1, 5)), header = TRUE)

install.packages("readxl")
library(readxl)

.libPaths(c("J:/Vadim/Rlibraries", .libPaths()))
.libPaths()
