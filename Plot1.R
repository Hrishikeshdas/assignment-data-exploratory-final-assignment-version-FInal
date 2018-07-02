NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
## Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
## Using the base plotting system, make a plot showing the total PM2.5 emission from 
## all sources for each of the years 1999, 2002, 2005, and 2008.
totalNEI <- aggregate(Emissions ~ year, sum, data = NEI)
barplot(totalNEI$Emissions, main = "Total emissions from PM2.5 in USA", xlab = "Year", ylab = "Total Emissions", names.arg = totalNEI$year)
dev.copy(png, "plot1.png", width = 480, height = 480)
dev.off()



