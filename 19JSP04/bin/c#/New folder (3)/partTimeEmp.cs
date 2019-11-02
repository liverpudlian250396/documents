using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeeManagement
{
    class partTimeEmp : employee
    {
        public int soGioLam { get; set; }
        public partTimeEmp() { }
        public partTimeEmp(String name, int age, int soGioLam)
        {
            this.name = name;
            this.age = age;
            this.soGioLam = soGioLam;
        }
        public override double heSoLuong()
        {
            return 300 ;
        }
        public override double salary()
        {
            return soGioLam * heSoLuong() + thuong();
        }
    }
}
