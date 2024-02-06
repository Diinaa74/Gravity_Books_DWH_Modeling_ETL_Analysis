<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Gravity Books Data Warehouse</title>
</head>

<body>

  <h1>Gravity Books Data Warehouse</h1>

  <img src="images/logo.png" alt="Gravity Books Data Warehouse Logo" />

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
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
  </ul>

  <h2>Introduction</h2>

  <p>The <strong>Gravity Books Data Warehouse</strong> project aims to provide a robust and efficient solution for managing
    book-related data. It incorporates a Snowflake schema, utilizes SQL Server Management Studio (SSMS) for implementation,
    employs Slowly Changing Dimension (SCD) techniques in the Dimensions' ETL using SQL Server Integration Services (SSIS),
    performs analysis through SQL Server Analysis Services (SSAS), and creates insightful dashboards using Power BI.</p>

  <h2>Datawarehouse Schema</h2>

  <p>The Snowflake schema used in this project provides a structured and normalized approach to organizing the data. For a
    visual representation, refer to the <a href="images/schema_diagram.png">Schema Diagram</a>.</p>

  <img src="images/schema_diagram.png" alt="Snowflake Schema Diagram" />

  <h2>Implementation</h2>

  <h3>SSMS</h3>

  <p>The implementation of the data warehouse schema is carried out using SQL Server Management Studio (SSMS). All scripts
    and queries can be found in the <a href="sql-scripts/">SQL Scripts</a> directory.</p>

  <h3>SSIS</h3>

  <p>SQL Server Integration Services (SSIS) is employed for Extract, Transform, Load (ETL) processes. Special emphasis is
    given to implementing Slowly Changing Dimension (SCD) techniques for maintaining historical data in dimensions.</p>

  <h3>SSAS</h3>

  <p>SQL Server Analysis Services (SSAS) is utilized for multidimensional analysis, providing a deeper insight into the
    book-related data.</p>

  <h3>Power BI</h3>

  <p>Power BI is used to create interactive and visually appealing dashboards for the Gravity Books Data Warehouse. A
    sample dashboard can be found in the <a href="power-bi-dashboard/">Power BI Dashboard</a> directory.</p>

  <h2>Installation</h2>

  <p>To set up the project locally, follow these steps:</p>

  <ol>
    <li>Clone the repository:</li>
    <pre><code>git clone https://github.com/your-username/gravity-books-data-warehouse.git</code></pre>

    <li>Execute the SQL scripts in the <a href="sql-scripts/">SQL Scripts</a> directory using SSMS to create the data
      warehouse schema.</li>

    <li>Set up SSIS packages by importing and configuring the packages in the <a href="ssis-packages/">SSIS
        Packages</a> directory.</li>

    <li>Deploy and process SSAS cubes using SQL Server Data Tools or Visual Studio.</li>

    <li>Open the Power BI Dashboard file in <a href="power-bi-dashboard/">Power BI Dashboard</a> and configure the data
      sources.</li>
  </ol>

  <h2>Usage</h2>

  <p>Detailed instructions on using and interacting with the Gravity Books Data Warehouse are available in the <a
      href="docs/usage-guide.md">Usage Guide</a>.</p>

  <h2>Contributing</h2>

  <p>We welcome contributions from the community. To contribute, please follow our <a href="CONTRIBUTING.md">Contribution
      Guidelines</a>.</p>

  <h2>License</h2>

  <p>This project is licensed under the <a href="LICENSE">MIT License</a>.</p>

</body>

</html>
