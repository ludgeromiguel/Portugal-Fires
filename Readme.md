# Portugal Fires - Decision support systems
This is a project to help control and monitore the fires in portugal.

### Requirements:

* SqlServer [download](https://www.microsoft.com/pt-br/sql-server/sql-server-downloads)
* SSMS [download](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16)
* Visual Studio 2019 [download](https://my.visualstudio.com/Downloads?q=visual%20studio%202019&wt.mc_id=o~msft~vscom~older-downloads)
* SSIS extension on Visual Studio 2019
* Power BI [download](https://powerbi.microsoft.com/pt-pt/downloads/)

### Explanation of files/folders:

* [DataSets](./DataSets/) - Folder with datasests used in ETL(Extract, transform, load) process
* [pdf file](./Documentacao_da_analise_de_dados.pdf) - File with data analysis of datasets
* [sql](sqlCreateDatabase.sql) - File to create the database
* [ETL process](./Portugal_incendios/) - The ETL process to insert the datasets data in database
* [Dashboard](./dashboardPTIncendios.pbix) - The dashboard to see the data

### How to use
1 - First open the SSMS and execute the sql file to create the database

2 - Open The ETL with Visual Studio 2019 and execute to load the data in database

3 - Open the Power BI with dashboard file and explore it!