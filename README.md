<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Gravity Books Data Warehouse</title>
</head>

<body>

  <h1>Gravity Books Data Warehouse</h1>

  <p><strong>Gravity Books Data Warehouse</strong> is a comprehensive project that involves the creation of a data warehouse
    for managing and analyzing book-related data using Microsoft SQL Server technologies.</p>

  <h2>Table of Contents</h2>
  <ul>
    <li><a href="#introduction">Introduction</a></li>
    <li><a href="#datawarehouse-schema">Datawarehouse Schema</a></li>
    <li><a href="#implementation">Implementation</a>
      <ul>
        <li><a href="#ssms">SSMS</a></li>
        <li><a href="#ssis">SSIS</a></li>
        <li><a href="#ssas">SSAS</a></li>
        <li><a href="#power-bi">Power BI</a></li>
      </ul>
    </li>
    <li><a href="#installation">Installation</a></li>
  
  </ul>

  <h2>Introduction</h2>

  <p>The <strong>Gravity Books Data Warehouse</strong> project aims to provide a robust and efficient solution for managing
    book-related data. It incorporates a Snowflake schema, utilizes SQL Server Management Studio (SSMS) for implementation,
    employs Slowly Changing Dimension (SCD) techniques in the Dimensions' ETL using SQL Server Integration Services (SSIS),
    performs analysis through SQL Server Analysis Services (SSAS), and creates insightful dashboards using Power BI.</p>

  <h2>Datawarehouse Schema</h2>

  <p>The Snowflake schema used in this project provides a structured and normalized approach to organizing the data.</p>

  <img src="DWH_Modelling_Diagram.png" alt="Snowflake Schema Diagram" width=600 height = 400 />

  <h2>Implementation</h2>

  <h3>SSMS</h3>

  <p>The implementation of the data warehouse schema is carried out using SQL Server Management Studio (SSMS). All scripts
    and queries can be found in the <a href="DDL&DMl_Queries/">SQL Scripts</a> directory.</p>

  <h3>SSIS</h3>

  <p>SQL Server Integration Services (SSIS) is employed for Extract, Transform, Load (ETL) processes. Special emphasis is
    given to implementing Slowly Changing Dimension (SCD) techniques for maintaining historical data in dimensions.</p>

  <figcaption>SSIS Package - Dim_Book_ETL</figcaption>
  <img src="ETL_SSIS_Pictures/dimbook.png" alt="Dim_Book_ETL" style="width: 600px; height: 500px;" />
  
  <figcaption>SSIS Package - Dim_Customer ETL</figcaption>
  <img src="ETL_SSIS_Pictures/customer.png" alt="Dim_Customer_ETL" style="width: 600px; height: 500px;" />
  
  <figcaption>SSIS Package - Fact_order_Sales ETL</figcaption>
  <img src="ETL_SSIS_Pictures/fact2.png" alt="Fact_order_Sales_ETL" style="width: 600px; height: 500px;" />
  

  <h3>SSAS</h3>

  <p>SQL Server Analysis Services (SSAS) is utilized for multidimensional analysis, providing a deeper insight into the
    book-related data.</p>

  <p float="left">
  <img src="Analysis_SSAS_pictures/Sales_over_years.png" alt="Sales over year" style="width: 300px; height: 200px;" />
  &nbsp;&nbsp;&nbsp;
  <img src="Analysis_SSAS_pictures/numOfOrders_Per_ShippingMethod.png" alt="Num of orders Per Shipping method" style="width: 300px; height: 200px;" />
</p>


  <h3>Power BI</h3>

  <p>Power BI is used to create interactive and visually appealing dashboards for the Gravity Books Data Warehouse. A
    sample dashboard can be found in the <a href="Gravity_Books_Dashboard/">Power BI Dashboard</a> directory.</p>

    
  <img src="Gravity_Books_Dashboard/Dashboard.png" alt="Dim_Book_ETL" style="width: 800px; height: 500px;" />

  <h2>Installation</h2>

  <p>To set up the project locally, follow these steps:</p>
<ol>
  <li> Clone the repository:</li>
  <pre><code>git clone https://github.com/your-username/gravity-books-data-warehouse.git</code></pre>
  <li>Execute the SQL scripts in the <a href="DDL&DMl_Queries/">SQL Scripts</a> directory using SSMS to create the data
      warehouse schema. </li>
  <li>Set up SSIS packages by importing and configuring the packages in the <a href="Gravity_Books_DWH_ETL_SSIS/">SSIS
        Packages</a> directory.</li>
  <li>Deploy and process SSAS cubes using in the <a href="Gravity_Books_analysis_With_SSAS/">SSAS
        Cube</a> directory.</li>
  <li>Open the Power BI Dashboard file in <a href="Gravity_Books_Dashboard/">Power BI Dashboard</a> and configure the data
      sources.</li>
</ol>


</body>

</html>
