
-- Codes for Oasis Infobyte proj2

-- viewing the whole datset
SELECT
	* 
FROM 
	new_schema.ab_nyc_2019;
    
-- ......................................

-- Searching for Duplicates
SELECT DISTINCT 
	host_id
FROM
	new_schema.ab_nyc_2019;
    
-- ........................................

-- count of host_id to see how many times they appear
SELECT
    host_id,
    COUNT(host_id)
FROM
	new_schema.ab_nyc_2019
GROUP BY
	host_id;

-- ......................................

-- selecting only the host_id with duplicates
SELECT
    host_id,
    COUNT(host_id) AS count_of_host_id
FROM
    new_schema.ab_nyc_2019
GROUP BY
    host_id
HAVING
    COUNT(host_id) > 1;

-- ........................................

-- the duplicates analysis

SELECT
    *
FROM
    new_schema.ab_nyc_2019
WHERE
    host_id = 7549
    OR host_id = 9744
    OR host_id = 22486
    OR host_id = 32294;

-- the code shows why the full records for the duplicates and duplicates are due to the fact
-- that some hosts have more that one property.

-- .........................................

-- checking for number of records for every column to see if there are missing values
-- last_review can be replaced with any of the colmun headings

SELECT
    last_review
FROM
    new_schema.ab_nyc_2019
WHERE
    last_review IS NULL
    OR last_review = '';

-- ...........................................

-- looking at all records for with null or empty values

SELECT
	*,
    last_review
FROM
    new_schema.ab_nyc_2019
WHERE
    last_review IS NULL
    OR last_review = '';


