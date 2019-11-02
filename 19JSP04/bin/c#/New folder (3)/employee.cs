using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeeManagement
{
    abstract class employee
    {
        public String name { get; set; }
        public int age { get; set; }
        public employee() { }
        public employee(String name, int age)
        {
            this.name = name;
            this.age = age;
        }
        public abstract double salary();
        public virtual double thuong()
        {
            return 1000;
        }
        public virtual double heSoLuong()
        {
            return 3000;
        }
    }
}
