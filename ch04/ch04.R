# chAP04

english <- c(90, 80, 60,70)
math <- c(50, 60, 100, 20)
class <- c(1,1,2,2)


english
math

df_midterm <- data.frame(english, math, class)
df_midterm
mean(df_midterm$english)

df_midterm <- data.frame(
  english = c(90, 80, 60, 70) 
  math = c(50, 60, 100,20) 
  class= c(1,1,2,2)
)

# 88 page 실습

fruit <- c("사과", "딸기","수박")
price <- c(1800, 1500, 3000)
qty <- c(24,38,13)

sales <- data.frame(fruit, price, qty);
sales
mean(sales$price)
mean(sales$qty)


name <- c("lee","kim","jung")
age <- c(23, 27, 33)
location <- c("seoul", "bushan", "china")

df_people <- data.frame(name, age, location)
df_people

mean(df_people$age)

sex <- c ("m", "f", "f")

people <- data.frame(name, age, location, sex)
people

# ------------------------------------------------------------------------
# Excel 불러오기, CSV File Open

install.packages("readxl")
library(readxl)

df_exam <- read_excel("excel_exam.xlsx")
df_exam

df_exam_mean_math <- mean(df_exam$math)
df_eam_mean_english <- mean(df_exam$english)
max(df_exam$math)


df_exam_novar <- read_excel("excel_exam_novar.xlsx")


df_exam_sheet <- read_excel("excel_exam_sheet.xlsx")

df_csv_exam <- read.csv("csv_exam.csv")
df_csv_exam


f_exam_novar <- read_excel("c:/works/ch04/excel_exam_novar.xlsx")

df_exam_novar <- read_excel("excel_exam_novar.xlsx", col_names = F)
df_exam_novar

## ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
## Data frame to CSV File Saving

people
write.csv(people, file="people.csv")
read_people <- read.csv("people.csv")
read_people

#R data Save And Open

save(people, file="people.rda")
rm(people)
people

load("people.rda")
people

# 98 Page exam

 english <- C (90, 80, 60, 80)
 math <- c(50, 50, 60, 95)
 data.frame(english, math)

 exam_data <- data.frame(english, math)
 exam_data

 write.csv(exam_data, file = "exam_data.csv")
 df_exam_data <- read.csv("exam_data.csv")
 df_exam_data
 
 library(readxl)
 
 ## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 ## Data Analysis
 
exam <- read.csv("csv_exam.csv")
head(exam, 10)
summary(exam)
str(exam)
dim(exam)
View(exam)

install.packages("ggplot2")
mpg <- as.data.frame(ggplot2::mpg)

head(mpg)
tail(mpg)
dim(mpg)
str(mpg)
summary(mpg$cty)

# +++++++++++++++++++++++++++++++++++++++++
## Change VAR

mpg
rvar1 <- c(1,2,1)
rvar2 <- c(2,3,2)
df_raw <- data.frame(rvar1, rvar2)


install.packages("dplyr")
library(dplyr)

df_new <- df_raw
df_new
df_new <- rename(df_new, v2 = rvar2)
df_new

library(ggplot2)
mpg_new <- mpg
mpg_new <- rename(mpg_new, highway = hwy)
mpg_new



## 파생변수 만들기

col1 <- c(4,3,8)
col1
col2 = c(2,6,1)
df<- data.frame(col1, col2)
df

df_new <- rename
histgram

##
##조건문 이용한 파생변수 만들기 


mpg_new$test <- ifelse(mpg_new$total >= 20, "pass", "fail");
head(mpg_new)
str(mpg_new)
View(mpg_new)


table(mpg_new$drv)
hist(mpg_new$drv)
library(ggplot2)
qplot(mpg_new$drv)


mpg_new$grade <- ifelse(mpg_new$trans >= 30, "A",
                        ifelse(mpg_new$trans >= 20, "B", "C"))
head (mpg_new, 20)

mpg_new$grade
View(mpg_new$grade)

# +++++++++++++++++++++++
# 123 Page 문제풀이

midwest <- as.data.frame(ggplot2::midwest)
library(dplyr)
library(ggplot2)

summary(midwest)
head(midwest)
View(midwest)


library(dplyr)
midwest <-rename(midwest, total = poptotal)
midwest <-rename(midwest, asian = popasian)
View(midwest)

midwest <-rename(midwest, poptotal = total)
midwest <-rename(midwest, popasian = asian)
View(midwest)

midwest <-rename(midwest, total = poptotal)
midwest <-rename(midwest, asian = popasian)
View(midwest)


midwest$ration <- midwest$asian/midwest$total*100
hist(midwest$ration)
View(midwest)

mean(midwest$ration)

table(midwest$group)
library(ggplot2)
qplot(midwest$group)
table (midwest$group)

View(midwest)

View(people)
people$ratio <- ifelse(people$age >= 20 ,"Yes", "No")
View(people)
