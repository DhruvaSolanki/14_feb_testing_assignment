SELECT * FROM library_management_system.creat_membership;
select * from creat_membership where Membership_ID = 1001 or Membership_ID = 1002
select * from creat_membership where Membership_ID between 1 and 3 /* data does not show */
select Customer_name from creat_membership where Membership_ID in (1001,1002,1003)
select * from creat_membership where Customer_name like 'r%'
select * from creat_membership order by Customer_name desc
select * from creat_membership order by Customer_name asc