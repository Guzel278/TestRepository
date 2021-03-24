using System;

namespace SquareCalculation
{
    public class Triangle : Figures
    {
        private double _x;

        private double _y;

        private double _z;

        public Triangle(double x, double y, double z)
        {
            _x = x;
            _y = y;
            _z = z;
        }

        public override double CalculateArea()
        {
            double s;
            double a = Math.Pow(_x, 2) + Math.Pow(_y, 2);
            double b = Math.Pow(_y, 2) + Math.Pow(_z, 2);
            double c = Math.Pow(_z, 2) + Math.Pow(_x, 2);
            if (a == Math.Pow(_z, 2))
            {
                s = 0.5 * (Math.Pow(_x, 2) * Math.Pow(_y, 2));
            }
            else if (b == Math.Pow(_x, 2))
            {
                s = 0.5 * (Math.Pow(_y, 2) * Math.Pow(_z, 2));
            }
            else if (c != Math.Pow(_y, 2))
            {
                double p = 0.5 * (_x + _y + _z);
                s = Math.Sqrt(p * (p - _x) * (p - _y) * (p - _z));
            }
            else
            {
                s = 0.5 * (Math.Pow(_z, 2) * Math.Pow(_x, 2));
            }
            return s;
        }
    }
}