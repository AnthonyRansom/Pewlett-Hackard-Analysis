# Pewlett-Hackard-Analysis

## Overview of Project

### Purpose

Pewlett Hackard is expecting a large number of staff turnover in the near future due to staff reaching retirement age.
The following analysis will provide insight into the staff that are expected to retire and their current title which will be summarized
providing a total count of how many staff for each position of the company will be retiring.

Due to the number of staff leaving some knowledge transfer is required which this analysis will provide a list of staff that are eligible for mentorship
in order to plan for employees who are retiring to start training eligible staff.


## Results

Looking at the results of the analysis the following has been determined:
### Retiring Employees:
![retiring_titles](/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis%20Folder/retiring_titles.PNG)
 - There is a total of 72,458 of 300,024 staff retiring
 - The majority of staff leaving hold Senior Engineer and Senior Staff titles which consists of 70% of the total employees that will be retiring

 
### Employees Eligible for Mentorship:
![mentorship_eligible_count](/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis%20Folder/mentorship_eligible_count.PNG)
 - There are 1,549 employees who can be mentored across various titles making up only 2% of the number of employees retiring
 - The majority of staff who are eligible to be mentored hold the Senior Staff and Engineer titles

## Summary

### Important Facts
 - 72,458 roles will need to be filled as employees start to retire
 - There are more employees retiring than there are staff who meet the mentorship eligibility meaning there is enough capacity for retiring employees to mentor the next generation
 
### Further Analysis

Additional queries can be executed against the dataset to provide more insight into the "silver Tsunami":
 - the following query shows how many employees will be retiring each year over the next four years so that hiring and mentorship can be planned accordingly
![retiring_peryear_count](/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis%20Folder/retiring_peryear_count.PNG)
![retiring_peryear_result](/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis%20Folder/retiring_peryear_result.PNG)
 
 - The employees that are retiring can also be grouped by the department and save to a new table in order to determine which departments are affected by the "silver tsunami". 
	Looking at the below table the Development and production departments are the most impacted by the number of employees retiring.
![retiring_departments](/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis%20Folder/retiring_departments.PNG)
