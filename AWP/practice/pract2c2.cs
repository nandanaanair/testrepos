using System;

public class pract
{
public static void Main(string[] args)
{
int age;
try
{
Console.WriteLine("Enter age: ");
age=Convert.ToInt32(Console.ReadLine());
if (age<=0 ||age>100)
{
throw new AgeOutOfRangeException("Age","Age out of range");
}
}
catch(AgeOutOfRangeException err)
{
Console.WriteLine(err.Message);
}
finally
{
Console.WriteLine("smooth");
}
}
}