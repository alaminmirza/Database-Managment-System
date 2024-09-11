select * from category;

select * from supplier;

select * from customer;

select * from product;

select * from courrier;

select * from orders;

select * from Online_shop;


alter table category add cat_type varchar(10);

alter table category modify cat_type number(10) default 0000;

alter table category rename column cat_type to cat_design;

update supplier set phone='01725596367' where name='Mona';

alter table category drop column cat_design;

select o_id,orderdate,deliverystatus,quantity from orders;

select distinct(price) from product;

select(price/5) from product where p_id=18152;

select o_id,orderdate,deliverystatus from orders where quantity>15;

select c_id,email,name from customer where password=12 or password=16;

select p_id,stock,name from product where price between 30000 and 80000;
select p_id,stock,name from product where price not between 30000 and 80000;

select o_id,c_id,p_id,co_id from orders where quantity in(13,20);
select c_id,email,phone from customer where password not in(15,20);

select s_id,phone,name from supplier where address like '%Gulsan%';

select p_id,name,stock from product order by stock desc;

select max(stock) from product;
select min(price) from product;
select stock,min(price),max(price) from product group by stock;
select count(distinct price) from product;
select avg(nvl(price,0)) from product;

select price,count(p_id) from product  where stock>156 group by price;

select price,count(p_id) from product  where stock<155 group by price;

from product 
group by price
having count(stock)<14;

from product 
group by stock
having count(price)<40000;

select c_id,email from customer where email in (select email from customer where name='Kawser');


select p.name, s.name from product p join supplier s
on p.s_id=s.s_id;
select p.name,p.price,o.orderdate from product p  join orders o using(p_id);


select p.name,o.orderdate from product p natural join orders o; 


select p.name,p.price,o.orderdate from product p left outer join orders o using(p_id);
 
select o.orderdate,o.deliverystatus,p.name from orders o right outer join product p using(p_id);

select c.name,c.email,o.orderdate from customer c full outer join orders o using(c_id);
 

select quantity from orders join product
using(p_id)
where name='Mobile';

 select quantity from orders join onlineshop
using(p_id)
where name='Mobile';

alter table supplier add cars number(10) default 00000;





