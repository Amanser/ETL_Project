# ETL_Project

<hr>

NYC school data

Source data: 
2 csv (SAT scores, demographics)
1 json (AP tests)

We will use a SQL database due to unchanging data structure, and likely users of data being familiar with relational database systems, and other reasons TBD. 

Steps: 

1. Bring in the data: Extract CSVs and JSON and store as dataframes

2. Transform the data: Clean data [e.g. remove "s" null values, check that DBN is unique, filter demographic for 2011-2012 school year, filter schools with neither test score info [if time, pull from input dataset title or add user input capability for field]) 
	End result - Three dataframes, one for each data source

3. Load the data: Use the table create statements to generate three tables (AP scores table, SAT scores table, demographic table) in a new database, edit create statements as 	needed, and create summary view to enable future analysis. 

Report: Detail how and why we accomplished each step for ETL, why we are producing this ETL process, and denote any caveats about the process. 


