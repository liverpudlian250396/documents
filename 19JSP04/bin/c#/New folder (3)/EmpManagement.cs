using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeeManagement
{
    class EmpManagement
    {
        private static List<fullTimeEmp> ftEmp = new List<fullTimeEmp>();
        private static List<partTimeEmp> ptEmp = new List<partTimeEmp>();
        public void addFullTime(fullTimeEmp ft)
        {
            ftEmp.Add(ft);
        }

        public void addPartTime(partTimeEmp pt)
        {
            ptEmp.Add(pt);
        }
        public void showFullTime()
        {
            Console.WriteLine("{0,-25}{1,-4}{2,-10}{3,-10}{4,-6}{5,-5}", "name", "age", "ngay lam", "hs luong","thuong","luong");
            Console.WriteLine("------------------------------------------------------");
            foreach (fullTimeEmp ft in ftEmp)
            {
                Console.WriteLine("{0,-25}{1,-4}{2,-10}{3,-10}{4,-6}{5,-5}", ft.name, ft.age, ft.soNgayLam, ft.heSoLuong(),ft.thuong(),ft.salary());
            }
        }
        public void showPartTime()
        {
            Console.WriteLine("{0,-25}{1,-4}{2,-10}{3,-10}{4,-6}{5,-5}", "name", "age", "gio lam", "hs luong", "thuong", "luong");
            Console.WriteLine("------------------------------------------------------");
            foreach (partTimeEmp pt in ptEmp)
            {
                Console.WriteLine("{0,-25}{1,-4}{2,-10}{3,-10}{4,-6}{5,-5}", pt.name, pt.age, pt.soGioLam, pt.heSoLuong(), pt.thuong(), pt.salary());
            }
        }

        public void timKiemFT(string name)
        {
            int dem = 0;
            for (int i = 0; i < ftEmp.Count; i++)
            {
                if (ftEmp[i].name == name)
                {
                    Console.WriteLine("{0,-25}{1,-4}{2,-10}{3,-10}{4,-6}{5,-5}", ftEmp[i].name, ftEmp[i].age, ftEmp[i].soNgayLam, ftEmp[i].heSoLuong(),ftEmp[i].thuong(), ftEmp[i].salary());
                    dem++;
                }
            }
            if (dem == 0)
            {
                Console.WriteLine("Khong ton tai nhan vien ten {0}",name);
            }
            else
            {
                Console.WriteLine("-------------------------------");
                Console.WriteLine("ton tai {0} nhan vien ten {1}",dem,name);
            }
        }
        public void timKiemPT(string name)
        {
            int dem = 0;
            for (int i = 0; i < ptEmp.Count; i++)
            {
                if (ftEmp[i].name == name)
                {
                    Console.WriteLine("{0,-25}{1,-4}{2,-10}{3,-10}{4,-6}{5,-5}", ptEmp[i].name, ptEmp[i].age, ptEmp[i].soGioLam, ptEmp[i].heSoLuong(), ptEmp[i].thuong(), ptEmp[i].salary());
                    dem++;
                }
            }
            if (dem == 0)
            {
                Console.WriteLine("Khong ton tai nhan vien ten {0}", name);
            }
            else
            {
                Console.WriteLine("-------------------------------");
                Console.WriteLine("ton tai {0} nhan vien ten {1}", dem, name);
            }
        }
    }
}
