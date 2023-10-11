using System;
namespace Delegates
{
public delegate int addopr(int num1,int num2);

public class program
{
static int add(int n1,int n2)
{
return n1+n2;
}
public static void Main(string[] args)
{
addopr ad=new addopr(program.add);
Console.WriteLine(ad(10,10));
}
}
}