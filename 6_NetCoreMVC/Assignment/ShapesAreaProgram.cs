using System;

interface IShape
{
    double Area();
}

class Circle : IShape
{
    public double Radius { get; set; }
    public double Area() => 3.14 * Radius * Radius;
}

class Square : IShape
{
    public double Side { get; set; }
    public double Area() => Side * Side;
}

class Triangle : IShape
{
    public double Base { get; set; }
    public double Height { get; set; }
    public double Area() => 0.5 * Base * Height;
}

class Program
{
    static void Main()
    {
        Circle c = new Circle { Radius = 5 };
        Square s = new Square { Side = 4 };
        Triangle t = new Triangle { Base = 6, Height = 3 };

        Console.WriteLine("Circle Area = " + c.Area());
        Console.WriteLine("Square Area = " + s.Area());
        Console.WriteLine("Triangle Area = " + t.Area());
    }
}
