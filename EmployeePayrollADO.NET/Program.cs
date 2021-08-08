using System;

namespace EmployeePayrollADO.NET
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Employee Payroll Service using ADO.Net");
            EmployeeRepository repository = new EmployeeRepository();
            EmployeeDetails details = new EmployeeDetails();

            details.EmployeeID = 11;
            details.EmployeeName = "Neeraj";
            details.BasicPay = 394856;
            details.Gender = "M";
            details.PhoneNumber = "9848022338";
            details.Address = "UP";
            details.Department = "HR";
            details.TaxablePay = 1000;
            details.Deductions = 100;
            details.NetPay = 20000;
            details.IncomeTax = 200;
            bool result = repository.AddEmployee(details);
            if (result)
                Console.WriteLine("Successfully added");
            else
                Console.WriteLine("Not added");
        }
    }
}
