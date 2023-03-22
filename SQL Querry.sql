SELECT * FROM library_management_system.registration;
insert into registration(User_ID,User_Name,Gender,User_type,Email_id,Password,Phone_Number)
                  values('4','mandvi','f','other','m@gmail.com','12345','852369740');
insert into registration(User_ID,User_Name,Gender,User_type,Email_id,Password,Phone_Number)
values('5','janki','f','student','j@gmail.com','12345','741258630');

insert into student(Student_ID,Student_Name,Gender,Student_Address,Student_Number,Email_id,Standard,Subject,Book_price)
values(1,'ram','m','surat','1234560789','r@gmail.com','6','Maths','67');
insert into student(Student_ID,Student_Name,Gender,Student_Address,Student_Number,Email_id,Standard,Subject,Book_price)
values(2,'sita','f','surat','201345987','s@gmail.com','7','Gujarati','60'),(5,'janki','f','surat','258931470','j@gmail.com','8','English','70');

insert into creat_membership(Membership_ID,Customer_name,Customer_number,Gender,Address,Age,Duration_of_membership,User_type,Area_of_interest_in_book,Language_of_book,Email_ID)
values(1001,'ram','1478523690','m','surat','12','1 Year','300','Student','Study book, Story book','Hindi, English, Gujarati');
 insert into creat_membership(Membership_ID,Customer_name,Customer_number,Gender,Address,Age,Duration_of_membership,User_type,Area_of_interest_in_book,Language_of_book,Email_ID)
 values(1002,'sita','852147630','f','surat','13','1 Year','Student','Study book, Story book','Hindi, English, Gujarati','s@gmail.com');
 insert into creat_membership(Membership_ID,Customer_name,Customer_number,Gender,Address,Age,Duration_of_membership,User_type,Area_of_interest_in_book,Language_of_book,Email_ID)
 values  (1003,'Luxman','852369170','m','Ahemdabad','14','1 Year','other','Study book, Story book','Hindi, English, Gujarati','l@gmail.com'),
         (1004,'mandvi','852369410','f','Ahemdabad','34','6 Months','other','Mythology book, Articles, Historical fiction','Hindi, English, Gujarati','m@gmail.com'),
         (1005,'janki','741258930','f','surat','45','6 Months','Student','Humour and satire, Horror','Hindi, English, Gujarati','j@gmail.com ');


 insert into type_of_book(Book_ID,Book_Title,Author,Publisher,Length,Description,price,Language)
 values (001,'Grandmas Bag of Stories','Sudha Murty','Penguin Books India PVT, Limited, 2015','192 pages','Who can resist...','150','English');

 insert into type_of_book(Book_ID,Book_Title,Author,Publisher,Length,Description,price,Language)
 values (002,'Wings of fire','APJ Abdul Kalam','Universities Press','180 pages','Every common man...','169','English');
 insert into type_of_book(Book_ID,Book_Title,Author,Publisher,Length,Description,price,Language)
 values (003,'Lifes Amazing Secrets','Gaur Gopal Das','Penguin Ananda (8 October 2018)','232 pages','While navigating their ..','129','English'),
        (004,'The Subtle Art of Intraday Trading','Indrazith Shantharaj','Notion Press (17 November 2021)','164 pages','Intraday trading is...','299','English');
	  
 insert into add_to_cart(Book_Number,Member_Name,Book_Name,Description,price,Quantity)
 values (004,'ram','The Subtle Art of Intraday Trading','Intraday trading...','299','1'),
        (002,'sita','Wings of fire','Every common...','169','1');
     
     /* update query */
     update add_to_cart set price = 299 where Book_Number = 2
/*	update add_to_cart set price = 300 where Member_Name = 'sita' */ /* can't update by member_name */
  /*   update type_of_book set price = 300 where Book_ID = 4  */ 
  update type_of_book set Language = 'Hindi' where Book_ID = 2 and Book_Title = 'Wings of fire'
  
/* select query */
select * from registration
select User_ID, User_Name from  registration
select User_ID as U_ID, User_Name as U_name from registration
select distinct Address from creat_membership
select * from creat_membership where 
select * from creat_membership where Membership_ID = 1001 or Membership_ID = 1002
select * from creat_membership where Membership_ID between 1 and 3 /* data does not show */
select Customer_name from creat_membership where Membership_ID in (1001,1002,1003)
select * from creat_membership where Customer_name like 'r%'
select * from creat_membership order by Customer_name desc
select * from creat_membership order by Customer_name asc


     
     
    

    
    










