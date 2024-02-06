Create Table DimCustomer 
(
Customer_SK int identity(1,1) primary key,
CustomerID_BK int,
first_name varchar(200),
last_name varchar(200),
email varchar(350),
Source_system_code Tinyint,
Start_date datetime,
end_date datetime,
is_current int default 1
)


Create Table DimAddress(
Address_sk int identity(1,1) primary key,
AddressID_BK int,
street_number varchar(10),
street_name varchar(200),
City varchar(100),
CountryID_BK int,
Country_Name varchar(200),
Source_system_code Tinyint,
Start_date datetime,
end_date datetime,
is_current int default 1
)

Create Table Customer_Address
(
Address_FK int foreign key references DimAddress(Address_SK),
Customer_FK int foreign key references DimCustomer(customer_SK),
Source_system_code Tinyint,

)

Create Table DimBook
(
Book_SK int identity(1,1) primary key,
BookID_BK int,
Title varchar(400),
ISBN13 varchar(13),
num_pages int,
Publication_date date,
LanguageID_BK  int,
Language_Code varchar(8),
Language_Name varchar(50),
PublisherID_BK int,
Publisher_Name nvarchar(1000),
Source_system_code Tinyint,
Start_date datetime,
end_date datetime,
is_current int default 1
)

Create table DimAuthor
(
Author_SK int identity(1,1) primary key,
AuthorID_BK int,
Author_Name varchar(400),
Source_system_code Tinyint,
Start_date datetime,
end_date datetime,
is_current int default 1
)

Create table Book_Author
(
Book_FK int foreign key references DimBook(Book_SK),
Author_FK int foreign key references DimAuthor(Author_SK),
Source_system_code Tinyint,

)

Create table DimShipping_method
(
Method_SK int identity(1,1) primary key,
MethodID_BK int,
Method_Name varchar(100),
Cost Decimal(6,2),
Source_system_code Tinyint,
Start_date datetime,
end_date datetime,
is_current int default 1
)

Create Table DimStatus
(
Status_SK int identity(1,1) primary key,
StatusID_BK  int,
Status_value varchar(30),
Source_system_code Tinyint,
Start_date datetime,
end_date datetime,
is_current int default 1
)

Create Table Fact_order_sales
(
Fact_sales_SK  int identity(1,1) primary key,
DimCustomer_FK int foreign key references DimCustomer(Customer_SK),
DimBook_FK int foreign key references DimBook(Book_SK),
DimDate_FK int foreign key references DimDate(DateSK),
DimShipping_Method_FK int foreign key references DimShipping_method(method_SK),
Line_id int,
Order_id int,
Price decimal(5,2),
Created_at datetime default GETDATE()
)
Create Table Fact_Order_History
(
Fact_History_Sk int identity(1,1) primary key,
orderID_BK int, 
History_ID int,
StatusID_FK int foreign key references DimStatus(Status_sk),
Recived_at_Date_fk int foreign key references DimDate([DateSK]),
Pending_delivery_at_Date_fk int foreign key references DimDate([DateSK]),
Delivery_in_Progress_Date_fk int foreign key references DimDate([DateSK]),
Delivered_at_Date_fk int foreign key references DimDate([DateSK]),
Returned_at_Date_fk int foreign key references DimDate([DateSK]),
Cancelled_at_Date_fk int foreign key references DimDate([DateSK]),
Created_at Datetime Default GETDATE()
)