using System;
public class pract1d2
{
public static void Main(string[] args)
{
int num,i;
int fact=1;
Console.WriteLine("enter num: ");
num=Convert.ToInt32(Console.ReadLine());

for(i=1;i<=num;i++)
{
fact=fact*i;
}
Console.WriteLine("factorial is : "+fact);
}
}