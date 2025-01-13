# Load necessary libraries
library(readr)
library(lubridate)

# Load the dataset
Online_Sales_Data <- read_csv("C:/Users/samay/InsightCraft/Online Sales Data.csv")

# View the first few rows of the dataset
head(Online_Sales_Data)

# convert date to date type
Online_Sales_Data$Date <- as.Date(Online_Sales_Data$Date, format="%Y-%m-%d")

# check for missing values
summary(Online_Sales_Data)

# generate key metrics
# 1. calculate total revenue
total_revenue <- sum(Online_Sales_Data$`Total Revenue`, na.rm=TRUE)
total_revenue

# calculate the total units sold
total_units_sold <- sum(Online_Sales_Data$`Units Sold`, na.rm=TRUE)
total_units_sold

# Exploratory Data Analysis (EDA)
# 1. Sales Trend Over Time
library(ggplot2)
ggplot(Online_Sales_Data, aes(x=Date, y=`Total Revenue`)) + geom_line() + labs(title = "Sales Trend Over Time", x = "Date", y = "Total Revenue") + theme_minimal()

# 2. Revenue by Product Category
library(dplyr)
revenue_by_category <- Online_Sales_Data %>%
  group_by(`Product Category`) %>%
  summarise(Total_Revenue = sum(`Total Revenue`, na.rm=TRUE),
            Units_sold = sum(`Units Sold`, na.rm=TRUE))

ggplot(revenue_by_category, aes(x = `Product Category`, y = Total_Revenue, fill = `Product Category`)) +
  geom_bar(stat="identity") +
  labs(title = "Revenue by Product Category") +
  theme_minimal()

# 3. Revenue By Region
revenue_by_region <- Online_Sales_Data %>%
  group_by(Region) %>%
  summarise(Total_Revenue = sum(`Total Revenue`, na.rm=TRUE))

ggplot(revenue_by_region, aes(x = Region, y = Total_Revenue, fill = Region)) +
  geom_bar(stat = "identity") +
  labs(title = "Revenue by Region") +
  theme_minimal()

# 4. Revenue By Payment Method
revenue_by_payment_method <- Online_Sales_Data %>%
  group_by(`Payment Method`) %>%
  summarise(Total_Revenue = sum(`Total Revenue`, na.rm = TRUE))

ggplot(revenue_by_payment_method, aes(x = `Payment Method`, y = Total_Revenue, fill = `Payment Method`)) +
  geom_bar(stat = "identity") +
  labs(title = "Revenue by Payment Method") +
  theme_minimal()

# 5. Units Sold by Product Category
units_sold_by_category <- Online_Sales_Data %>%
  group_by(`Product Category`) %>%
  summarise(Units_Sold = sum(`Units Sold`, na.rm = TRUE))

ggplot(units_sold_by_category, aes(x = `Product Category`, y = Units_Sold, fill = `Product Category`)) +
  geom_bar(stat = "identity") +
  labs(title = "Units Sold by Product Category") +
  theme_minimal()

# 6. Units Sold by Region
units_sold_by_region <- Online_Sales_Data %>%
  group_by(Region) %>%
  summarise(Units_Sold = sum(`Units Sold`, na.rm = TRUE))

ggplot(units_sold_by_region, aes(x = Region, y = Units_Sold, fill = Region)) +
  geom_bar(stat = "identity") +
  labs(title = "Units Sold by Region") +
  theme_minimal()
