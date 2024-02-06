-- ### Extract Fact order History data
Create View All_orders_History 
As
(
select order_id,

       max(iif(os.status_value = 'Order Received' , oh.status_date, NULL))as Recieved_At,
	   max(iif(os.status_value = 'Pending Delivery' , oh.status_date, NULL)) as Pending_delivery_at,
	   max(iif(os.status_value = 'Delivery in Progress' , oh.status_date, NULL))as Delivery_in_progress_at,
	   max(iif(os.status_value = 'Delivered' , oh.status_date, NULL))as Delivered_at,
	   max(iif(os.status_value = 'Returned' , oh.status_date, NULL))as returned_at,
	   max(iif(os.status_value = 'Cancelled' , oh.status_date, NULL))as cancelled_at
From order_history oh
join order_status os
ON oh.status_id = os.status_id
group by order_id
)
Select * from Gravity_Books_DW.dbo.Fact_Order_History

Select oh.order_id,history_id,status_id,
        Cast(Recieved_At as date) as recieved_At,
		Cast(Pending_delivery_at as date) as Pending_delivery_at,
		cast(Delivery_in_progress_at as date) as Delivery_in_progress_at,
		cast(Delivered_at as date) as Delivered_at,
		cast(returned_at as date) as returned_at,
		cast(cancelled_at as date) as cancelled_at

from All_orders_History aoh
join order_history oh
on aoh.order_id = oh.order_id

select @@ROWCOUNT

-- ### LookUP for status_SK ###
select Status_SK, StatusID_BK
from Gravity_Books_DW.dbo.DimStatus

-- ### LookUP for Date_SK ###
Select DateSk, [Date]
from DimDate

 