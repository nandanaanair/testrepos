using System;

interface addi
{
void add(int num1,int num2);
}
interface subbu
{
void sub(int num1,int num2);
}

public class dikhao:addi,subbu
{
public void add(int num1,int num2)
{
Console.WriteLine(num1+num2);
}
public void sub(int num1,int num2)
{
Console.WriteLine(num1-num2);
}
public void mul(int num1,int num2)
{
Console.WriteLine(num1*num2);
}

}
public class pract2b2_interface
{
public static void Main(string[] args)
{
dikhao d=new dikhao();
d.add(2,3);
d.sub(5,2);
d.mul(2,2);
}
}