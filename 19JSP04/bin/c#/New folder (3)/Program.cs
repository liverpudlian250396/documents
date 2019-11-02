using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeeManagement
{
    class Program
    {
        static void Main(string[] args)
        {

            EmpManagement empM = new EmpManagement();
            int chon;
            do
            {
                menu();
                Console.WriteLine("chon chuc nang: ");
                chon = Int32.Parse(Console.ReadLine());
                switch (chon)
                {
                    case 1:
                        Console.WriteLine("nhap bao nhieu nhan vien full time: ");
                        int n = Int32.Parse(Console.ReadLine());
                        while (n > 0)
                        {
                            empM.addFullTime(inputFT());
                            n--;
                        }
                        break;
                    case 2:
                        Console.WriteLine("nhap bao nhieu nhan vien part time: ");
                        int m = Int32.Parse(Console.ReadLine());
                        while (m > 0)
                        {
                            empM.addPartTime(inputPT());
                            m--;
                        }
                        break;
                    case 3:
                        empM.showFullTime();
                        break;
                    case 4:
                        empM.showPartTime();
                        break;
                    case 5:
                        Console.WriteLine("nhap ten can tim kiem: ");
                        string name = Console.ReadLine();
                        empM.timKiemFT(name);
                        break;
                    case 6:
                        Console.WriteLine("nhap ten can tim kiem: ");
                        string ten = Console.ReadLine();
                        empM.timKiemPT(ten);
                        break;
                    case 7:
                        break;
                }
            } while (chon != 7);
            
            Console.ReadKey();
        }
        public static fullTimeEmp inputFT()
        {
            fullTimeEmp fEmp;
            String name;
            int age;
            double soNgayLam;
            Console.WriteLine("Nhap ho ten:");
            name = Console.ReadLine();
            Console.WriteLine("Nhap tuoi: ");
            age = Int32.Parse(Console.ReadLine());
            Console.WriteLine("Nhap so ngay lam: ");
            soNgayLam = double.Parse(Console.ReadLine());
            return  fEmp = new fullTimeEmp(name, age, soNgayLam);
        }
        public static partTimeEmp inputPT()
        {
            partTimeEmp pEmp;
            String name;
            int age, soGioLam;
            Console.WriteLine("Nhap ho ten:");
            name = Console.ReadLine();
            Console.WriteLine("Nhap tuoi: ");
            age = Int32.Parse(Console.ReadLine());
            Console.WriteLine("Nhap so gio lam: ");
            soGioLam = Int32.Parse(Console.ReadLine());
            return pEmp = new partTimeEmp(name, age, soGioLam);
        }
        public static void menu()
        {
            Console.WriteLine("vui long chon chuc nang muon thuc hien!");
            Console.WriteLine("1. Them nhan vien full time.");
            Console.WriteLine("2. them nhan vien part-time.");
            Console.WriteLine("3. in danh sach nhan vien full time.");
            Console.WriteLine("4. In danh sach nhan vien part-time.");
            Console.WriteLine("5. tim kiem nhan vien full time.");
            Console.WriteLine("6. Tim kiem nhan vien part-time.");
            Console.WriteLine("7. exit!");
        }
    }
}
