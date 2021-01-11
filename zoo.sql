-- SELECT basics-0

SELECT population FROM world
WHERE name = 'Germany';

SELECT name, population FROM world
WHERE name IN ('Sweden', 'Norway', 'Denmark');

SELECT name, area FROM world
WHERE area BETWEEN 200000 AND 250000;

-- SELECT name-1

-- 1 - Name start with y-
SELECT name FROM world
WHERE name LIKE 'Y%';

-- 2 - Name end with -y
SELECT name FROM world
WHERE name LIKE '%Y';

-- 3 - Name include x 
SELECT name FROM world
WHERE name LIKE '%x%';

-- 4 - Name end with -land 
SELECT name FROM world
WHERE name LIKE '%land';

-- 5 - Name start with C end with -ia 
SELECT name FROM world
WHERE name LIKE 'C%' AND name LIKE '%ia';

-- 6 - Name start with C end with -ia 
SELECT name FROM world
WHERE name LIKE 'C%%ia';

SELECT name FROM world
WHERE name LIKE '%oo%';

-- 7 - Name has at least 3 'a'
SELECT name FROM world
WHERE name LIKE '%a%a%a%';

-- 8 
SELECT name FROM world
WHERE name LIKE '_t%'
ORDER BY name;

-- 9
SELECT name FROM world
WHERE name LIKE '%o__o%';

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

SELECT name
FROM world
WHERE capital = concat(name, ' City');

-- 13
SELECT capital, name
FROM world
WHERE capital LIKE concat('%',name, '%');

-- 14
SELECT capital, name
FROM world
WHERE capital LIKE concat('%',name,'%')
AND capital != name;

-- 15
SELECT name, 
REPLACE(capital, name, '')
FROM world
WHERE capital LIKE concat('%',name,'%')
AND capital != name;

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
