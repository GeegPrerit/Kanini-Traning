using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.ConstrainedExecution;
using System.Text;
using System.Threading.Tasks;

namespace Week8Day3
{
    interface dc1
    {
        void disp1();
        void show();

    }
    interface dc2
    {
        void disp1();
        void show();
    }
    class prerit : dc1, dc2
    {
        public void disp1()
        {
            Console.WriteLine("this is child class method");
        }
        void dc1.show()
        {
            Console.WriteLine("this is dc1 interface method");
        }
        void dc2.show()
        {
            Console.WriteLine("this is dc2 interface2 method");
        }


    }
    class fact
    {
        public int factor(int n)
        {
            if (n == 1)
            {
                return n;
            }
            else
            {
                return n * factor(n - 1);
            }
            
        }
    }

    class prime
    {
        public void findPrime()
        {
            int num, m = 0, flag = 0, ctr=0;
            Console.Write("Enter the Starting Range: ");
            int start = int.Parse(Console.ReadLine());
            Console.Write("Enter the Ending Range: ");
            int end = int.Parse(Console.ReadLine());

            for (num = start; num <= end; num++)
            {
                ctr = 0;

                for (int i = 2; i <= num / 2; i++)
                {
                    if (num % i == 0)
                    {
                        ctr++;
                        break;
                    }
                }

                if (ctr == 0 && num != 1)
                    Console.Write("{0} ", num);
            }
            Console.Write("\n");
        }
    }
    
    internal class Program
    {
        public static string greet(string dd)
        {
            return ("hello "+dd);
        }
        static void Main(string[] args)
        {
            /*Console.WriteLine("Enter name");
            string d = Console.ReadLine();
            Console.WriteLine(greet(d));
            Console.ReadLine();
            prerit obj = new prerit();
            obj.disp1();
            dc1 obj1 = obj;
            obj1.show();
            dc2 obj2 = obj;
            obj2.show();
            ((dc2)obj).show();*/

           /* fact f = new fact();
            Console.WriteLine(f.factor(5));

            int n1 = 0, n2 = 1, n3, i, number;
            Console.Write("Enter the number of elements: ");
            number = int.Parse(Console.ReadLine());
            Console.Write(n1 + " " + n2 + " "); //printing 0 and 1    
            for (i = 2; i < number; ++i) //loop starts from 2 because 0 and 1 are already printed    
            {
                n3 = n1 + n2;
                Console.Write(n3 + " ");
                n1 = n2;
                n2 = n3;
            }*/
            prime p = new prime();
            p.findPrime();
            Console.ReadLine();
        }
    }
}
