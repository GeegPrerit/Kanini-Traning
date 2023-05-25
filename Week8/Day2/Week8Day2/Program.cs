using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Week8Day2
{
    class VowelConstCount
    {
        int vowelCount = 0;
        int constCount = 0;

        public void MakeCount(String d)
        {
            string demo = d;
            for(int i=0; i<demo.Length; i++)
            {
                if (demo[i] == 'a' || demo[i] =='e' || demo[i] == 'i' || demo[i] == 'o' || demo[i] == 'u')
                {
                    vowelCount++;
                }
                else
                {
                    constCount++;
                }
            }
        }

        public void display()
        {
            Console.WriteLine("Number fo Vowels are {0} and number of consonant are {1}",vowelCount,constCount);
        }
    }

    class Bank
    {
        public int amount;

        public Bank(int amt )
        {
            amount = amt;
        }

        public void Withdrawl()
        {
            Console.WriteLine("Enter the withdrawal amount");
            int withd = Convert.ToInt32(Console.Read());
            amount = amount-withd;
            Console.Read();
        }

        public void Deposit()
        {
            Console.WriteLine("Enter the Deposit amount");
            int depo = Convert.ToInt32(Console.Read());
            amount = amount + depo;
            Console.Read();
        }

        public void Dispaly()
        {
            Console.WriteLine("Amount is "+amount);
        }
    }

    class armstrong
    {
        public int count = 0;
        public void arms(int a)
        {
            
            int temp = a;
            int sum = 0;
            
            while(temp > 0)
            {
                int temp3 = temp % 10;
                sum = sum + temp3 * temp3 * temp3;
                temp = temp / 10;
            }
            if(sum == a)
            {
                Console.WriteLine(sum);
                count++;
            }
            
        }
    }
    internal class Program
    {
        static void Main(string[] args)
        {
            VowelConstCount vw = new VowelConstCount();
            Console.WriteLine("Enter a string");
            String dd = Console.ReadLine();
            vw.MakeCount(dd);
            vw.display();

            /*Bank bk = new Bank(10000);
            Console.WriteLine("Enter your choice\nPress 1 for Withdraw\nPress 2 for Deposit\nPress 3 for Display the statement");
            int ch = Int32.Parse(Console.ReadLine());
            switch (ch)
            {
                case 1:
                    bk.Withdrawl();
                    break;
                case 2:
                    bk.Deposit();
                    break;
                case 3:
                    bk.Dispaly();
                    break;
                default:
                    Console.WriteLine("Invalid Inuput");
                    break;
            }*/

            /*armstrong aa = new armstrong();
            Console.WriteLine("Enter starting range");
            int start = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter ending range");
            int end = Convert.ToInt32(Console.ReadLine());
            for (int i = start; i <= end; i++)
            {
                aa.arms(i);
            }
            Console.WriteLine(aa.count);*/
            Console.ReadLine();
        }
        
    }
}
