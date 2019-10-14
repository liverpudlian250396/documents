package manager.students;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentsDaoImpl implements IStudentsManagementDao{

	@Override
	public void addStudents(Students student, Connection conn) {
		// TODO Auto-generated method stub
		System.out.println("--------Insert table student------------");
		String sql = "INSERT INTO student ("
			    + " name,"
			    + " age) VALUES ("
			    + "?, ?)";

			  try {
			    // set all the preparedstatement parameters
				PreparedStatement pStatement = conn.prepareStatement(sql);
			    pStatement.setString(1,student.getName());
			    pStatement.setInt(2, student.getAge());

			    // execute the preparedstatement insert
			    int rowsAffected = pStatement.executeUpdate();
			    System.out.println("Sql insert : " + sql);
				System.out.println("Row Count affected = " + rowsAffected);
			    pStatement.close();
			  }
			  catch (Exception e) {
				// TODO: handle exception
				  System.out.println(e.getMessage());
			}
		 
	}

	@Override
	public void addClass(Class _class, Connection conn) {
		// TODO Auto-generated method stub
		System.out.println("--------Insert table class------------");
		String sql = "INSERT INTO class ("
			    + " class_name) VALUES ("
			    + "?)";

			  try {
			    // set all the preparedstatement parameters
				PreparedStatement pStatement = conn.prepareStatement(sql);
			    pStatement.setString(1, _class.getClassName());

			    // execute the preparedstatement insert
			    int rowsAffected = pStatement.executeUpdate();
			    System.out.println("Sql insert : " + sql);
				System.out.println("Row Count affected = " + rowsAffected);
			    pStatement.close();
			  }
			  catch (Exception e) {
				// TODO: handle exception
				  System.out.println(e.getMessage());
			}	 
	}

	@Override
	public void addStudentClass(StudentClass sClass, Connection conn) {
		// TODO Auto-generated method stub
		System.out.println("--------Insert table studentClass------------");
		String sql = "INSERT INTO StudentClass ("
			    + " student_id,"
			    + " class_id) VALUES ("
			    + "?, ?)";

			  try {
			    // set all the preparedstatement parameters
				PreparedStatement pStatement = conn.prepareStatement(sql);
			    pStatement.setInt(1, sClass.getStudentId());
			    pStatement.setInt(2, sClass.getClassId());

			    // execute the preparedstatement insert
			    int rowsAffected = pStatement.executeUpdate();
			    System.out.println("Sql insert : " + sql);
				System.out.println("Row Count affected = " + rowsAffected);
			    pStatement.close();
			  }
			  catch (Exception e) {
				// TODO: handle exception
				  System.out.println(e.getMessage());
			}
	}

	@Override
	public void addDayOff(DayOff dayOff, Connection conn) {
		// TODO Auto-generated method stub
		System.out.println("--------Insert table studentClass------------");
		String sql = "INSERT INTO DayOff ("
			    + " student_id,"
			    + " day_off) VALUES ("
			    + "?, ?)";

			  try {
			    // set all the preparedstatement parameters
				PreparedStatement pStatement = conn.prepareStatement(sql);
			    pStatement.setInt(1, dayOff.getStudentId());
			    pStatement.setString(2, dayOff.getDayOff());

			    // execute the preparedstatement insert
			    int rowsAffected = pStatement.executeUpdate();
			    System.out.println("Sql insert : " + sql);
				System.out.println("Row Count affected = " + rowsAffected);
			    pStatement.close();
			  }
			  catch (Exception e) {
				// TODO: handle exception
				  System.out.println(e.getMessage());
			}
	}

	@Override
	public List<Students> findStudent(Students student, Connection conn) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Class> findClass(String name, Connection conn) throws SQLException {
		// TODO Auto-generated method stub
		List<Class> listClass = new ArrayList<Class>();
		System.out.println("--------Find information of class with class name------------");
		String sql = "SELECT class.id, class.class_name FROM students_management.class where "
				+ "CLASS_NAME LIKE ("+"'"+"%?%'"+");";
		//String sql = "SELECT class.id, class.class_name FROM students_management.class where "
			//	+ "CLASS_NAME LIKE ('%tich%');";
		PreparedStatement pStatement = conn.prepareStatement(sql);
		pStatement.setString(1,name);
		ResultSet resultSet = pStatement.executeQuery();
		while(resultSet.next())
		{
			int id = resultSet.getInt("id");
			String className = resultSet.getString("class_name");
			Class _class = new Class(id,className);
			listClass.add(_class);
		}	
		return listClass;
	}

}
