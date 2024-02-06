--### Extract DimBook Data ###
Select b.book_id,
       b.title,
	   b.isbn13,
	   b.num_pages,
	   b.publication_date,
	   bl.language_id, bl.language_code,bl.language_name,
	   p.publisher_id,p.publisher_name
from book b
left join book_language bl
on b.language_id = bl.language_id
left join publisher p
on b.publisher_id = p.publisher_id

--### Extract DimAuthor Data ###
Select a.author_id, a.author_name 
FRom author a


--### Extract DimCustomer Data ###
Select customer_id, first_name, last_name, email
from customer 

--### Extract DimAddress Data ###
Select a.address_id,a.street_number, a.street_name,a.city,
       c.country_id,c.country_name
from address a
left join country c
on a.country_id = c.country_id

--### Extract DimStatus Data ###
select status_id, status_value
from order_status 


--### Extract DimShipping_method Data ###

select method_id, method_name, cost
from shipping_method
where is_current=1

--### Extract Customer_Address Data ###
select customer_id, address_id
from Customer_Address

--### LookUp for Customer_SK ###
Select Customer_SK, CustomerID_BK
from Gravity_Books_DW.dbo.DimCustomer
where is_current = 1

--### LookUp for Address_SK ###
select Address_sk, AddressID_BK
from Gravity_Books_DW.dbo.DimAddress
where is_current = 1

--### Extract Book_Author Data ###
Select book_id, author_id
from book_author

--### LookUp for Book_SK ###
select Book_SK, BookID_BK
from Gravity_Books_DW.dbo.DimBook
where is_current = 1

--### LookUp for Author_SK ###
Select  Author_SK, AuthoeID_BK
from Gravity_Books_DW.dbo.DimAuthor
where is_current = 1

-- ### Extract Book_Author_Data ### -- 
Select *
from book_author





