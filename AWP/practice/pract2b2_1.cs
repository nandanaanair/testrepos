using System;
public class grandparent
{
public void showgparent()
{
Console.WriteLine("Im a grandparent");
}
}
public class parent:grandparent
{
public void showparent(int num1,int num2)
{
Console.WriteLine("Im a parent"+(num1+num2));
}
}
public class child:parent
{
public void showchild()
{
showgparent();
showparent(2,3);
Console.WriteLine("Im a child");
}
}
public class pract2b_2
{
public static void Main(string[] args)
{
child c=new child();
c.showchild();
}
}