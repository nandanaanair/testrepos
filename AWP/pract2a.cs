using System;

namespace practical2a
{
    class pracg1d
    {
        public static int cTof(int num)
        {
            int calculate = ((num * 9 / 5) + 32);
            return calculate;
        }
        public static decimal fToc(int num)
        {
            decimal calculate = ((num - 32) * 5 / 9);
            return calculate;
        }
        public static void Main()
        {
            while (true)
            {
                Console.WriteLine("Please make your selection");
                Console.WriteLine("1 Find Factorial ");
                Console.WriteLine("2 Money Conversion");
                Console.WriteLine("3 Quadratic Equation");
                Console.WriteLine("4 Temperature Conversion");
                Console.WriteLine("0 Exit");

                int Selection = Convert.ToInt32(Console.ReadLine());

                switch (Selection)
                {
                    case 0:
                        break;

                    case 1:
                        int num, fact = 1,i;
                        Console.WriteLine("Enter a number to find the factorial: ");
                        num = Convert.ToInt32(Console.ReadLine());

                        for(i=1;i<=num;i++)
                        {
                            fact = fact * i;
                        }
                        Console.WriteLine("Factorial of {0} is: {1} ",num,fact);
                        break;

                    case 2:
                        double euros,rs;
                        Console.WriteLine("Enter amount to convert  Euros into Indian Rupees:");
                        euros = Convert.ToInt32(Console.ReadLine());

                        rs = euros * 88.13;
                        Console.WriteLine("{0} euros in rupees is: {1} rs ",euros,rs);

                        break;

                    case 3:
                        int a,b,c;
                       double d, x1,x2;
                        Console.Write("Input the value of a : ");
                        a = Convert.ToInt32(Console.ReadLine());
                        Console.Write("Input the value of b : ");
                        b = Convert.ToInt32(Console.ReadLine());
                        Console.Write("Input the value of c : ");
                        c = Convert.ToInt32(Console.ReadLine());

                       d=b*b-4*a*c;
                       if(d==0)
                       {
                         Console.Write("Both roots are equal.\n");
                         x1=-b/(2.0*a);
                         x2=x1;
                         Console.Write("First  Root Root1= {0}\n",x1);
                         Console.Write("Second Root Root2= {0}\n",x2);
                       }
                       else if(d>0)
	                    {
	                       Console.Write("Both roots are real and diff-2\n");

	                       x1=(-b+Math.Sqrt(d))/(2*a);
	                       x2=(-b-Math.Sqrt(d))/(2*a);

	                       Console.Write("First  Root Root1= {0}\n",x1);
	                       Console.Write("Second Root root2= {0}\n",x2);
	                    }
	                    else
	                        Console.Write("Root are imeainary;\nNo Solution. \n\n");
                       break;

                    case 4:
                        
                        Console.Write("Enter 1 for celcius to farenheit and 2 for farenheit to celcius : ");
                        int choice = Convert.ToInt32(Console.ReadLine());
                        if(choice==1){
                            Console.Write("Enter values for conversion : ");
                            int value = Convert.ToInt32(Console.ReadLine());
                            Console.WriteLine (cTof(value)+" F");
                        }else if(choice==2){
                            Console.Write("Enter values for conversion : ");
                            int value = Convert.ToInt32(Console.ReadLine());
                            Console.WriteLine (fToc(value)+" C");
                        }else{
                            Console.WriteLine ("Please enter a valid number");
                        }
                        
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
1 Find Factorial
2 Money Conversion
3 Quadratic Equation
4 Temperature Conversion
0 Exit
1
Enter a number to find the factorial:
5
Factorial of 5 is: 120
Please make your selection
1 Find Factorial
2 Money Conversion
3 Quadratic Equation
4 Temperature Conversion
0 Exit
2
Enter amount to convert  Euros into Indian Rupees:
5
5 euros in rupees is: 440.65 rs
Please make your selection
1 Find Factorial
2 Money Conversion
3 Quadratic Equation
4 Temperature Conversion
0 Exit
3
Input the value of a : 8
Input the value of b : 8
Input the value of c : 1
Both roots are real and diff-2
First  Root Root1= -0.146446609406726
Second Root root2= -0.853553390593274
Please make your selection
1 Find Factorial
2 Money Conversion
3 Quadratic Equation
4 Temperature Conversion
0 Exit
4
Enter 1 for celcius to farenheit and 2 for farenheit to celcius : 1
Enter values for conversion : 33
91 F
Please make your selection
1 Find Factorial
2 Money Conversion
3 Quadratic Equation
4 Temperature Conversion
0 Exit
4
Enter 1 for celcius to farenheit and 2 for farenheit to celcius : 2
Enter values for conversion : 91
32 C
 
*/
