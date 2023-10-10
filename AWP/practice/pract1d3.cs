using System;

public class pract1d2
{
public static void Main(string[] args)
{
string ch;
Console.WriteLine("Enter a letter: ");
ch=Console.ReadLine();

if (ch=="a" || ch=="e" || ch=="i" || ch=="o" || ch=="u")
{
Console.WriteLine("is a vowel: ");
}
else
{
Console.WriteLine("is a consonant: ");
}
}
}