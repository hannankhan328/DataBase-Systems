# Database Systems

Done By: Umer Abdullah (21i-0580)
				 Abdul Hannan Khan (21i-0485)


# ERD

This is the enhanced ERD of the assignment case study. Designing the ERD turned out to be a troublesome task due to the closely interlinked data and their relations. Our main goal when designing the ERD was too make sure that their was least wastage of space. 

# Creating the Database

The database was created as per the EERD and was populated with almost 20 entries. The data was also stored in an excel file to allow for easier visualization and ease of access. While creating the database we learned a lot of new commands such as alter table, foreign key (xyz) references, drop table, etc.
[Link to the database excel](https://docs.google.com/spreadsheets/d/1NaY1bDxwhyB3mrlttW9ce7iV_cG3Af9oq5oSgMWqJDg/edit?usp=sharing)

# Queries

After designing, implementing and populating the database, we moved on to writing queries as per the question requirements. In this aspect too we also learned not only a lot of new commands but also restrictions of queries. 

### Query1.sql

In this query we were asked to find airplanes that had not been maintained. So we use the not in  command to find **ANUM** that were not present in the **Sevices** table.

### Query2.sql

This was a simple query requiring us to fine corporation names and address of corporations that own planes with capacity of more than 200 people.

### Query3.sql
In this query we were required to find average salary of employees working the night shift. So the **AVG** command was also used.
#### NOTE
|                Shift Number                         |Shift Time                         |
|-----------------------------------------------|-----------------------------|
|1|Night Shift|
|2|Morning Shift|
|3|Evening Shift|

### Query4.sql
In this query we were required to find the top 5 employees as per the hours worked.
In this we use the **TOP** command to display exactly the top 5 records/tuples. We also used the **ORDER BY** and **DESC** to display all the tuples in descending order.

 ### Query5.sql
 
In this query we were required to find Airplanes that were serviced in the last month. We have use a date range command rather than finding it through other commands because it fit our data better.

### Query6.sql
In this query we were required to find to planes bought by owners in the last month so commands same as the **Query 5** were used.

### Query7.sql
In this query we were required to find the number of planes that each pilot is allowed to fly. In this query we used the **Group by** and **Count** commands to display the required results.

### Query8.sql
In this query we were required to find the hangar with the largest capacity. So the **MAX** command was used.

### Query9.sql
In this query we were required to find number of planes owned by corporation in descending order. This is quite similar to **Query7.sql** and **Query4.sql** so the same commands were used. 

### Query10.sql
In this query we were required to find the average time serviced on each plane type. This is quite similar to **Query7.sql** and **Query4.sql** so the same commands were used but with the **AVG** command too.

### Query11.sql
In this query we were required to find

### Query12.sql
In this query we were required to find planes that were owned by corporations that were bought by owners. Furthermore they were stored in the same place as the owners. To make sure of the first case **Nested Queries** were used through the **IN** command.

### Query13.sql
In this query we were required to find panes that could be flown by pilots but were under maintenance. Simple query commands were used in this.
#### Note
|                UNDER MAINTENANCE                         |YES/NO                         |
|-----------------------------------------------|-----------------------------|
|0|NO|
|1|YES|

### Query14.sql
In this query we were required to find names of employees who worked on planes ordered by number of hours worked. Simple query commands were used in this.

### Query15.sql
In this query we were required to find planes that weren't owned by corporations or worked by employees working the day shift. Simple query commands were used in this with **Nested Queries** to accommodate both the conditions.

### Query16.sql
In this query we were required to find planes bought by owners from corporations. Simple query commands were used in this with **Nested Queries** to accommodate both the conditions.
 
 ### Query17.sql
In this query we were required to find the total number of planes stored in each hangar. Simple query commands were used in this.
### Query18.sql
In this query we were required to find the total number of planes of each plane type. Simple query commands were used in this.
### Query19.sql
In this query we were required to find the total number of services performed on each plane. Simple query commands were used in this.

### Query20.sql
In this query we were required to find the average salary of employees in each shift. Simple query commands were used in this.
### Query21.sql
In this query we were required to find the total number of planes each owner owns.
Simple query commands were used in this.
### Query22.sql
In this query we were required to find the number of planes each pilot is authorized to fly. Simple query commands were used in this.

### Query23.sql
In this query we were required to write 4 meaningful queries. Simple query commands were used in these.

These were our queries.
1)	Top 5 hangar location capacities
2) Average salary spent on each plane
3) Average hours worked on each shift
4) Top 5 planes with the highest capacities.


## Difficulties Faced In This Assignment

Their was a major learning curve in trying to understand how to design and implement relation. 
There was some difficulties in changing the table after it was established too.
Furthermore quite a lot of research was required to used to implement the queries exactly. 
