-- : Berapa rata-rata umur customer jika dilihat dari marital statusnya ?
select "Marital Status", avg(age) from customer  
group by "Marital Status"

-- Berapa rata-rata umur customer jika dilihat dari gender nya
select gender, AVG(age) from "customer"
group by gender

-- Tentukan nama store dengan total quantity terbanyak! 
select str.storename, sum(tr.qty) total
from store as str
join transaction as tr
			on str.storeid = tr.storeid 
group by str.storename
order by total desc

-- Tentukan nama produk terlaris dengan total amount terbanyak!
select pr."Product Name" Product, sum (tr.totalamount) amount
from product pr
join transaction as tr
			on pr.productid = tr.productid
group by Product
order by amount desc
join transaction as tr
			on pr.productid = tr.productid
group by Product
order by amount desc
