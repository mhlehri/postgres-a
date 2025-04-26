## 1. what is PostgreSQL?

**Answer**: PostgreSQL is a powerful, open-source object-relational database system which support both sql and JSON (non-relational). it's reliable and has robust feature to work with relational database.

## 2. What is the purpose of a database schema in PostgreSQL?

**Answer**: Database schema in PostgreSQL to organize and structure the object like views, tables, function. Schema allows to have same name tables in different schema without give conflict and it used for manage database in more controlled way.

## 3. Explain the primary key and foreign key concepts in PostgreSQL.

**Answer**: The primary key is unique identifier of a row/record and the foreign key is another table's record's primary key for creating reference between two table.

## 4. What is the difference between the VARCHAR and CHAR data types?

**Answer**: Both record string but varchar take space on memory as it requery and char take space as it declare. if we give shorter string than declare space char will fill the space but varchar won't. if we need fixed string character char is recommended or if string character could be short and larger then we use varchar.

## 5. Explain the purpose of the WHERE clause in a SELECT statement.

**Answer**: Where clause in SELECT statement is to add condition to the query.

## 6. What are the LIMIT and OFFSET clauses used for?

**Answer**: The LIMIT clause used for limiting the query to specific number and the OFFSET used for skipping specific number of records in query.

## 7. How can you perform data modification using UPDATE statements?

**Answer**: UPDATE table_name SET column1 = new_value, column2 = new_value WHERE condition;

## 8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?

**Answer**: JOIN operation is one of the most import part of the SQL language like postgreSQL to retrieve and modify the referential data. We can join two table by the referential key or foreign key. we use JOIN, INNER JOIN, LEFT JOIN, RIGHT JOIN, CROSS JOIN etc. in postgreSQL.

## 9. Explain the GROUP BY clause and its role in aggregation operations.

**Answer**: By GROUP BY clause we create same column name group to getting specific values for same column name fields. We can use aggregation operation to get the group specific value like we can count the group column number or make sum of the group values etc. with aggregation operations.

## 10. How can you calculate aggregate functions like COUNT, SUM, and AVG in PostgreSQL?

**Answer**: Aggregate function run through every records. if we want to know the total rows of the tables we can use count(\*) in select operation against any tables. if we want the total sum of a specific column in tables we can use sum(age) or if we can to get the average use avg(age) it will give us the expected value we want.

## 11. What is the purpose of an index in PostgreSQL, and how does it optimize query performance?

**Answer**: Index in postgreSQL is to create index of specific field in tables for query fast and quickly. it's optimize query performance by not going through every blocks of the tables instead it search in index key s and it take less time to query.

## 12. Explain the concept of a PostgreSQL view and how it differs from a table.

**Answer**: Views is like virtual table. when we create view it save the query and we can use the query any where we need to the same query instead of write the queries.
