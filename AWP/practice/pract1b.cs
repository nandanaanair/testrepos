using System;

class pract1b
{
public static void Main(string[] args)
{
string fname,lname;

string c;
Console.WriteLine("Enter a string: ");
fname=Console.ReadLine();
Console.WriteLine("Enter a srring: ");
lname=Console.ReadLine();

c=String.Concat(fname,"",lname);
Console.WriteLine("concat:{0} ",c);

Console.WriteLine("Uppercase : {0} ",c.ToUpper());

Console.WriteLine("Lowercase : {0} ",c.ToLower());

Console.WriteLine("Uppercase : {0} ",c.Replace(" ","-"));
Console.WriteLine("Does it contain nair?: {0} ",c.Contains("nair"));
Console.WriteLine("Starts with n? : {0} ",c.StartsWith("n"));
Console.WriteLine("Ends With n?: {0} ",c.EndsWith("n"));
}
}