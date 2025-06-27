use ecommercedb;
select* from Customers;
# 1.Apply aggregate functions on numeric columns
SELECT COUNT(*) AS total_customers FROM Customers;
SELECT MAX(customer_id) AS max_id, MIN(customer_id) AS min_id FROM Customers;

#2.Use GROUP BY to categorize
SELECT address, COUNT(*) AS customer_count
FROM Customers
GROUP BY address;

SELECT age, COUNT(*) AS total_customers
FROM Customers
GROUP BY age;

#3.Filter groups using HAVING
SELECT address, COUNT(*) AS customer_count
FROM Customers
GROUP BY address
HAVING COUNT(*) > 2;


# 1.What is GROUP BY?
-- Groups rows that have the same values into summary rows.
-- It collects data from multiple records and groups the result by one or more column.
-- *Generally we use group by with some aggregation function.

# 2.Difference between WHERE and HAVING?
-- | Feature                 | `WHERE`                          | `HAVING`                             |
-- | ----------------------- | -------------------------------- | ------------------------------------ |
-- | **Use Case**            | Filters **rows before** grouping | Filters **groups after** aggregation |
-- | **Applies To**          | Individual rows                  | Grouped rows (from `GROUP BY`)       |
-- | **Used With**           | Any query                        | Only with `GROUP BY` or aggregates   |
-- | **Can Use Aggregates?** | ❌ No                             | ✅ Yes                                |

# Having Clause
-- Similar to Where i.e. applies some condition on rows.
-- Used when we want to apply any condition after grouping

# 3.How does COUNT(*) differ from COUNT(column)?
-- | Feature            | `COUNT(*)`                           | `COUNT(column)`                         |
-- | ------------------ | ------------------------------------ | --------------------------------------- |
-- | **What it counts** | **All rows**, including `NULL`s      | **Only non-NULL** values in the column  |
-- | **NULL Handling**  | Ignores NULLs in table (counts them) | Skips NULLs in the column               |
-- | **Use case**       | Total number of rows                 | Count of rows with a **non-null** value |
-- | **Performance**    | Slightly faster (in some engines)    | May be slightly slower (column check)   |

# 4. Can you group by multiple columns?
--  You can group by multiple columns by listing them in the GROUP BY clause.
--  This creates a hierarchical grouping based on the specified columns.
--  Example: SELECT department, gender, AVG(salary) FROM employees
-- GROUP BY department, gender;

# 5.What is ROUND() used for
-- The ROUND() function is used to round numeric values to a specified number of decimal places.

# 6.How do you find the highest salary by department?
SELECT department, MAX(salary) AS highest_salary
FROM Employees
GROUP BY department;

# 7.What is the default behavior of GROUP BY?
SELECT age, COUNT(*) FROM Customers
GROUP BY age;

# 8.Explain AVG and SUM.
-- SUM():
-- Calculates the sum of numeric values in a group or result set.
--  AVG():
-- Computes the average of numeric values in a group or result set.

# 9.How to count distinct values?
-- Removes duplicate rows from query results.
-- SELECT DISTINCT column1, column2 FROM table_name;

# 10.What is an aggregate function?
-- Aggregare functions perform a calculation on a set of values, and return a single value.
-- COUNT( )
-- MAX( )
-- MIN( )
-- SUM( )
-- AVG( )