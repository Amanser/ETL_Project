# ETL_Project

<hr>

NYC school data

Source data: 
2 csv (SAT scores https://data.cityofnewyork.us/Education/2012-SAT-Results/f9bf-2cp4, demographics https://data.cityofnewyork.us/Education/2006-2012-School-Demographics-and-Accountability-S/ihfw-zy9j)
1 json (AP tests https://data.cityofnewyork.us/Education/2012-AP-Results/9ct9-prf9/data)
optional 1 more csv for historical comparison (https://data.cityofnewyork.us/Education/2010-SAT-College-Board-School-Level-Results/zt9s-n5aj)
optional 1 more json for historical comparison (https://data.cityofnewyork.us/Education/2010-AP-College-Board-School-Level-Results/itfs-ms3e/data

We will use a SQL database due to unchanging data structure, and likely users of data being familiar with relational database systems, and other reasons TBD. 

Steps: 

1. Bring in the data: Extract CSVs and JSON and store as dataframes

2. Transform the data: Clean data [e.g. remove "s" null values, check that DBN is unique, filter demographic for 2011-2012 school year, filter schools with neither test score info [if time, pull from input dataset title or add user input capability for field]) 
	End result - Three dataframes, one for each data source

3. Load the data: Use the table create statements to generate three tables (AP scores table, SAT scores table, demographic table) in a new database, edit create statements as 	needed, and create summary view to enable future analysis. 

Deliverables:

	- Python Jupyter Notebook with extract, transform, and load operations.
	
	- Sql statement to create database and tables

	- Report detailing how and why we accomplished each step for ETL, why we are producing this ETL process, 
	and denote any caveats about the process. 


Collaborators: 

	Austen Manser

	James Curtis
