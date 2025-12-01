using System;

public delegate bool CheckDelegate<T>(T value);

class Program
{
    static void Main()
    {
        CheckDelegate<int> isEven = num => num % 2 == 0;

        Console.Write("Enter a number: ");
        int n = Convert.ToInt32(Console.ReadLine());

        Console.WriteLine(isEven(n) ? "Even" : "Odd");
    }
}
