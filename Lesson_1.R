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
paste0(seq(1,28), set=".", format(ISOdate(2022,2,1:28),"%b.%a"))[4:10]
paste0(seq(1,28), set=".", format(ISOdate(2022,2,1:28),"%b.%a"))[15:2]
let.4<-format(ISOdate(2022,2,1:28),"%b-%a")
let.4
class(let.4)

.libPaths()
