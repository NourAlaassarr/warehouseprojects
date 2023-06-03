this is Warehouse project 1
consists of 3 parts
1. Consume any REST API and load the response to database. You don’t need to load all the response fields, 3 or 4 is okay for me.
For example, this is a response from an API that is used to search for universities
Implement SCD type 6 for the below “EMPLOYEE_Q2” table:
ID Name City Email Update_Date
1001
Ahmed
Cairo
ahmed@mail.com
20-04-2023
1002
Alaa
Giza
alaa@mail.com
20-04-2023
1003
Samy
Cairo
samy@mail.com
20-04-2023
Notes:
1. The SCD fields are City and Email.
2. Read source data using Incremental Load.
3. Load data to a table using versioning like below:
4. Load data to a table using versioning like below:
3.1 Source table “EMPLOYEE_Q3”
ID Name City Email Schedule_Date
1001
Ahmed
Cairo
ahmed@mail.com
20-04-2023
1002
Alaa
Giza
alaa@mail.com
20-04-2023
1003
Samy
Cairo
samy@mail.com
20-04-2023
3.2 Target table after first run on the same day
Emp_Key ID Name City Email Insert_Date Active_Flag Version_No
1
1001
Ahmed
Cairo
ahmed@mail.com
20-04-2023
1
1
2
1002
Alaa
Giza
alaa@mail.com
20-04-2023
1
1
3
1003
Samy
Cairo
samy@mail.com
20-04-2023
1
1
3.3 Target table after second run on the same day
Emp_Key ID Name City Email Insert_Date Active_Flag Version_No
1
1001
Ahmed
Cairo
ahmed@mail.com
20-04-2023 0
1
2
1002
Alaa
Giza
alaa@mail.com
20-04-2023 0
1
3
1003
Samy
Cairo
samy@mail.com
20-04-2023 0
1 4 1001 Ahmed Cairo ahmed@mail.com 20-04-2023 1 2 5 1002 Alaa Giza alaa@mail.com 20-04-2023 1 2 6 1003 Samy Cairo samy@mail.com 20-04-2023 1 2
3.4 Target table after first run on the next day (just change Schedule_Date in the source data to simulate to next day)
Emp_Key ID Name City Email Insert_Date Active_Flag Version_No
1
1001
Ahmed
Cairo
ahmed@mail.com
20-04-2023
0
1
2
1002
Alaa
Giza
alaa@mail.com
20-04-2023
0
1
3
1003
Samy
Cairo
samy@mail.com
20-04-2023
0
1
4
1001
Ahmed
Cairo
ahmed@mail.com
20-04-2023 0
2
5
1002
Alaa
Giza
alaa@mail.com
20-04-2023 0
2
6
1003
Samy
Cairo
samy@mail.com
20-04-2023 0
2 7 1001 Ahmed Cairo ahmed@mail.com 21-04-2023 1 1 8 1002 Alaa Giza alaa@mail.com 21-04-2023 1 1 9 1003 Samy Cairo samy@mail.com 21-04-2023 1 1
Notes:
1. I have shown two runs only on the same day but during discussion I can run n times and see the behavior of your solution.
2. Add new version as long as you are running on the same day and close all old records.
3. Start from version 1 again on the next day and so on.
4. Don’t check for any change in the source data, load it as it is.
