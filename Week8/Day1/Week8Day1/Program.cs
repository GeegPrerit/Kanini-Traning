using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Week8Day1
{
    class student
    {
        string stuName;
        int stuId;
        double stuTotalMarks;
        double m1, m2, m3;
        double avg;
        

        public void GetData()
        {
            stuName = Console.ReadLine();
            stuId = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter 3 marks");
            m1 = Convert.ToInt32(Console.ReadLine());
            m2 = Convert.ToInt32(Console.ReadLine());
            m3 = Convert.ToInt32(Console.ReadLine());
        }
        public void Display()
        {
            Console.WriteLine("Student name is {0} and Student id is {1} and total marks is {2} and average {3}", stuName,stuId, stuTotalMarks,avg);
        }

        public double Total()
        {

            stuTotalMarks = m1 + m2 + m3;
            return stuTotalMarks;
            
        }
        public double Average()
        {
            
            avg = Total()/3;
            return avg;

        }


    }

    class Employee
    {
        string empName;
        int empNumber,da,bp,pf;
        int empNetSalary,empGrossSalary;

         public void GteDetails()
         {
            Console.WriteLine("Enter the Enployee Name");
            empName = Console.ReadLine();
            Console.WriteLine("Enter the Employee Number");
            empNumber = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter the Basic Pay");
            bp = Convert.ToInt32(Console.ReadLine()); 
            Console.WriteLine("Enter Provident Fund Amount");
            pf = Convert.ToInt32(Console.ReadLine());
            /*Console.WriteLine("Enter Daily Allo");
            da = Convert.ToInt32(Console.ReadLine());*/
         }

        public int CalculateGrossSalary()
        {
            da = (bp * 10) / 100;
            empGrossSalary = bp+da;
            return empGrossSalary;
        }

        public int CalculateNetSalary()
        {
            empNetSalary = CalculateGrossSalary ()- pf;
            return empNetSalary;
        }
        public void Display()
        {
            Console.WriteLine("========================");
            Console.WriteLine("------Salary Slip-------");
            Console.WriteLine("Name : " + empName);
            Console.WriteLine("Employee Id : " + empNumber);
            Console.WriteLine("Gross Salary : "+CalculateGrossSalary());
            Console.WriteLine("Net Salary : " + CalculateNetSalary());
            Console.WriteLine("------Thank You-------");
            Console.WriteLine("========================");
            

        }
    }
    class Calculator
    {

        int a=Convert.ToInt32(Console.ReadLine());
        int b= Convert.ToInt32(Console.ReadLine());
        int c=Convert.ToInt32(Console.ReadLine());
        int ad, sub;
        public int add()
        {
            
            int ad = a + b + c;
            return ad;
        }
        public int subs()
        {
            int sub = a - b - c;
            return sub;
        }

        public void display()
        {
            Console.WriteLine("Sum is "+add()+" and is "+subs());
        }
    }

    class Convertor
    {
        double amount,currD,currI;
        public double inDollar()
        {
            Console.WriteLine("Enter Amount");
            amount = Convert.ToInt32(Console.ReadLine());
            currD = amount / 80;
            return currD;
        }
        public double inRuppee()
        {
            Console.WriteLine("Enter Amount");
            amount = Convert.ToInt32(Console.ReadLine());
            currI = amount * 80;
            return currI;
        }

        public void displayD()
        {
            Console.WriteLine("Amount in Dollar $"+inDollar());
        }

        public void displayI()
        {
            Console.WriteLine("Amount in Ruppee " + inRuppee());
        }
    }
    class Emplloyee
    {
        private int age;
        public int Age
        {
            set
            {
                if (value>18)
                    age = value;
            }
            get
            {
                return age;
            }
        }
        public void display()
        {
            Console.WriteLine(age);
        }
    }

    class Parent
    {
        int a, b;
        string c;
        //default constructor
        public Parent()
        {
            Console.WriteLine("Default Constructor is called");
            a = 100;
        }
        public Parent(int x, int y, string z)
        {
            Console.WriteLine("Parameterized Constructor is called");
            a = x;
            b = y;
            c = z;
        }
        public void Display()
        {
            Console.WriteLine("A Valus is " + a);

            Console.WriteLine("B Valus is " + b);

            Console.WriteLine("C Valus is " + c);
        }
    }
    internal class Program
    {
        static void Main(string[] args)

        {
            Parent p = new Parent();
            p.Display();
            Parent p1 = new Parent(100, 200, "Kanini");
            p1.Display();

            /* Employee emp = new Employee();
             emp.GteDetails();
             emp.Display();*/
            /* string op;
             Convertor con = new Convertor();
             do
             {
                 Console.WriteLine("Enter your choice\nPress 1 for Rupee to Dollar\nPress 2 for Dollar to rupee");
                 int ch = Convert.ToInt32(Console.ReadLine());
                 switch (ch)
                 {
                     case 1:
                         con.displayD();
                         break;
                     case 2:
                         con.displayI();
                         break;
                     default:
                         Console.WriteLine("Invalid Input");
                         break;

                 }
                 Console.WriteLine("Do you want to continue Y/n");
                 op = Console.ReadLine();
             } while (op == "Y" || op=="y" || op=="yes");*/

            /*Calculator max = new Calculator();
            
            max.add();
            max.subs();
            max.display();*/

            /*student student = new student();
            student.GetData();
            student.Average();
            student.Display();*/

            /*int[][] arr = new int[4][];
            arr[0] = new int[3] {1,2,3};
            arr[1] = new int[5] { 4, 5, 6, 7,8};
            arr[2] = new int[2] { 9, 10 };
            arr[3] = new int[5] { 11, 12, 13, 14,15 };
            //arr[4] = new int[4] { 15, 16, 17, 18};

            for(int i = 0; i < arr.Length; i++)
            {
                for(int j = 0; j < arr[i].Length; j++)
                {
                    Console.WriteLine("Element("+i+")"+"("+j+")"+ + arr[i][j]+" ");
                }   
                Console.WriteLine();
            }*/
            Emplloyee emplloyee = new Emplloyee();
            emplloyee.Age =Convert.ToInt32(Console.ReadLine());
            emplloyee.display();
            Console.ReadLine();
        }
    }
}
