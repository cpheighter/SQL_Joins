/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
Select *
From products
Inner Join categories
On categories.CategoryID = products.CategoryID
Where categories.CategoryID = 1;
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
Select products.name, products.price, reviews.rating
From products
Inner Join reviews
On products.ProductID = reviews.ProductID
Where reviews.rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
Select employees.FirstName, employees.LastName, Sum(sales.Quantity)
From  employees
Inner Join sales
On employees.EmployeeID = sales.EmployeeID
Order By employees.FirstName, employees.LastName;


/* joins: find the name of the department, and the name of the category for Appliances and Games */
Select categories.name, departments.name
From categories
Inner Join departments
On categories.DepartmentID = departments.DepartmentID
Where categories.name = "games" or categories.name = "Appliances";


/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 Select products.name, Sum(sales.Quantity), Sum(sales.Quantity * sales.PricePerUnit)
 From products
 Inner Join sales
 On products.ProductID = sales.ProductID
 Where products.Name = "Eagles: Hotel California";

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
Select products.name, reviews.Reviewer, reviews.rating, reviews.Comment
From products
Inner Join reviews
On products.ProductID = reviews.ProductID
Where products.name = "Visio TV" & reviews.rating = 1;


-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */