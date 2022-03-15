
-- Getting a sense of the database
SELECT * 
FROM newCleaning

--The average price for the courses
SELECT AVG(Price) AS average_price
FROM newCleaning

-- Average Rating of the courses
SELECT AVG(TotalRating) AS Average_Rating
FROM newCleaning

-- Providers 
SELECT DISTINCT(CourseProvider) AS distinct_values
FROM newCleaning

-- Case fuction setting as not reliable, some reliable, and very reliable 
SELECT TotalReviews,
CASE 
WHEN TotalReviews <= 16 THEN 'Not reliable course'
WHEN TotalReviews <= 455 THEN 'Some reliable course'
ELSE 'Very reliable course'
END AS CaseStatement
FROM newCleaning

-- CourseTitles that have the word data 
SELECT id,
CourseTitle
FROM newCleaning
WHERE CourseTitle LIKE 'Data%'
GROUP BY CourseTitle, id
ORDER BY id DESC

-- Finding the CourseTitle where come up the pattern Data and having price greater than 17.00 
SELECT CourseProvider,
CourseTitle,
Price
FROM newCleaning
WHERE CourseTitle LIKE 'Data%' 
GROUP BY Price, CourseTitle, CourseProvider
HAVING Price > 17.00 
ORDER BY Price DESC

-- Finding courses with  reviews  under 310
SELECT TotalReviews,
CourseTitle
FROM newCleaning
GROUP BY CourseTitle,TotalReviews
HAVING TotalReviews <= 310
ORDER BY TotalReviews DESC


-- Having CourseProvider IanLittleJohn
SELECT CourseProvider,
CourseTitle
FROM newCleaning
GROUP BY CourseTitle,CourseProvider
HAVING CourseProvider = 'Ian LittleJohn'

-- Finding the CourseProviders with the pattern son 
SELECT CourseProvider
FROM newCleaning
WHERE CourseProvider LIKE '%son%'