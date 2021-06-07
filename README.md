# Pewlett-Hackard-Analysis

## Overview of the analysis:

The project is for a large company called Pewlett Hackard that employs several thousands of employees.

Employment information was analyzed to assess the number of employees that could be entering the retirement age and determine the number of potential vacancies to fill in the near future.

To prevent the high increase of retirement, Pewlett Hackard is offering a retirement package by introducing a mentoring program where experienced and successful employees will be stepping back into a part-time role instead of retiring completely.

The purpose of this analysis is to determine the number of retiring employees per title and identify employees who are eligible to participate in the mentorship program.

## Results:

1) SQL query that shows Retirement Titles table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955.

    - There were 133,776 rows in the “retirement titles” table.

2) Because some employees may have multiple titles in the Retirement Titles table due to promotions, the DISTINCT ON statement was used to create a table that contains the most recent title of each employee.

    - There are 90,398 rows in the “unique titles” table after running the distinct function. The distinct function was added to remove the duplicate rows where a single employee may have had switched positions or received a promotion in the company.

3) The Number of Retiring Employees by Title:

    - The results show 90,398 employees born between 1952 and 1955 that are soon to retire.
    - The “retiring_titles” query table shown below (table 1), there will be retirees in all positions. Senior Engineers have the highest count of retirees, 29,414 and Managers have the lowest count, 2. The data must be reviewed as it may include employees that are no longer employed.
