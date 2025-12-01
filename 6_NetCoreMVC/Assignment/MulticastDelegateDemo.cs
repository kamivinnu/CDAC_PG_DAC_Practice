using System;

public delegate void MyDelegate(int x, int y);

class Program
{
    public static void Add(int a, int b) => Console.WriteLine("Addition = " + (a + b));
    public static void Sub(int a, int b) => Console.WriteLine("Subtraction = " + (a - b));

    static void Main()
    {
        MyDelegate del = Add;
        del += Sub;  // multicast

        del(20, 10);
    }
}
