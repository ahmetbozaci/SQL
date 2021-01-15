-- 1
SELECT id, title
FROM movie
WHERE yr=1962;

-- 2
SELECT yr
FROM movie
WHERE title='Citizen Kane';

-- 3
SELECT id, title, yr
FROM movie
WHERE title LIKE 'Star Trek%'
ORDER BY yr;

-- 4
SELECT id
FROM actor
WHERE name = 'Glenn Close';

-- 5
SELECT id
FROM movie
WHERE title = 'Casablanca';

-- 6
SELECT name FROM casting JOIN actor
          ON casting.actorid=actor.id
          WHERE movieid= 11768;

-- 7
SELECT name FROM
       movie JOIN casting ON movie.id=movieid
             JOIN actor   ON actorid=actor.id
             WHERE movie.title='Alien';

-- 8
SELECT title FROM
       movie JOIN casting ON movie.id=movieid
             JOIN actor   ON actorid=actor.id
             WHERE actor.name='Harrison Ford';

-- 9
SELECT title FROM
       movie JOIN casting ON movie.id=movieid
             JOIN actor   ON actorid=actor.id
             WHERE actor.name='Harrison Ford' AND ord != 1;
-- 10
SELECT title, name FROM
       movie JOIN casting ON movie.id=movieid
             JOIN actor   ON actorid=actor.id
             WHERE  yr = 1962 AND ord = 1;

-- 11
SELECT yr,COUNT(title) FROM
       movie JOIN casting ON movie.id=movieid
             JOIN actor   ON actorid=actor.id
             WHERE name='Rock Hudson'
             GROUP BY yr
             HAVING COUNT(title) > 2;

-- 12
