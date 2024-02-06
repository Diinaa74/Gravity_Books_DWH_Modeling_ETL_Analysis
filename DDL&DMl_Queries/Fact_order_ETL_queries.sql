--### Extract Fact_Sales Data ###
select c.customer_id,
       o.book_id,
	   cast(c.order_date as date) as orderDate,
	   c.shipping_method_id,
	   o.line_id,
	   o.order_id,
	   o.price
from order_line o join cust_order c
on o.order_id = c.order_id

where o.line_id >? --last_OrderLine_ID
and c.order_date >=? --last_load_date
and c.order_date <? --system start time

--Get last_load_date for first time 
select last_load_date
from Gravity_Books_DW.dbo.Meta_Loading_Date

--Get last_orderLineID for first time 
select OrderLine_ID
from Gravity_Books_DW.dbo.Meta_Loading_Date

-- LookUP for dateSK
select DateSK,[Date] 
from Gravity_Books_DW.dbo.DimDate

-- LookUP for Cusomer_SK
select Customer_SK, CustomerID_BK
from Gravity_Books_DW.dbo.DimCustomer

-- LookUP for Book_SK
select Book_SK, BookID_BK
from Gravity_Books_DW.dbo.DimBook

-- LookUP for Shipping_mehtod_SK
select Method_SK, MethodID_BK
from Gravity_Books_DW.dbo.DimShipping_method

-- Update last load date and last OrderLine_ID -- 
update Meta_Loading_Date
Set Last_load_date = ,OrderLine_ID = ?


-- Get last_loaded_ORderLine_ID --
Select max(Line_id) as updated_OrderLine_ID
from Fact_order_sales



