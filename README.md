# InsightCraft

## Overview
InsightCraft is a comprehensive business analytics solution built in R for analyzing online sales data. The project provides tools for data cleaning, exploratory analysis, and automated report generation, delivering actionable insights through visualizations and detailed analytics reports. By focusing on key metrics like sales trends, product performance, and regional analysis, InsightCraft helps businesses make data-driven decisions.

## Features
- **Sales Trend Analysis**: Temporal analysis of sales patterns
- **Product Category Insights**: Revenue breakdown by product categories
- **Geographic Analysis**: Revenue distribution across regions
- **Payment Analytics**: Analysis of payment method preferences
- **Product Performance**: Units sold analysis by category and region
- **Revenue Correlation**: Scatter plot analysis of revenue vs. units sold
- **Top Performers**: Identification and analysis of best-selling products

## Technologies Used
- **R**: Primary programming language for data analysis
- **ggplot2**: Data visualization
- **dplyr**: Data manipulation and aggregation
- **lubridate**: Date-time data handling
- **RMarkdown**: Report generation

## Prerequisites

### Required R Packages
```R
install.packages(c(
    "ggplot2",
    "dplyr",
    "lubridate",
    "rmarkdown"
))
```

## Installation & Setup

### 1. Clone the Repository
```bash
git clone https://github.com/Samay10/InsightCraft.git
cd InsightCraft
```

### 2. Project Structure
```
InsightCraft/
├── Plots and Summary/     # Generated visualizations and analysis
├── Business_Analytics.Rmd # Main analysis notebook
├── Business_Analytics.docx # Generated Word report
├── Business_Analytics.pdf # Generated PDF report
├── InsightCraft.Rproj    # R Project file
├── LICENSE               # Project license
├── Online Sales Data.csv # Input dataset
├── README.md            # Project documentation
├── main.R              # Main R script
└── .gitignore          # Git ignore file
```

### 3. Running the Analysis

#### Option 1: Using RStudio
1. Open the `InsightCraft.Rproj` file in RStudio
2. Open and run `Business_Analytics.Rmd`
3. The analysis will generate both PDF and Word documents

#### Option 2: Using R Console
```R
# Run the main analysis script
source("main.R")

# Or render the R Markdown document
rmarkdown::render("Business_Analytics.Rmd")
```

## Output Files
The analysis generates several output files:
- `Business_Analytics.docx`: Detailed report in Word format
- `Business_Analytics.pdf`: PDF version of the report
- `Plots and Summary/`: Directory containing generated visualizations

## Report Contents
1. **Executive Summary**
   - Key findings and recommendations
2. **Sales Analysis**
   - Temporal trends and patterns
3. **Product Analysis**
   - Category performance and rankings
4. **Regional Insights**
   - Geographic distribution of sales
5. **Payment Analytics**
   - Payment method preferences
6. **Recommendations**
   - Data-driven business suggestions

## Contributing
We welcome contributions! Please follow these steps:
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License
This project is licensed under the GNU v3.0 License - see the file for details.

## Author
- **Samay10**

## Support
For support and questions, please:
- Open an issue in the GitHub repository
- Contact through GitHub: [@Samay10](https://github.com/Samay10)

## Acknowledgments
- Thanks to all contributors who have helped shape InsightCraft
- Special thanks to the R community for their excellent packages
