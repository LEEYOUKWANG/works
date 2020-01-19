#######################
# project ch03 getwd()
#

# +++++++++++++

var1 <- seq(1,10, by=2);

a=10;
if(a=10){
 a; 
  
}else{
  100;
}

a=20;
b=30;
c=a+b;
c;
###+++++

var1=10;
if (a > 100){
  1000;
  
}else {
  1;
}

c <- 1000

numbofCompanyMember = 100;

abc123 = 10;
13abc = 10;

# Cloumn 생성

var1 <- c(1,2,3,4,7,8)

# +++++++

var3 <- seq(1,10)
var4 <- seq(1,20, by=2)
var5 <- seq(1,20, by=3)
"var1"
var1
"var1+var2"
var1+var2

# +++++++++++++

var1+var3

str1 <- "a"
str2 <- "test1"
str3 <- "hello world"

str1+str2

str4 <- c("a", "b", "c")
str5 <- c("abc", "bcd", "1234")

var5_max = max(var5);
var5_min = min(var5);
var5_mean = mean(var5);

var5_max * var5_min

# --------------------

paste(str5, collapse = ",")
paste(str5, collapse = "   ")
paste(str5, collapse = "++")

# +++++++++++++++++++++++++
# package 설치하고 사용하기 

install.packages("ggplot2");

library(ggplot2);

qplot(str4)
qplot(var1)
x <- c("a","a", "b", "c", "d")
qplot(x)

paste(str1, str2, collapse = ",")

# Qplot 사용하기 
qplot(data=mpg, x=hwy)
qplot(data=mpg, x=cty)
qplot(data=mpg, x=drv, y=hwy, geom="line")
qplot(data=mpg, x=drv, y=hwy, geom="boxplot")
qplot(data=mpg, x=drv, y=hwy, geom="boxplot", colour=drv)

# 77 page 연습문제

var10 = c (80, 60, 70, 50, 90)
var10_mean = mean(var10)
var10_mean
var10_mean

var11 <- c(80, 60, 70, 50, 90)

# data 프레임 만들기 예제


























