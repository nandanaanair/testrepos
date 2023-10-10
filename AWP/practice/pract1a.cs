using System;

class prac1a
{

public static void Main(string [] args)
{
int num1,num2,num3,num4,prod;
Console.WriteLine("Enter num1:");
num1= Convert.ToInt32(Console.ReadLine());
Console.WriteLine("Enter num2:");
num2=Convert.ToInt32(Console.ReadLine());
Console.WriteLine("Enter num3:");
num3=Convert.ToInt32(Console.ReadLine());
Console.WriteLine("Enter num4:");
num4=Convert.ToInt32(Console.ReadLine());

prod=num1*num2*num3*num4;
Console.WriteLine("answer:{0} ",prod);
}
}



