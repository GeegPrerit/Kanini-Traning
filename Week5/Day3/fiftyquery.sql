select * from categories
select * from products
select * from Suppliers
select * from employees
select * from customers
select * from orders
select * from OrderDetails

/*1. Create a report that shows the CategoryName and Description from the categories table sorted by CategoryName.*/
select CategoryName,Description from categories order by CategoryName asc;

/*2. Create a report that shows the ContactName, CompanyName, ContactTitle and Phone number from the customers table
sorted by Phone.*/
select ContactName,CompanyName,ContactTitle,Phone from customers order by phone asc;

/*3. Create a report that shows the capitalized FirstName and capitalized LastName renamed as FirstName and Lastname 
respectively and HireDate from the employees table sorted from the newest to the oldest employee.*/
select upper(firstname) as FirstName ,upper(lastname) as LastName,hiredate from employees order by HireDate desc; 

/*4. Create a report that shows the top 10 OrderID, OrderDate, ShippedDate, CustomerID, Freight from the orders table sorted
by Freight in descending order.*/
select top 10 OrderID, OrderDate, ShippedDate, CustomerID, Freight from orders order by freight desc

/*5.Create a report that shows all the CustomerID in lowercase letter and renamed as ID from the customers table.*/
select lower(customerID) from customers as ID

/*6.Create a report that shows the CompanyName, Fax, Phone, Country, HomePage from the suppliers table sorted by the 
Country in descending order then by CompanyName in ascending order*/
select CompanyName, Fax, Phone, Country, HomePage from suppliers  order by Country desc,companyname asc;

/*7.Create a report that shows CompanyName, ContactName of all customers from ‘Buenos Aires' only.*/
select CompanyName, ContactName from customers where city='Buenos Aires'

/*8.Create a report showing ProductName, UnitPrice, QuantityPerUnit of products that are out of stock*/
select ProductName, UnitPrice, QuantityPerUnit from products where unitsinstock=0

/*9.Create a report showing all the ContactName, Address, City of all customers not from Germany, Mexico, Spain.*/
select ContactName, Address, City from Customers where city!='Germany, Mexico, Spain'

/*10.Create a report showing OrderDate, ShippedDate, CustomerID, Freight of all orders placed on 21 May 1996.*/
select OrderDate, ShippedDate, CustomerID, Freight from orders where YEAR(orderdate) = 1996 and month(orderdate)=5 and day (orderdate)=21

/*11.Create a report showing FirstName, LastName, Country from the employees not from United States.*/
select FirstName, LastName, Country from employees where Country!='USA'

/*12.Create a report that shows the EmployeeID, OrderID, CustomerID, RequiredDate, ShippedDate from all orders shipped later
than the required date.*/
select EmployeeID, OrderID, CustomerID, RequiredDate, ShippedDate from orders where 

/*13.Create a report that shows the City, CompanyName, ContactName of customers from cities starting with A or B.*/
select City, CompanyName, ContactName from customers where city like 'a%' or city like 'b%'

/*14. Create a report showing all the even numbers of OrderID from the orders table.*/
select * from orders where orderid%2=0;

/*15. Create a report that shows all the orders where the freight cost more than $500.*/
select * from orders where Freight>500

/*16. Create a report that shows the ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel of all products that are up for 
reorder.*/
select ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel from products where reorderlevel>0

/*17. Create a report that shows the CompanyName, ContactName number of all customer that have no fax number.*/
select CompanyName, ContactName,Phone from Suppliers where Fax is NULL

/*18. Create a report that shows the FirstName, LastName of all employees that do not report to anybody.*/
select  FirstName, LastName from Employees where ReportsTo is Null

/*19.Create a report showing all the odd numbers of OrderID from the orders table.*/
select * from Orders where orderid%2!=0

/*20. Create a report that shows the CompanyName, ContactName, Fax of all customers that do not have Fax number and sorted 
by ContactName.*/
select CompanyName, ContactName, Fax from suppliers where fax is null order by ContactName

/*21. Create a report that shows the City, CompanyName, ContactName of customers from cities that has letter L in the name
sorted by ContactName*/
select City, CompanyName, ContactName from customers where City like '%l%' order by ContactName

/*22. Create a report that shows the FirstName, LastName, BirthDate of employees born in the 1950s.*/
select FirstName, LastName, BirthDate  from Employees where birthdate between '1950'and '1959'

/*23. Create a report that shows the FirstName, LastName, the year of Birthdate as birth year from the employees table.*/
select FirstName, LastName ,year(birthdate) as birthyear from Employees

/*24. Create a report showing OrderID, total number of Order ID as NumberofOrders from the orderdetails table grouped by 
OrderID and sorted by NumberofOrders in descending order. HINT: you will need to use a Groupby statement*/
select OrderID,count(OrderID) as NumberofOrdersfrom from OrderDetails group by OrderID order by count(OrderID) desc

/*25. Create a report that shows the SupplierID, ProductName, CompanyName 
from all product Supplied by Exotic Liquids,
Specialty Biscuits, Ltd., Escargots Nouveaux sorted by the supplier ID*/
select products.SupplierID, products.ProductName, suppliers.CompanyName from 
Products join Suppliers on  Suppliers.SupplierID=Products.SupplierID 
where companyname in('exotic liquids' ,'Specialty Biscuits, Ltd','Escargots Nouveaux')

/*26.Create a report that shows the ShipPostalCode, OrderID, OrderDate, RequiredDate, ShippedDate, ShipAddress of all orders 
with ShipPostalCode beginning with "98124"*/
select ShipPostalCode, OrderID, OrderDate, RequiredDate, ShippedDate, ShipAddress from Orders where ShipPostalCode like '98124'

/*27.Create a report that shows the ContactName,
ContactTitle, CompanyName of customers that the has no "Sales" in their
ContactTitle.*/
select ContactName, ContactTitle, CompanyName from Customers where ContactTitle not like 'sales'

/*28. Create a report that shows the LastName, FirstName, City of employees in cities other "Seattle";*/
select LastName, FirstName, City from Employees where City!='seattle'

/*29. Create a report that shows the CompanyName, 
ContactTitle, City, Country of all customers in any city in Mexico or other 
cities in Spain other than Madrid.
*/
select CompanyName, ContactTitle, City, Country from Customers

/*30*/

/*31. Create a report that shows the ContactName 
of all customers that do not have letter A as the 
second alphabet in their Contactname.*/
select contactname from customers where Contactname not like 'a'

/*32. Create a report that shows the average UnitPrice rounded to
the next whole number, total price of UnitsInStock and 
maximum number of orders from the products table. All saved 
as AveragePrice, TotalStock and MaxOrder respectively.*/
select avg(UnitPrice)

/*33. Create a report that shows the SupplierID,
CompanyName, CategoryName, ProductName and UnitPrice from the products, 
suppliers and categories table.
*/
select suppliers.SupplierID,CompanyName, CategoryName, ProductName,UnitPrice from Products join Suppliers on Suppliers.SupplierID = Products.SupplierID join Categories on categories.CategoryID=Products.CategoryID

/*34. Create a report that shows the CustomerID, sum of Freight, 
from the orders table with sum of freight greater $200, grouped 
by CustomerID. HINT: you will need to use a Groupby and a Having statement*/
select CustomerID,SUM(freight) from Orders group by CustomerID having sum(freight)>200

/*35. Create a report that shows the OrderID ContactName, 
UnitPrice, Quantity, Discount from the order details, orders and 
customers table with discount given on every purchase.
*/
select orders.OrderID,customers.ContactName, 
orderdetails.UnitPrice, orderdetails.Quantity, orderdetails.Discount 
from 
OrderDetails join 
orders on 
OrderDetails.OrderID=orders.OrderID 
join Customers on Customers.CustomerID=Orders.CustomerID where OrderDetails.Discount!='0';

/*36. Create a report that shows the 
EmployeeID, the LastName and FirstName as employee, and the LastName and FirstName 
of who they report to as manager from the employees table sorted by Employee ID. 
HINT: This is a SelfJoin.
*/
select a.EmployeeID,concat(a.LastName,' ',a.FirstName) as employee,concat(b.LastName ,' ',b.FirstName)as manager from 
Employees a left join Employees b on b.EmployeeID = a.ReportsTo order by a.EmployeeID  

/*37. Create a report that shows the average, 
minimum and maximum UnitPrice of all products as AveragePrice, MinimumPrice 
and MaximumPrice respectively.*/
select avg(unitprice) as AveragePrice,min(unitprice) as MinimumPrice ,max(unitprice) as MaximumPrice from Products

/*38. Create a view named CustomerInfo that shows the CustomerID, CompanyName, 
ContactName, ContactTitle, Address, City, 
Country, Phone, OrderDate, RequiredDate, ShippedDate 
from the customers and orders table. HINT: Create a View.*/
CREATE VIEW [CustomerInfo] AS
SELECT customers.CustomerID, CompanyName, 
ContactName, ContactTitle, Address, City, 
Country, Phone, OrderDate, RequiredDate, ShippedDate
FROM Customers join Orders on Customers.CustomerID = Orders.CustomerID

/*39. Change the name of the view you created from customerinfo to customer details.*/
EXEC sp_rename 'customerinfo', 'customer details'
EXEC sp_rename 'customer details', 'customerdetails'
select * from customerdetails
/*40. Create a view named ProductDetails that shows the ProductID, 
CompanyName, ProductName, CategoryName, Description, 
QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, 
ReorderLevel, Discontinued from the supplier, products and 
categories tables. HINT: Create a View*/
create view [ProductDetails] as
select ProductID, ProductName, 
QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, 
ReorderLevel, Discontinued ,CategoryName, Description from Products join Categories on Products.CategoryID = Categories.CategoryID

/*41. Drop the customer details view.*/
drop view customerdetails

/*42.Create a report that fetch the first 5 character of 
categoryName from the category tables and renamed as ShortInfo*/
select SUBSTRING(categoryname,1,5) as ShortInfo from Categories

/*43. Create a copy of the shipper table as shippers_duplicate. 
Then insert a copy of shippers data into the new table HINT: Create 
a Table, use the LIKE Statement and INSERT INTO statement. */
drop table if exists shippers_duplicate;
create table shippers_duplicate LIKE shippers
insert into shippers_duplicate select * from Shippers

/*44*/


/*45. Create a report that shows the CompanyName and ProductName 
from all product in the Seafood category*/
select suppliers.CompanyName,products.ProductName  from Categories
join Products on Categories.CategoryID=Products.CategoryID
join Suppliers on Suppliers.SupplierID=Products.SupplierID where CategoryName='seafood'

/*46. Create a report that shows the CategoryID, CompanyName and ProductName 
from all product in the categoryID 5.*/
select Categories.CategoryID, Suppliers.CompanyName,products.ProductName from Categories join products on Categories.categoryID = Products.CategoryID join Suppliers on Suppliers.SupplierID=Products.SupplierID where Categories.CategoryID='5'

/*47. Delete the shippers_duplicate table.*/
delete table if exists shippers_duplicate

/*48. Create a select statement that ouputs the following from the employees table*/
select Employees.LastName,Employees.FirstName,Employees.Title,DATE_FORMAT(FROM_DAYS(datediff(current_date,birthdate)),"%y years") as age from Employees

/*49. Create a report that the CompanyName and total number of 
orders by customer renamed as number of orders since 
Decemeber 31, 1994. Show number of Orders greater than 10.*/
select c.companyname,count(c.customerid) as numberoforders from customers c join Orders o on o.CustomerID=c.CustomerID where o.OrderDate>='1994-12-31' group by c.CustomerID having count(c.customerid)>10

/*50. Create a select statement that ouputs the following from the product table*/
select CONCAT(productname,'','weight/is','',quantityperunit,'',' and cost','$',round(unitprice)) as 
productinfo from products;