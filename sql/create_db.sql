--  Create database
DROP DATABASE IF EXISTS GENDER_STATS_DB;
CREATE DATABASE GENDER_STATS_DB;

--  Use database
USE GENDER_STATS_DB;

-- Grant access
GRANT ALL ON GENDER_STATS_DB.* TO EZ_ADMIN IDENTIFIED BY 'ez--__!1978!';

-- Create tables
DROP TABLE IF EXISTS GENDER_STATS_DATA;

CREATE TABLE GENDER_STATS_DATA
(COUNTRY_NAME VARCHAR(50),
COUNTRY_CODE VARCHAR(50),
INDICATOR_NAME VARCHAR(255),
INDICATOR_CODE VARCHAR(50),
`1960` DECIMAL(30,15),
`1961` DECIMAL(30,15),
`1962` DECIMAL(30,15),
`1963` DECIMAL(30,15),
`1964` DECIMAL(30,15),
`1965` DECIMAL(30,15),
`1966` DECIMAL(30,15),
`1967` DECIMAL(30,15),
`1968` DECIMAL(30,15),
`1969` DECIMAL(30,15),
`1970` DECIMAL(30,15),
`1971` DECIMAL(30,15),
`1972` DECIMAL(30,15),
`1973` DECIMAL(30,15),
`1974` DECIMAL(30,15),
`1975` DECIMAL(30,15),
`1976` DECIMAL(30,15),
`1977` DECIMAL(30,15),
`1978` DECIMAL(30,15),
`1979` DECIMAL(30,15),
`1980` DECIMAL(30,15),
`1981` DECIMAL(30,15),
`1982` DECIMAL(30,15),
`1983` DECIMAL(30,15),
`1984` DECIMAL(30,15),
`1985` DECIMAL(30,15),
`1986` DECIMAL(30,15),
`1987` DECIMAL(30,15),
`1988` DECIMAL(30,15),
`1989` DECIMAL(30,15),
`1990` DECIMAL(30,15),
`1991` DECIMAL(30,15),
`1992` DECIMAL(30,15),
`1993` DECIMAL(30,15),
`1994` DECIMAL(30,15),
`1995` DECIMAL(30,15),
`1996` DECIMAL(30,15),
`1997` DECIMAL(30,15),
`1998` DECIMAL(30,15),
`1999` DECIMAL(30,15),
`2000` DECIMAL(30,15),
`2001` DECIMAL(30,15),
`2002` DECIMAL(30,15),
`2003` DECIMAL(30,15),
`2004` DECIMAL(30,15),
`2005` DECIMAL(30,15),
`2006` DECIMAL(30,15),
`2007` DECIMAL(30,15),
`2008` DECIMAL(30,15),
`2009` DECIMAL(30,15),
`2010` DECIMAL(30,15),
`2011` DECIMAL(30,15),
`2012` DECIMAL(30,15),
`2013` DECIMAL(30,15),
`2014` DECIMAL(30,15),
`2015` DECIMAL(30,15),
`2016` DECIMAL(30,15));
