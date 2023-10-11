using System;
public class Box
{
double l,b,h;
public Box()
{
l=1;
b=1;
h=1;
}
public Box(int length, int breadth)
{
l=length;
b=breadth;
h=1;
}
public Box(int length, int breadth,int height)
{
l=length;
b=breadth;
h=height;
}
public double volume()
{
return l*b*h;
}
}

public class cons_overloading
{
public static void Main(string[] args)
{
Box b1=new Box();
Console.WriteLine("box 1: "+b1.volume());
Box b2=new Box(10,20);
Console.WriteLine("box 1: "+b2.volume());
Box b3=new Box(10,20,30);
Console.WriteLine("box 1: "+b3.volume());
}
}
