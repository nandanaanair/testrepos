using System;
public class pract2a2
{
public static void Main(string[] args)
{
double rs,euros,rs1,euros1;
Console.WriteLine("enter euros to convert into indian rs: ");
euros=Convert.ToInt32(Console.ReadLine());
rs=euros*88.23;
Console.WriteLine("the value is :  "+rs+"rs");

Console.WriteLine("enter rs to convert into euros: ");
rs1=Convert.ToInt32(Console.ReadLine());
euros1=rs1/22.23;
Console.WriteLine("the value is :  "+euros1+"euros");
}
}