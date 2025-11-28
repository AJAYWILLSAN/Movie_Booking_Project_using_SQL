use movie_booking;
select * from movies;
select title,Genre from movies;
select distinct Genre from movies;
select * from customers where city='chennai';
select * from booking where seatsbooked>3;
select * from Payment where status='pending';
select * from movies where releasedate between '2023-01-01'AND'2024-01-01';
select * from shows where ticketprice between 200 and 400;
select * from customers where name like'c%';
select * from movies order by releasedate asc;
select * from booking order by bookingdate desc;
select customerid,sum(seatsbooked)as totalseats from booking group by customerid;
select bookingid,sum(amount)as totalamount from payments group by bookingid;
select showid,count(*)as totalbooking from bookings group by showid;
select customerid,count(*)as tableshows from bookings group by customerid  having count(*)>2;
select showid,sum(seatsbooked)as totalseats from bookings group by showid having sum (seatsbooked)>10;
delete from bookings where bookingid=5;
delete from payments where status ='pending'and paymentdate<'2024-01-01';
set sql_safe_updates=0;
select * from customers limit 5;
select * from customers limit 5 offset 5;
select * from customers where customerid in (select customerid from bookings where showed in (select showid from shows where ticketprice>400));
select * from movies where moviesid in( select movies id from  shows where showid in(select showid from bookings group by showid having count(*)>10));
select theatername as theatername,sum (paidamount)as totalrevenue from payments p inner join booking b on p.bookingid=b.bookinid inner join shows s on b.showid =s.showid inner join theaters t on s.theaterid=t.theaterid group by t.name;
select custemerid,bookingdate,count(*)as totalbokings from bookings group by customerid ,bookingdate having count(*)>1;
   


 



