create procedure dbo.uspGetCustomersByCountry(@country varchar(50)) as
BEGIN
   SELECT * FROM Customers WHERE Country = @country
END
