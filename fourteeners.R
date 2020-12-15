
id = c(1,2,3,4,5) 
id
id <- c(1,2,3,4,5)  
c(1,2,3,4,5) -> id
id  
name = c("Mt. Elbert","Mt. Massive","Mt. Harvard","Blanca Peak","La Plata Peak")
feet = c(14433,14421,14420,14345,14336)
ascents = c(12611,8915,6859,4525,8485)
CO14ers = data.frame(id=id,name=name,feet=feet,ascents=ascents)
CO14ers
12*(CO14ers$feet)
mean(CO14ers$feet)
plot(CO14ers$feet, type="l")
plot(CO14ers$feet, type="h")
plot(CO14ers$feet, type="b")

#-- Import the dataset from a comma separated value file
fourteeners <- read.csv("C:/job_search/appian/fourteeners.csv")

#-- View the data frame
View(fourteeners)


#-- View the class attributes for the data frame and vector
class(fourteeners)
class(fourteeners$Rank)

#--Count the records in a data frame
nrow(fourteeners)

#--Find which fourteeners I have climbed with 1 or more daughters
fourteeners[fourteeners$With.Daughters > 0,]
View(fourteeners[fourteeners$With.Daughters > 0,])

#--Find which fourteeners I have not climbed with any daughters
fourteeners[fourteeners$With.Daughters == 0,]

#--calculate the average elevations for fourteeners
mean(fourteeners$Elevation)
WithDaughters=fourteeners[fourteeners$With.Daughters > 0,]
mean(WithDaughters$Elevation)

#--Create plot graphs of the elevation for fourteeners using lines, points, histograms, and both lines and points

plot(fourteeners$Elevation)
plot(fourteeners$Elevation, type="l")
plot(fourteeners$Elevation, type="p")
plot(fourteeners$Elevation, type="h")
plot(fourteeners$Elevation, type="b")

#--Create plot graphs of the member ascents for fourteeners using lines, points, histograms, and both lines and points

plot(fourteeners$Member.Ascents)
plot(fourteeners$Member.Ascents, type="b")
plot(fourteeners$Member.Ascents, type="l")
plot(fourteeners$Member.Ascents, type="p")
plot(fourteeners$Member.Ascents, type="h")


#--Create a boxplot graph with a notch showing of the average elevation for fourteeners 

boxplot(fourteeners$Elevation)
boxplot(fourteeners$Elevation, main = "Altitude in feet above Sea Level", xlab = "Elevation", ylab = "Rank", border = "brown", horizontal = TRUE, notch = TRUE)
boxplot(WithDaughters$Elevation, main = "Altitude in feet above Sea Level", xlab = "Elevation", ylab = "Rank", border = "brown", horizontal = TRUE, notch = TRUE)

#--Create a linear model and determine the P-value. 

linearmod <- lm ((fourteeners$Elevation) ~ (fourteeners$Member.Ascents), data = fourteeners)
summary(linearmod)
