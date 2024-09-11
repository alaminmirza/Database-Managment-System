create table Role_Class(
        RC_ID number(9) Not Null,
        RC_Title varchar(30),
        RC_RoleDescription varchar(30) Not Null,
        primary key(RC_RoleDescription )
);

create table User_Class(
        ID number(9) Not Null,
        userName varchar(30) Not Null,
        Email varchar(30),
        Address varchar(30),
        primary key(ID),
        primary key(userName)
);

create table Patient_Class(
        PC_ID number(9) Not Null primary key,
        PC_Name varchar(30) Not Null primary key,
        PC_Address varchar(30),
        PC_Mobile number(11) Not Null,
        PC_Email varchar(30),
        primary key(PC_ID ),
        primary key(PC_Name),
        primary key(PC_Mobile)
);

create table Donor_Class(
        D_ID number(9) Not Null,
        D_Name varchar(30) Not Null,
        D_Address varchar(30),
        D_Mobile number(11) Not Null,
        D_Email varchar(30),
        D_Donate_Blood number(10) Not null,
        primary key(D_ID),
        primary key(D_Name),
        primary key(D_Mobile)
        
);

create table Blood_Class(
        BC_ID number(9) Not Null,
        BC_DonerCode number(9) Not Null,
        BC_BloodGroup varchar(30),
        BC_BloodType varchar(30),
        primary key(BC_ID),
        primary key(BC_DonerCode)
);

create table Stock_Class(
        SC_ID number(9) NOT NULL,
        SC_BG varchar(30),
        SC_BT varchar(30),
        SC_StockNumber number(11),
        primary key(SC_ID)
       
);

create table Oder_Class(
        OC_ID number(9) NOT NULL,
        OC_BloodGroup varchar(30),
        OC_BloodType varchar(30),
        SC_OderType varchar(30),
        SC_OderNumber number(11),
        SC_OderCustomerID number,
        primary key(OC_ID)
);