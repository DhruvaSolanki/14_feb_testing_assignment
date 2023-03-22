create database library_management_system;
use library_management_system;

create table Registration(
User_ID  int auto_increment,
User_Name	varchar(100),
Gender varchar(10),
User_type varchar(50),
Email_ID varchar(50),
Password int,
Phone_Number int,
primary key (User_ID)
);

create table Student(
Student_ID int,
Student_Name varchar(50),
Gender varchar(10),
Student_Address varchar(100),
Student_Number int,
Email_id varchar(50),
Standard int,
Subject varchar(50),
Book_price int,
foreign key (Student_ID) references Registration(User_ID)
);

create table Creat_membership
(
Membership_ID int,
Customer_name varchar(50),
Customer_number int,
Gender varchar(10),
Address varchar(100),
Age int,
Duration_of_membership varchar(50),
User_type varchar(20),
Area_of_interest_in_book varchar(50),
Language_of_book varchar(50),
Email_ID varchar(50),
primary key (Membership_ID)
);

create table Type_of_book
(
Book_ID int,
Book_Title varchar(50),
Author varchar(50),
Publisher varchar(50),
Length varchar(50),
Description  varchar(100),
price int,
Language varchar(50),
primary key (Book_ID)
);

create table Add_to_cart(
Book_Number int,
Member_Name varchar(50),
Book_Name varchar(50),
Description  varchar(100),
price int,
Quantity int,
foreign key(Book_Number) references Type_of_book(Book_ID)
);

create table Purchase_book
(
Member_ID int,
Member_Name varchar(50),
Book_Name varchar(50),
Price int,
Quantity int,
Payment_type varchar(50),
foreign key(Member_ID) references Creat_membership(Membership_ID)
);

create table Cancel_membership
(
Member_ID int,
Member_name varchar(50),
foreign key(Member_ID) references Creat_membership(Membership_ID)
);

create table Wishlist_book
(
Book_ID int,
Book_Title varchar(50),
foreign key(Book_ID) references Type_of_book(Book_ID)
);

create table Free_Book
(
Book_ID int,
Book_Title varchar(50),
Author varchar(50),
Publisher varchar(50),
Length varchar(50),
Description  varchar(100),
price int,
Language varchar(50),
foreign key(Book_ID) references Type_of_book(Book_ID)
);

insert into Registration(User_ID,User_Name,Gender,User_type,Email_ID,Password,Phone_Number)
values('1','ram','m','student','r@gmail.com','12345','1478523690'),

insert into Registration(User_ID,User_Name,Gender,User_type,Email_ID,Password,Phone_Number)
values('2','sita','f','student','s@gmail.com','12345','852149630');
insert into Registration(User_ID,User_Name,Gender,User_type,Email_ID,Password,Phone_Number)
values('3','Luxman','m','other','l@gmail.com','12345','852369140');








 




Phone_Number 