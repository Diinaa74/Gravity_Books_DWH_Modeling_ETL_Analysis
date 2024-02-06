Gravity Books Data Warehouse

Gravity Books Data Warehouse is a comprehensive project that involves the creation of a data warehouse for managing and analyzing book-related data using Microsoft SQL Server technologies.

Table of Contents
Introduction
Datawarehouse Schema
Implementation
SSMS
SSIS
SSAS
Power BI
Installation
Usage
Contributing
License
Introduction
The Gravity Books Data Warehouse project aims to provide a robust and efficient solution for managing book-related data. It incorporates a Snowflake schema, utilizes SQL Server Management Studio (SSMS) for implementation, employs Slowly Changing Dimension (SCD) techniques in the Dimensions' ETL using SQL Server Integration Services (SSIS), performs analysis through SQL Server Analysis Services (SSAS), and creates insightful dashboards using Power BI.

Datawarehouse Schema
The Snowflake schema used in this project provides a structured and normalized approach to organizing the data. For a visual representation, refer to the Schema Diagram.


Implementation
SSMS
The implementation of the data warehouse schema is carried out using SQL Server Management Studio (SSMS). All scripts and queries can be found in the SQL Scripts directory.

SSIS
SQL Server Integration Services (SSIS) is employed for Extract, Transform, Load (ETL) processes. Special emphasis is given to implementing Slowly Changing Dimension (SCD) techniques for maintaining historical data in dimensions.

SSAS
SQL Server Analysis Services (SSAS) is utilized for multidimensional analysis, providing a deeper insight into the book-related data.

Power BI
Power BI is used to create interactive and visually appealing dashboards for the Gravity Books Data Warehouse. A sample dashboard can be found in the Power BI Dashboard directory.

Installation
To set up the project locally, follow these steps:

Clone the repository:
bash
Copy code
git clone https://github.com/your-username/gravity-books-data-warehouse.git
Execute the SQL scripts in the SQL Scripts directory using SSMS to create the data warehouse schema.

Set up SSIS packages by importing and configuring the packages in the SSIS Packages directory.

Deploy and process SSAS cubes using SQL Server Data Tools or Visual Studio.

Open the Power BI Dashboard file in Power BI Dashboard and configure the data sources.
