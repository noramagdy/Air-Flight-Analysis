select * from flight_delays;
select * from flight_delays limit 10;
select count(8) from flight_delays;
select distinct year from flight_delays;
select distinct month from flight_delays;
select distinct dayofweek from flight_delays;
select sum(airtime) from flight_delays;
select avg(arrtime) from flight_delays;
select avg(deptime) from flight_delays;
select max(distance) from flight_delays;
select min(distance) from flight_delays;
select avg(arrtime) , origin from flight_delays group by origin order by avg;
select avg(arrtime) , origin from flight_delays group by origin order by avg(arrtime);
select sum(airtime) , month from flight_delays group by month;
select avg(deptime) , origin from flight_delays where distance >200 group by origin , distance;
select avg(deptime) , origin , sum(distance) from flight_delays where distance >200 group by origin;
select count(flightnum) , origin from flight_delays group by origin order by count DESC;
select count(origin) distinct from flight_delays;
select count(origin) from flight_delays group by origin;


select count(tailnum) , tailnum , dayofweek from flight_delays where dayofweek = 2 and dest in ('PHX' , 'SEA') group by tailnum , dayofweek  order by count DESC limit 5;



select avg(dist) from (select tailnum, sum(distance) as dist from flight_delays group by tailnum having sum(distance)>1000000) as s ;