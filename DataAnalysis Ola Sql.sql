create database Ola;
USE Ola;

SHOW DATABASES;
Use ola;

create view SUCCESSFUL_BOOKINGS AS
SELECT * 
FROM Booking
WHERE Booking_Status = 'Success';

SELECT * FROM SUCCESSFUL_BOOKINGS;

create view ride_distance_of_vehicles as
SELECT Vehicle_Type, AVG(Ride_Distance)
as avg_distance From booking
Group BY Vehicle_Type;

select count(*) from booking
where Booking_Status = 'Canceled by Customer';

 select Customer_ID, count(Booking_ID) as total_rides
 From booking
 group by Customer_ID
 order by total_rides desc limit 5;
 
 select count(*) from booking
 where Canceled_Rides_by_Driver = 'Personal & Car related issue';
 
 select max(Driver_Ratings) as max_rating,
 min(Driver_Ratings) as min_rating
 From booking where Vehicle_Type = 'Prime Sedan';
 
 select * from booking where Payment_Method = 'UPI';
 
 select Vehicle_Type, avg(Customer_Rating) as avg_customer_rating
 From booking
 group by Vehicle_Type;
 
 select sum(Booking_Value) as total_successful_value
 from booking
 where Booking_Status = 'Success';
 
 select Booking_ID, Incomplete_Rides_Reason
 From booking
 Where Incomplete_Rides = 'Yes';
 





