using System;

namespace ArrayOfStruct
{
class pract1c
{
struct Student
{
public string sid,sname,cname;
public string dob;
} 
public static void Main(string[] args)
{
int num,i;
Student[] s =new Student[5];
Console.WriteLine("Enter no.of students: ");
num=Convert.ToInt32(Console.ReadLine());

for (i=0;i<num;i++)
{
Console.WriteLine("Enter id: ");
s[i].sid=Console.ReadLine();
Console.WriteLine("Enter name : ");
s[i].sname=Console.ReadLine();
Console.WriteLine("Enter cname : ");
s[i].cname=Console.ReadLine();
Console.WriteLine("Enter date of birth: ");
s[i].dob=Console.ReadLine();
}

for (i=0;i<num;i++)
{
Console.WriteLine("id: "+s[i].sid);
Console.WriteLine("name : "+s[i].sname);
Console.WriteLine("cname : "+s[i].cname);
Console.WriteLine("date of birth: "+s[i].dob);
}

}
}
}