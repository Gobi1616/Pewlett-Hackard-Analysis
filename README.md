# Pewlett-Hackard-Analysis

## Overview of the analysis:

The project is for Pewlett Hackard, a large corporation with tens of thousands of people. 

The number of employees approaching retirement age was calculated using employment data, as well as the number of possible vacancies to fill in the near future.

Pewlett Hackard is proposing a retirement package by developing a mentorship programme in which experienced and effective employees will move back into a part-time role rather than leaving fully, in order to reduce the high rate of retirement.

The goal of this study is to figure out how many retiring employees there are for each job title and who is qualified for the mentorship programme.

## Results:

1) SQL query that shows Retirement Titles table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955.

    - There were 133,776 rows in the “retirement titles” table.

2) Because some employees may have multiple titles in the Retirement Titles table due to promotions, the DISTINCT ON statement was used to create a table that contains the most recent title of each employee.

    - There are 90,398 rows in the “unique titles” table after running the distinct function. The distinct function was added to remove the duplicate rows where a single employee may have had switched positions or received a promotion in the company.

3) The Number of Retiring Employees by Title:

    - The results show 90,398 employees born between 1952 and 1955 that are soon to retire.
    - The “retiring_titles” query table shown below (table 1), there will be retirees in all positions. Senior Engineers have the highest count of retirees, 29,414 and Managers have the lowest count, 2. The data must be reviewed as it may include employees that are no longer employed.
    
    Table: 1
    
    ![image](https://user-images.githubusercontent.com/82549869/121095801-00246c00-c7bf-11eb-8620-9ae9407fdd77.png)

4) SQL query to create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965:

    - 1,549 employees are eligible for the mentorship program. This number excludes any employee that is no longer with the company.

## Summary:

Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

1) How many roles will need to be filled as the "silver tsunami" begins to make an impact?

   - There are 90,398 total employees or roles that will soon need to be filled as the "silver tsunami" begins to make an impact. See table 2 below:

Analysis criteria was to look at the following

   - Employees with birthdates between 1952 and 1955.
   - Most recent titles.

   Table 2:
   
   ![image](https://user-images.githubusercontent.com/82549869/121097783-8e4e2180-c7c2-11eb-9469-46b1ec059e0f.png)

2) Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

   - There are 1,549 total employees that are eligible for the mentorship program. See table 3 below.

If we assume that they will all be willing to participate in the mentorship program, it will imply that each mentor would have an average of 58 mentees, so we can conclude that there is not enough mentors to prepare the next generation of Pewlett Hackard employees. It is critical that the company must create a strategy on how to train the new employees quickly and balance the number of mentors.

Analysis criteria was to look at the following:

   - Employees with birthdate in January 1st, 1965 and December 31st, 1965.
   - Current employees.

   Table 3:
   
   ![image](https://user-images.githubusercontent.com/82549869/121096284-e9324980-c7bf-11eb-836a-cca427271985.png)

