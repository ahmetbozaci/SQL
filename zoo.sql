-- SELECT basics-0

SELECT population FROM world
WHERE name = 'Germany';

SELECT name, population FROM world
WHERE name IN ('Sweden', 'Norway', 'Denmark');

SELECT name, area FROM world
WHERE area BETWEEN 200000 AND 250000;

-- SELECT name-1

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


-- SELECT from World-2

-- 2
SELECT name
FROM world
WHERE population > 200000000;

-- 3
SELECT name, GDP / population
FROM world
WHERE population > 200000000;

-- 4
SELECT name, population / 1000000
FROM world
WHERE continent = 'South America';

-- 5
SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy');

-- 6
SELECT name
FROM world
WHERE name LIKE ('%United%');

-- 7
SELECT name, population, area
FROM world
WHERE area > 3000000 OR population > 250000000;

-- 8
SELECT name, population, area
FROM world
WHERE area > 3000000 XOR population > 250000000;

-- 9
SELECT name, ROUND(population/1000000,2), ROUND(GDP/1000000000,2)
FROM world
WHERE continent = 'South America';

-- 10
SELECT name, ROUND(GDP/ population,-3)
FROM world
WHERE GDP > 1000000000000;

-- 11
SELECT name, capital
FROM world
WHERE LENGTH(name) = LENGTH(capital);

-- 12
SELECT name, capital
FROM world
WHERE LEFT(name,1) = LEFT(capital,1) AND name != capital;

-- 13
SELECT name
FROM world
WHERE name LIKE '%a%'
AND name LIKE '%e%'
AND name LIKE '%i%'
AND name LIKE '%o%'
AND name LIKE '%u%'
AND name NOT LIKE '% %';
