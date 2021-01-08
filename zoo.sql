-- 0 SELECT basics

SELECT population FROM world
WHERE name = 'Germany';

SELECT name, population FROM world
WHERE name IN ('Sweden', 'Norway', 'Denmark');

SELECT name, area FROM world
WHERE area BETWEEN 200000 AND 250000;

-- 1 SELECT name

-- Name start with y-
SELECT name FROM world
WHERE name LIKE 'Y%';

-- Name end with -y
SELECT name FROM world
WHERE name LIKE '%Y';

-- Name include x 
SELECT name FROM world
WHERE name LIKE '%x%';

-- Name end with -land 
SELECT name FROM world
WHERE name LIKE '%land';

-- Name start with C end with -ia 
SELECT name FROM world
WHERE name LIKE 'C%' AND name LIKE '%ia';

-- Name start with C end with -ia 
SELECT name FROM world
WHERE name LIKE 'C%%ia';

SELECT name FROM world
WHERE name LIKE '%oo%';

-- Name has at least 3 'a'
SELECT name FROM world
WHERE name LIKE '%a%a%a%';

SELECT name FROM world
WHERE name LIKE '_t%'
ORDER BY name;

-- 9
-- 10 
SELECT name FROM world
 WHERE name LIKE '____'

-- 11
SELECT name
FROM world
WHERE name LIKE capital;

-- 12
SELECT name
FROM world
WHERE capital LIKE '%_City';

-- 13

-- 14

-- 15