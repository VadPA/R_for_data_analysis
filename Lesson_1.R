getwd()

# ???????? ???????
1+7
2-9
round(11/3, 2)
abs(3-5)
2*45
sqrt(2)
log2(256)
log(81, base = 3)
4^8
5**4

exp(2)

log(exp(2))

help("log")
? log

factorial(4)
sqrt(log2(512))

exp(1)

# 
search()
# install.packages("effsize")
# library(effsize, lib.loc = "J:/Vadim/Rlibraries")

a<-c(0,1,2,3,4)
a
a[3]

b<-c(rep(2,time=3))
b
b.1<-rep(2,5)
b.1

seq(2,10, by=2)

seq(2,10,2)

seq(10,2,-2)

seq(1,10,2)

?seq

seq(2,10, length.out=4)
seq(1,10, length.out=5)
seq(0,1, length.out=10)
seq(0,1, length.out=11)

g = seq(stats::rnorm(20))
g
g[3]

g.1 = seq(stats::rnorm(20.0))
g.1

set.seed(3)
rnorm(n=50,mean=0,sd=1)

set.seed(3)
round(rnorm(n=50,mean=0,sd=1),3)


rpois(100,10)
?rpois

rbinom(100,10,0.5)
?rbinom

rbinom(100,10,0.85)

rep(c(0,2), time=2)
rep(c(0,2), each=2)

s<-1:10
s

s.1<-10:4
s.1

class(s.1)

r.1 = rep(c(0,2), time=2)
r.1
class(r.1)

letters
LETTERS
?letters
let<-letters
let[2:8]
let[8:1]

paste(let, set="_", seq(1,26))
paste0(let, set="_", seq(1,26))

paste(let, set="_", let)
paste0(let, set=".", let)
paste0(let, set=".", length(let))
paste0(let, set=".", 1:length(let))
paste0(let, set=".", length(let):1)
paste0(let, set=".", length(let):10)
paste0(let, set=".", length(let):24)
(length(let)-2)
exp(3)

month.abb
let.3<-month.abb
let.3
class(let.3)
let.3[4]
let.3[4:8]
let.3[8:2]


?ISOdate
format(ISOdate(2022,2,1:30))
format(ISOdate(2022,2,1:28),"%d")
format(ISOdate(2022,2,1:28),"%a")
format(ISOdate(2022,2,1:28),"%b")
paste0(format(ISOdate(2022,2,1:28),"%b"), set=".", seq(1,28))
paste0(seq(1,28), set=".", format(ISOdate(2022,2,1:28),"%b"))
paste0(seq(1,28), set=".", format(ISOdate(2022,2,1:28),"%b.%a"))
paste0(seq(1,28), set=".", format(ISOdate(2022,2,1:28),"%b-%a"))
paste0(seq(1,28), set=".", format(ISOdate(2022,2,1:28),"%b.%a"))
paste0(seq(1,28), set=".", format(ISOdate(2022,2,1:28),"%b.%a"))[4:10]
paste0(seq(1,28), set=".", format(ISOdate(2022,2,1:28),"%b.%a"))[15:2]
let.4<-format(ISOdate(2022,2,1:28),"%b-%a")
let.4
class(let.4)

2!=0
class(2!=0)

class(factorial)
class(factorial(4))

p<-c(rep("a",5),rep("b",3),rep("g",4))
p

sample(p)
sample(p)

set.seed(2)
sample(p)

set.seed(2)
sample(p)

p.table<-table(p)
p.table
class(p)
class(p.table)

r<-seq(12,2)
r
sum.r<-sum(r)
sum.r

length(r)
mean.1<-sum(r)/length(r)
mean.1

mean.2<-mean(r)
mean.2

set.seed(1)
popul<-rnorm(100)
popul

popul.1<-round(popul,3)
popul.1

sort(popul.1)

sort(popul.1, decreasing = TRUE)

set.seed(2)
lets<-sample(letters, 100, replace = TRUE)
lets

df<-data.frame(lets, popul.1)
head(df)

ind<-order(df$popul.1)
ind

df.1<-data.frame(popul.1, lets)
head(df.1)

ind.1<-order(df.1$lets)
ind.1

df.2<-df[ind.1,]
head(df.2)

pt.1<-table(df.2)
pt.1

unique(lets)
length(unique(lets))

h<-seq(31,45)
h
length(h)
h[1]
h[length(h)]
h[c(1,5,15)]
h[c(1,5,16)]
h[-c(1,5,15)]
h[-c(1,5,16)]

h[1:6]
h[7:1]
h[7:0]

g<-1:15
g
h
h + g
h*2
g**2

?data()
data()

data(package = .packages(all.available = TRUE))
library(cluster)
animals
?animals

is.na(animals)
sum(is.na(animals))

head(animals)
animals$gro
t.1<-table(animals$fly)
t.1

t.2<-table(animals$fly,animals$end)
t.2

t.3<-table(animals$fly,animals$end,animals$gro)
t.3

t.4<-table(animals$end,animals$gro)
t.4

animals$gro[!is.na(animals$gro)]
length(animals$gro[!is.na(animals$gro)])

animals$gro[!is.na(animals[,5])]

?iris
head(iris)
tail(iris)

dim(iris)

str(iris)

unique(iris$Species)


df_train<-iris[1:5, c(2,4,5)]
df_train
df_train[df_train$Sepal.Width > 3.1,]
df_train[df_train$Sepal.Width > 3.1 & df_train$Petal.Width > 0.2,]

df_train[df_train$Sepal.Width > 3.1 & df_train$Petal.Width >= 0.2,]
df_train[df_train$Sepal.Width > 3.1 & df_train$Petal.Width >= 0.2, 3]

round(length(iris[,1])*0.25,0)

?sample

weight<-c(78, 56, 67, 48, 69, 90)
height<-c(170, 160, 167, 152, 168, 184)
sex<-c(rep("F",3),rep("M",3))
sex
class(sex)

df.4<-data.frame(weight, height, sex, stringsAsFactors = F)
df.4
str(df.4)

df.5<-data.frame(weight, height, sex, stringsAsFactors = T)
df.5
str(df.5)

# ____________

m<-1:30
z<-c(10,3)
dim(m)
dim(z)
dim(m)<-z
dim(m)
m

dim(m)<-c(2,15)
m

y<-1:50
y
mt<-matrix(y, 10, 5)
mt

name.1<- LETTERS[1:10]
name.1

?rownames
rownames(mt, do.NULL = T, prefix = "row")
rownames(mt)<-name.1
mt

colnames(mt, do.NULL = T, prefix = "col")
colnames(mt)<-paste("day", 1:5)
mt
dim(mt)
