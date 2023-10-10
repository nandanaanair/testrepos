using System;
class AddOpr
{
int a1,a2,a3;
public void add(int num1,int num2)
{
a1=num1+num2;
Console.WriteLine(a1);
}
public void add(int num1,int num2,int num3)
{
a2=num1+num2+num3;
Console.WriteLine(a2);
}
public void add(int num1,int num2,int num3,int num4)
{
a3=num1+num2+num3+num4;
Console.WriteLine(a3);
}
}
public class pract2b1
{
public static void Main(string[] args)
{
AddOpr ad = new AddOpr();
ad.add(2,3);
ad.add(3,4,5);
ad.add(1,2,3,4);

}
}