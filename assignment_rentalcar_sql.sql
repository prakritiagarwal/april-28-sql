-- Q1
INSERT INTO `rental_records` Select null, 'SBA1111A', customer_id, 
now(), DATE_ADD(CURDATE(), INTERVAL 10 day), now()
from Customers where name = 'Angel'

-- Q2
INSERT INTO `rental_records` Select null, 'GA5555E', customer_id, 
DATE_ADD(CURDATE(), INTERVAL 1 day), DATE_ADD(CURDATE()+1, INTERVAL 3 month), now()
from Customers where name = 'Kumar'

--Q3
select v.veh_reg_no, v.brand, c.name, r.start_date, r.end_date
From rental_records r inner join Vehicles v on r.veh_reg_no = v.veh_reg_no
inner join Customers c on c.customer_id = r.customer_id
order by v.category, r.start_date

--Q4
select * from rental_records where end_date < now() 

--Q5
select r.veh_reg_no, c.name, r.start_date, r.end_date
From rental_records r
inner join Customers c on c.customer_id = r.customer_id
where '2012-01-10' between r.start_date and r.end_date

--Q6
select r.veh_reg_no, c.name, r.start_date, r.end_date
From rental_records r
inner join Customers c on c.customer_id = r.customer_id
where now() between r.start_date and r.end_date

--Q7
select r.veh_reg_no, c.name, r.start_date, r.end_date
From rental_records r
inner join Customers c on c.customer_id = r.customer_id
where (r.start_date BETWEEN '2012-01-03' AND '2012-01-18')
        OR
        (r.end_date BETWEEN '2012-01-03' AND '2012-01-18')
        OR
        (r.start_date <= '2012-01-03' AND r.end_date > '2012-01-18')


--Q8
SELECT veh_reg_no, brand, v.desc
FROM vehicles v
WHERE veh_reg_no NOT IN (
	SELECT veh_reg_no FROM rental_records WHERE
		start_date < '2012-01-10' AND end_date > '2012-01-10'
	) 

--Q9
SELECT veh_reg_no, brand, v.desc
FROM vehicles v
WHERE veh_reg_no NOT IN (
	SELECT veh_reg_no FROM rental_records r WHERE
		 (r.start_date BETWEEN '2012-01-03' AND '2012-01-18')
        OR
        (r.end_date BETWEEN '2012-01-03' AND '2012-01-18')
        OR
        (r.start_date <= '2012-01-03' AND r.end_date > '2012-01-18')
	) 
    
--Q10
SELECT veh_reg_no, brand, v.desc
FROM vehicles v
WHERE veh_reg_no IN (
	SELECT veh_reg_no FROM rental_records r WHERE
		 (r.start_date BETWEEN curdate() AND date_add(curdate(), interval 10 day))
        OR
        (r.end_date BETWEEN curdate() AND date_add(curdate(), interval 10 day))
        OR
        (r.start_date <= curdate() AND r.end_date > date_add(curdate(), interval 10 day))
	) 
    


