create table product(
p_id int not null,
name varchar(20),
price number(10),
total_oders_frominteger default 0,
stock int not null,
s_id int not null,
cat_id int not null,
c_id int not null,
primary key(p_id),
foreign key (s_id) references supplier(s_id)ON DELETE CASCADE,
foreign key (cat_id) references category(cat_id)ON DELETE CASCADE,
foreign key (c_id) references customer(c_id)ON DELETE CASCADE
);


create table orders(
o_id int not null,
orderdate varchar(20),
deliverystatus varchar(20),
quantity int not null,
c_id int not null,
p_id int not null,
co_id int not null,
primary key(o_id),
foreign key (c_id) references customer (c_id)ON DELETE CASCADE,
foreign key (p_id) references product (p_id)ON DELETE CASCADE,
foreign key (co_id) references courrier (co_id)ON DELETE CASCADE
);


create or replace trigger t_1
after insert or update of o_id on orders
for each row

declare
     total product.total_oders_from%type; 

begin
     select total_oders_from into total from product where p_id=:new.p_id;
     total:=total+3;
     update product set total_oders_from=total where p_id=:new.p_id;
end;

 
show error trigger t_1;
show error trigger t_2;


