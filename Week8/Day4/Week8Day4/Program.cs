using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Runtime.Remoting;

namespace abstractandinterface
{ 
    abstract class bank
    {
        protected double balance;
        public abstract void withdraw(double amount);
        public void disbalance()
        {
            Console.WriteLine(balance);

        }

    }
    class hdfc : bank
    {
        public hdfc(int balance)
        {
            this.balance = balance;
        }
        public override void withdraw(double amount)
        {
            if (balance > 1000)
            {
                balance = balance - amount;


            }
            else
                Console.WriteLine("insufficient balance");
        }
    }
    class pnb : bank
    {
        public pnb(int balance)
        {
            this.balance = balance;
        }
        public override void withdraw(double amount)
        {
            if (balance > 1000)
            {
                balance = balance - amount;
            }
            else Console.WriteLine("insufficient balance");
        }

    }

    class maxmin
    {
        public void max(double amount)
        {

        }
    }

    internal class Program
    {
        static void Main(string[] args)
        {

            hdfc h = new hdfc(10000);
            h.withdraw(100);
            h.disbalance();
            Console.ReadLine();

            pnb t = new pnb(10000);
            t.withdraw(100);
            t.disbalance();
            Console.ReadLine();

        }
    }
}