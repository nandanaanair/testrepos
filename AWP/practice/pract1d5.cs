using System;

public class pract1d2
{
public static void Main(string[] args)
{
int rem=0,rev=0;
int rem1=0;
int num,i,sum=0;

Console.WriteLine("enter num: ");
num=Convert.ToInt32(Console.ReadLine());
int n=num;
for(i=0;i<=num;i++)
{
rem=num%10;
rev=rev*10+rem;
num=num/10;
}
for(i=0;i<=n;i++)
{
rem1=n%10;
sum=sum+rem1;
n=n/10;
}
Console.WriteLine("reverse: "+rev);
Console.WriteLine("sum of digits: "+sum);
}
}