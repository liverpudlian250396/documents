package manager.students;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public interface IStudentsManagementDao {
	//a.them moi 1 sinh vien
	public void addStudents(Students student, Connection conn);
	//b.them moi 1 class
	public void addClass(Class _class, Connection conn);
	//c.dang ki cho sinh vien hoc mot lop nao do
	public void addStudentClass(StudentClass sClass, Connection conn);
	//d.dang ki ngay nghi cho 1 sinh vien
	public void addDayOff(DayOff dayOff, Connection conn);
	//tim kiem thong tin lop hoc theo ten
	List<Class> findClass (String name, Connection conn) throws SQLException;
	//tim kiem thong tin sinh vien theo id, name, age
	public List<Students> findStudent(Students student, Connection conn);
	
}
