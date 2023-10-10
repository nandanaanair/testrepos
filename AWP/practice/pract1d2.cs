using System;

public class pract1d2
{
public static void Main(string[] args)
{
int num,i,n;
int flag=0;
int r=2;
Console.WriteLine("Enter a number: ");
num=Convert.ToInt32(Console.ReadLine());
n=num/r;
for(i=2;i<=n;i++)
{
if(num%i==0)
{
Console.WriteLine("is not a prime");
flag=1;
break;
}
}
if(flag==0)
{
Console.WriteLine("is a prime");
}
}
}