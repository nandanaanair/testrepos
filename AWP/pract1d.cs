using System;  
  public class pract1d
   {  
     public static void Main(string[] args)  
      {  switch (ch){
case 1: Console.Write("Fibonacci : "); 
         int x=0,y=1,z,i,num=10;    
             
         Console.Write(x+" "+y+" "); 
         for(i=2;i<num;++i)   
         {    
          z=x+y;    
          Console.Write(z+" ");    
          x=y;    
          y=z; 
	break;
case 2: Console.Write("Prime number: ");
int n =7;
         int a;
         a = 0;
         for (int i = 1; i <= n; i++) {
            if (n % i == 0) {
               a++;
            }
         }
         if (a == 2) {
            Console.WriteLine("Prime Number");
         } else {
            Console.WriteLine("Not a Prime Number");
         }
         Console.ReadLine();
	    }   
         }    
      }  
   }  

switch(expression) 
{
  case x:
    // code block
    break;
  case y:
    // code block
    break;
  default:
    // code block
    break;
}