create database netflix_db;
select * from netflix_data;

-- 1) total number of titles in dataset
select count(*)
from netflix_data;

-- 2) count of movies and TV shows
select type,count(*)
from netflix_data
group by type;

-- 3) top country producing the content
select country,count(*) as total
from netflix_data
group by country
order by total desc
limit 1;

-- 4) top 5 genres from the data
select genre,count(*) as total
from netflix_data
group by genre
order by total desc
limit 5;

-- 5) Most common rating
select rating,count(*) as total
from netflix_data
group by rating
order by total desc 
limit 5;

-- 6) number of titles released after 2015
select count(*) as total_movies_after_2015
from netflix_data
where release_year>2015;

-- 7) Directors with most content 
-- Null is of missing data there are 2634 missing director names
select director, count(*) as total
from netflix_data
group by director
order by total desc
limit 5;

-- 8) Longest movie duration
select title, duration
from netflix_data
where type="movie"
order by duration desc
limit 1;

-- 9) count of missing values
select director,count(*) as total_null_count      #nulls in director 
from netflix_data
where director="NUll"
group by director;

select cast,count(*) as total_null_count          #nulls in cast
from netflix_data
where cast is NUll
group by cast;

select country ,count(*) as total_null_count      #nulls in country
from netflix_data
where country is NUll
group by country;

-- 10) Top 3 most frequent actors
select cast,count(*) as Total_no_of_times
from netflix_data
group by cast
order by total_no_of_times desc
limit 4;

