
#-- Import the dataset from a comma separated value file
fourteeners <- read.csv("C:/job_search/appian/fourteeners.csv")

#-- View the data frame
View(fourteeners)


#-- View the class attributes for the data frame for vector
class(fourteeners)
class(fourteeners$Rank)

#--calculate the average height elevation for fourteeners
mean(fourteeners$Elevation)


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


#--Create a linear model and determine the P-value. There appears to be a to see there is a correlation between elevation and member ascents. 

linearmod <- lm ((fourteeners$Elevation) ~ (fourteeners$Member.Ascents), data = fourteeners)
summary(linearmod)