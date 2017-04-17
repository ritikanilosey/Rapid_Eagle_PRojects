#--- load packages ---
library(dplyr)
library(tidyr)
library(magrittr)
library(readr)
titanic_original <- read.csv(file.choose(), header = TRUE)
df<-read.csv(file.choose(),na.strings=c("","na")) # we take care of the missing values right here.
str(df)
class(df)
#Port of Embarkation---
df[is.na(df$embarked),] #only the rows 169 and 285
df1<-df
# Since embarked column is factor, it has to be converted into "character" first to input string.
df1$embarked <-lapply(df1$embarked, as.character) 
df1$embarked[which(is.na(df1$embarked))] <-"s"
df2<-df1
df2[is.na(df2$embarked),] ## return  null i.e "na" values have been replaced by "s" as required.
#Mean of Age column
df2[is.na(df2$age),]
df2$age[which(is.na(df2$age))] <- mean(df2$age,na.rm = TRUE)
df2[is.na(df2$age),] # "na" values have been replaces by mean of rest of the values
df3<-df2
# 3. LifeBoat--This question was answered when we first loaded the data and “na” values were input
# 4. Cabin Solution:
df3$cabin <-lapply(df3$cabin, as.character)
df3$has_cabin_number <- ifelse(df3$cabin == "NA", 0, 1)
df4<-df3
df4$has_cabin_number[which(is.na(df4$has_cabin_number))] <- 0
str(df4)
