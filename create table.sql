drop table category;
drop table Online_shop;
drop table orders;
drop table courrier;
drop table product;
drop table customer;
drop table supplier;



create table category(
cat_id int not null,
password varchar(20),
primary key(cat_id)
);

create table supplier(
s_id int not null,
phone varchar(15),
name varchar(20),
address varchar(20),
primary key(s_id)
);


create table customer(
c_id int not null,
email varchar(20),
phone varchar(15),
name varchar(20),
password varchar(20),
primary key(c_id)
);

create table product(
p_id int not null,
name varchar(20),
price number(10),
stock int not null,
s_id int not null,
cat_id int not null,
c_id int not null,
primary key(p_id),
foreign key (s_id) references supplier(s_id)ON DELETE CASCADE,
foreign key (cat_id) references category(cat_id)ON DELETE CASCADE,
foreign key (c_id) references customer(c_id)ON DELETE CASCADE
);

create table courrier
(
 co_id int not null,
 address varchar(20), 
 name varchar(20),
 phone varchar(15),
 primary key(co_id)
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


create table Online_Shop
(
  Shop_R_NO varchar(10),
  name varchar(10),
  address varchar(10),
  phone int not null,
  p_id int not null,
  foreign key (p_id) references product (p_id)ON DELETE CASCADE
  );







