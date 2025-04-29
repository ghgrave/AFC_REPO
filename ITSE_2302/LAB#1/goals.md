📝 Student Instructions:

* Write and test each query in your database.
* Add each query to a .sql or .txt file in your GitHub repo.
* Include a comment above each query indicating the task number (e.g., -- Task 1a, -- Task 5).

### Task 1: Basic Filtering
Find all widgets that have a quantity greater than 30 and less than 70.

Do this twice:

1) Using the `AND` operator
1) Using the `BETWEEN` operator

### Task 2: String Function Practice
1) List all widgets whose name is longer than 8 characters.

1) Return the first 6 characters of their names, their category name, and their quantity.

``` HINT ```: Use a string length function and a substring function.

### Task 3: Derived Columns & Math Functions
1) Find all widgets with quantity greater than 50 and in categories with the word 'connector' in the description.

2) Then, find the minimum quantity of any widget in the database.

3) In the first query, add a column that shows each widget's quantity as a percentage of the minimum quantity, rounded to 2 decimal places.

### Task 4: Join with Text Match
1) List all widget names and their category names.

1) Do the same for widgets that belong to the 'Casings' category.

1) Order the results by quantity, highest first.

```HINT```: Do not use category IDs. Filter using the actual text 'Casings'.

### Task 5: Multi-table Join
1) List the widget name, color, category name, and image URL for all widgets that belong to the 'connectors' category 

### Task 6: Aggregation and Grouping
Find out how many widgets exist in each color.

1) Show the color and the total count of widgets.

1) Order results by count, descending.
Only show results where count > 1.

### Task 7: Multiple Aggregations
1) For each category, find:

    * Total number of items
    * Average quantity
    * Minimum and maximum quantities

### Task 8: Subquery in SELECT
1) List each widget's name and quantity, along with:

    * The average quantity of all widgets in the same category (in the same row).

```HINT```: Use a correlated subquery inside the SELECT clause.

### Task 9: CASE & Conditional Formatting
1) Write a query that lists each widget name, quantity, and a new column called status:

    * Show 'Out of Stock' if quantity <= 0
    * Show 'Low Stock' if quantity between 1 and 30
    * Show 'In Stock' if quantity > 30