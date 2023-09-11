using System;

namespace Practical1D
{
    class pracg1d
    {
        public static void Main()
        {
            while(true)
            {
        	Console.WriteLine("Please make your selection");
      		Console.WriteLine("1 Fibonacciseries ");
      		Console.WriteLine("2 Prime numbers");
      		Console.WriteLine("3 Vowels");
		Console.WriteLine("4 foreach loop witharrays");
		Console.WriteLine("5 Reverse a number and find sum of digits of a number");
		Console.WriteLine("0 Exit");



      		int Selection = int.Parse( Console.ReadLine( ) );

      	switch( Selection ) {
        case 0:
        break;

        case 1:
        	int n1=0,n2=1,n3,i,number;    

         	Console.Write("Enter the number of elements: ");    
         	number = int.Parse(Console.ReadLine());  

         	Console.Write(n1+" "+n2+" ");  
 
         	for(i=2;i<number;++i)   
        	 {    
          		n3=n1+n2;    
          		Console.WriteLine(n3+" ");    
          		n1=n2;    
          		n2=n3;    
         	}    
        break;
    
        case 2:
        	 int n, r=0, flag=0; 
   
          	Console.Write("Enter the Number to check Prime: ");    
          	n = int.Parse(Console.ReadLine());
  
         	r=n/2;    
          	for(i=2;i<=r;i++)    
          	{    
           	if(n%i==0)    
            	{    
             		Console.WriteLine("Number is not Prime.");    
             		flag=1;    
             		break;    
            	}    
          	}    
          	if (flag==0)    
         	 Console.WriteLine("Number is Prime.");  
        break;
    
        case 3:
        	char ch;
	   	Console.WriteLine("Enter the Character:");
		ch=char.Parse(Console.ReadLine());
		
		if (ch=='a' || ch=='e' || ch=='i' || ch=='o' || ch=='u')
		{
			Console.WriteLine("Is a vowel");
		}
		else
		{
			Console.WriteLine("Is a Consonant");
		} 
        break;
        
        case 4:
            char[] arr = {'n','a','n','d','a','n','a'};
 
        Console.Write("Foreach array: ");
        foreach(char c in arr)
        {
            Console.Write(c);
        }
                    Console.WriteLine("\n");

        break;
        
        case 5:
            int reverse=0,sum=0, rem,rem1;           
            Console.Write("Enter a number: ");      
            n= int.Parse(Console.ReadLine());     
           while(n!=0)      
           {      
            rem=n%10;        
            reverse=reverse*10+rem;      
            n/=10;      
           }      
            n=reverse;
            while(n>0)      
           {      
            rem1=n%10;      
            sum=sum+rem1;      
            n=n/10;      
           }    
           
           Console.WriteLine("Reversed Number: "+reverse);
           Console.WriteLine("Sum is= "+sum); 
        break;
    
        default:
          break;
     			 }
            }
        }
    }
}
/*
Output:
Please make your selection
1 Fibonacciseries 
2 Prime numbers
3 Vowels
4 foreach loop witharrays
5 Reverse a number and find sum of digits of a number
0 Exit
1
Enter the number of elements: 3
0 1 1 
Please make your selection
1 Fibonacciseries 
2 Prime numbers
3 Vowels
4 foreach loop witharrays
5 Reverse a number and find sum of digits of a number
0 Exit
2
Enter the Number to check Prime: 3
Number is Prime.
Please make your selection
1 Fibonacciseries 
2 Prime numbers
3 Vowels
4 foreach loop witharrays
5 Reverse a number and find sum of digits of a number
0 Exit
3
Enter the Character:
n
Is a Consonant
Please make your selection
1 Fibonacciseries 
2 Prime numbers
3 Vowels
4 foreach loop witharrays
5 Reverse a number and find sum of digits of a number
0 Exit
4
Foreach array: nandana

Please make your selection
1 Fibonacciseries 
2 Prime numbers
3 Vowels
4 foreach loop witharrays
5 Reverse a number and find sum of digits of a number
0 Exit
5
Enter a number: 26
Reversed Number: 62
Sum is= 8
Please make your selection
1 Fibonacciseries 
2 Prime numbers
3 Vowels
4 foreach loop witharrays
5 Reverse a number and find sum of digits of a number
0 Exit
0
*/
