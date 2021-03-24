using SquareCalculation;
using System;

namespace TestProject
{
    internal class Program
    {
        private enum figures
        {
            circle,
            triangle,
            square
        }

        private static void Main(string[] args)
        {
            string str;
            figures figure = 0;
            double x = 0, y = 0, z = 0;          
            Console.Write("Input figures:");
            if (Enum.TryParse<figures>(Console.ReadLine(), out figure))
            {
                switch (figure)
                {
                    case figures.circle:
                        {
                            Console.Write("Введите x:");
                            str = Console.ReadLine();
                            if (!validate(str))
                            {
                                break;
                            }
                            else
                            {
                                x = double.Parse(str);
                                Console.WriteLine("{0: 0.000}", (new Circle(x)).CalculateArea());
                                break;
                            }
                        }
                    case figures.triangle:
                        {
                            Console.Write("Введите x:");
                            str = Console.ReadLine();
                            if (!validate(str))
                            {
                                break;
                            }
                            else
                            {
                                x = double.Parse(str);
                                Console.Write("Введите y:");
                                str = Console.ReadLine();
                                if (!validate(str))
                                {
                                    break;
                                }
                                else
                                {
                                    y = double.Parse(str);
                                    Console.Write("Введите z:");
                                    str = Console.ReadLine();
                                    if (!validate(str))
                                    {
                                        break;
                                    }
                                    else
                                    {
                                        z = double.Parse(str);
                                        Triangle triangle = new Triangle(x, y, z);
                                        Console.WriteLine("{0: 0.000}", triangle.CalculateArea());
                                        break;
                                    }
                                }
                            }
                        }
                    case figures.square:
                        {
                            Console.Write("Введите x:");
                            str = Console.ReadLine();
                            if (!validate(str))
                            {
                                break;
                            }
                            else
                            {
                                x = double.Parse(str);
                                Console.Write("Введите y:");
                                str = Console.ReadLine();
                                if (!validate(str))
                                {
                                    break;
                                }
                                else
                                {
                                    y = double.Parse(str);
                                    Square square = new Square(x, y);
                                    Console.WriteLine("{0: 0.000}", square.CalculateArea());
                                    break;
                                }
                            }
                        }
                }
            }
        }

        public static bool validate(string s)
        {           
            try
            {
                int.Parse(s);
                return true;
            }
            catch
            {
                Console.Write("Incorrect value");
                return false;
            }
           
        }

       
    }
}