using System;

public class EmployeeBL
{
    private readonly EmployeeDAL _dal;

    public EmployeeBL(EmployeeDAL dal)
    {
        _dal = dal;
    }

    public void DisplayEmployees()
    {
        foreach (var e in _dal.SelectAllEmployees())
            Console.WriteLine($"ID: {e.ID}, Name: {e.Name}, Department: {e.Department}");
    }
}
