class DependencyInjectionDemo
{
    static void Main()
    {
        EmployeeDAL dal = new EmployeeDAL();
        EmployeeBL bl = new EmployeeBL(dal);

        bl.DisplayEmployees();
    }
}
