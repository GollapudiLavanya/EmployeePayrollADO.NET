CREATE PROCEDURE dbo.InsertIntoTable
(
    @id int,
	@name varchar(200),
	@basicPay float,
	@startDate Date,
	@gender char(1),
	@phoneNumber varchar(20),
	@address varchar(150),
	@department varchar(150),
	@taxablePay float,
	@deductions float,
	@netPay float,
	@incometax float
	)
AS
BEGIN
	Insert into employee_payroll(id,name,basic_pay,startDate,gender,phonenumber,address,department,taxable_pay,deductions,net_pay,incometax) values(@id,@name,@basicPay,GETDATE(),@gender,@phoneNumber,@address,@department,@taxablePay,@deductions,@netPay,@incometax)
	Insert into employee(EmployeeId,name,gender,phoneNumber,address) values(@id,@name,@gender,@phoneNumber,@address)
	Insert into payroll_details(id,startDate,basic_pay,deductions,taxable_pay,net_pay,incometax) values(@id,GETDATE(),@basicPay,@deductions,@taxablePay,@netPay,@incometax)
END