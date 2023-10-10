using System;

public class pract1d
{
public static void Main(string[] args)
{
int num,n3,i;
int n1=0;
int n2=1;
Console.WriteLine("Enter a number: ");
num=Convert.ToInt32(Console.ReadLine());
Console.WriteLine(n1);
Console.WriteLine(n2);
for(i=2;i<=num;i++)
{
n3=n1+n2;
Console.WriteLine(n3);
n1=n2;
n2=n3;
}
}
}