using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeeManagement
{
    class fullTimeEmp : employee
    {
        public double soNgayLam { get; set; }
        public fullTimeEmp() { }
        public fullTimeEmp(String name, int age, double soNgayLam)
        {
            this.name = name;
            this.age = age;
            this.soNgayLam = soNgayLam;
        }
        public override double thuong()
        {
            return base.thuong() + 1000;
        }
        public override double salary()
        {
            return soNgayLam * base.heSoLuong() + thuong();
        }
    }
}
