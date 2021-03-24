using Microsoft.VisualStudio.TestTools.UnitTesting;
using SquareCalculation;
using System;

namespace TestProject.Test
{
    [TestClass]
    public class UnitTest1
    {
        public UnitTest1()
        {
        }

        [TestMethod]
        public void CalculateAreaFor_Circle()
        {
            double x = 5;
            double expected = 78.5;
           Circle circle = new Circle(x);
            double actual = Math.Round(circle.CalculateArea(), 1);
            Assert.AreEqual(actual, expected);
        }

        [TestMethod]
        public void CalculateAreaFor_Square()
        {
            double x = 10;
            double y = 8;
            double expected = 80;
            Square Square = new Square(x,y);
            double actual = Math.Round(Square.CalculateArea(), 1);
            Assert.AreEqual(actual,expected);
        }

        [TestMethod]
        public void CalculateAreaFor_Triangle()
        {
            double x = 4;
            double y = 5;
            double z = 6;
            double expected = 9.92;
            Triangle triangle = new Triangle(x, y, z);
            double actual = Math.Round(triangle.CalculateArea(), 2);
            Assert.AreEqual(actual, expected);
        }
    }
}