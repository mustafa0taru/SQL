![Lines of code](https://img.shields.io/tokei/lines/github/anekar/SQL-Cleaning?style=plastic)

# Project Information
```
This project was created for understanding the basic,
cleaning processes in SQL, with some important functions in result of exploring the dataset,
get duplicate values etc, converting variables in other formats etc.
   ``` 
 
# Language
```SQL```
 
# Setup
To start do the following:
```
       1. Start Microsoft SQL Server Management Studio
       2. Select Databases
       3. New Database 
       4. Give your new database a name 
       5. Start designing
```

# Environment
Developed with:

```SQL
SQL Server Management Studio 2018
SQL Server 2019
```

## Sample Code

```SQL
SELECT DISTINCT(CourseProvider) AS distinct_values
FROM newCleaning
```

```SQL

SELECT TotalReviews,
CASE 
WHEN TotalReviews <= 16 THEN 'Not reliable course'
WHEN TotalReviews <= 455 THEN 'Some reliable course'
ELSE 'Very reliable course'
END AS CaseStatement
FROM newCleaning
```

```SQL

 SELECT
 DISTINCT X1
 FROM
 Table
```


# Visuals
![database](https://user-images.githubusercontent.com/47696240/96724398-756e3880-13b8-11eb-8081-cf9119f1f56e.png)
<br>

![reviews under 310](https://user-images.githubusercontent.com/47696240/96724984-13fa9980-13b9-11eb-9071-88c8e48d1d89.png)

