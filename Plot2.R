NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
## Have total emissions from PM2.5 decreased in the Baltimore City, 
## Maryland (fips=="24510") from 1999 to 2008? 
## Use the base plotting system to make a plot answering this question.
baltimo <- subset(NEI, fips == "24510")
baltimo1 <- aggregate(Emissions ~ year, sum, data = baltimo)
barplot(baltimo1$Emissions, main = "Total emissions in Baltimore", xlab = "Year", ylab = "Total Emissions", names.arg = baltimo1$year)
dev.copy(png, "plot1.png", width = 480, height = 480)
dev.off()









