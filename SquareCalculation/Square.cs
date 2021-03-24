using System;

namespace SquareCalculation
{
    public class Square : Figures
    {
        private double _x;

        private double _y;

        public Square(double x, double y)
        {
           _x = x;
           _y = y;
        }

        public override double CalculateArea()
        {
            return _x * _y;
        }
    }
}