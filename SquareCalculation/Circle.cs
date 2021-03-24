using System;

namespace SquareCalculation
{
    public class Circle : Figures
    {
        private double _r;

        public Circle(double x)
        {
           _r = x;
        }

        public override double CalculateArea()
        {
            return Math.PI * Math.Pow(_r, 2);
        }
    }
}