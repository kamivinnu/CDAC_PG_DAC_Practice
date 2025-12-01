using System.Collections.Generic;

public class EmployeeDAL
{
    public List<Employee> SelectAllEmployees()
    {
        return new List<Employee>
        {
            new Employee() { ID = 1, Name = "Pranaya", Department = "IT" },
            new Employee() { ID = 2, Name = "Kumar", Department = "HR" },
            new Employee() { ID = 3, Name = "Rout", Department = "Payroll" }
        };
    }
}
