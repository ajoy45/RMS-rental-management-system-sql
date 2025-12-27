-- 1.Retrieve booking information along with Customer name and Vehicle name.
select
  b.booking_id,
  u.name as customer_name,
  v.name as vehicle_name,
  b.start_date,
  b.end_date,
  b.status
from
  bookings as b
  inner join users as u on u.user_id = b.booking_id
  inner join vehicles as v on v.vehicle_id = b.booking_id;

-- 2. Find all vehicles that have never been booked.
select v.vehicle_id,
       v.name,
       v.type,
       v.model,
       v.registration_number,
       v.rental_price,
       v.status
from vehicles v
where not exists (
    select *
    from bookings b
    where b.vehicle_id = v.vehicle_id
);

-- 3. Retrieve all available vehicles of a specific type (e.g. cars).
select * from vehicles as v
where v.type='car' and v.status='available';

-- 4.Find the total number of bookings for each vehicle and display only those vehicles that have more than 2 bookings.
select v.name as vehicle_name,count(b.booking_id) as total_bookings from vehicles as v
inner join bookings as b
  on b.vehicle_id=v.vehicle_id
group by vehicle_name
having count(b.booking_id)>2; 


