#Task 1
SELECT * FROM movies;

#Task 2
SELECT * FROM directors;

#Task 3
SELECT COUNT(*) AS total_movies FROM movies;

#Task 4
SELECT *  FROM directors WHERE name IN ('James Cameron', 'Luc Besson', 'John Woo');

#Task 5
SELECT * FROM directors WHERE name LIKE 'S%';

#Task 6
SELECT COUNT(*) AS female_directors FROM directors WHERE gender = 1;

#Task 7
SELECT name FROM directors WHERE gender = 1 ORDER BY name ASC LIMIT 9,1;

#Task 8
SELECT original_title, popularity FROM movies ORDER BY popularity DESC LIMIT 3;

#Task 9
SELECT original_title, revenue FROM movies ORDER BY revenue DESC LIMIT 3;

#Task 10
SELECT original_title, vote_average, release_date FROM movies WHERE release_date >= '2000-01-01' ORDER BY vote_average DESC LIMIT 1;

#Task 11 
select	m.original_title from movies m join directors d on m.id=d.id where d.name='Brenda Chapman';

#Task 12
select d.name, count(d.id)as movies_count from directors d join movies m on d.id=m.director_id group by d.name order by movies_count desc limit 1;

#Task 13
select d.name, sum(m.revenue)as total_revenue from directors d join movies m on d.id=m.director_id group by d.name order by total_revenue desc limit 1;
