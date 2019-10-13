package manager.students;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

public interface IStudentsManagementDao {
	//them moi 1 sinh vien
	public void addStudents(Students student, Connection conn);
	//them moi 1 class
	public void addClass(Class _class, Connection conn);
	//dang ki cho sinh vien hoc mot lop nao do
	public void addStudentClass(StudentClass sClass, Connection conn);
	//dang ki ngay nghi cho 1 sinh vien
	public void addDayOff(DayOff dayOff, Connection conn);
	//tim kiem thong tin sinh vien theo id, name, age
	public List<Students> findStudent(Students student, Connection conn);
	
}
