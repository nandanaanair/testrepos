using System;
public class pract2a4
{
public static void Main(string[] args)
{
double fah,cel;
Console.WriteLine("enter 1- ctof and 2- ftoc: ");
int choice=Convert.ToInt32(Console.ReadLine());

if(choice==1)
{
Console.WriteLine("enter celcius: ");
cel=Convert.ToInt32(Console.ReadLine());
fah=(cel*(9.0/5.0))+32;
Console.WriteLine(fah+"F");
}
else
{
Console.WriteLine("enter fahrenheit: ");
fah=Convert.ToInt32(Console.ReadLine());
cel=((fah-32)*5.0/9.0);
Console.WriteLine(cel+"C");
}

}
}