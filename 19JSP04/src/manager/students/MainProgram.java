package manager.students;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class MainProgram {
	public static Scanner scanner = new Scanner(System.in);
	public static int inputNumber = 0;
	public static int employeeNo = 0;
	public static Students[] arrSt;
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Connection conn = ConnectionUtils.getMyConnection();
		//Students st = new Students("add test student",25);
		StudentsDaoImpl stDaoImpl = new StudentsDaoImpl();
		//ArrayList<Students> students = new ArrayList<Students>();
		do {
			Menu();
			System.out.println("Type your input number : ");
			inputNumber = scanner.nextInt();
			switch (inputNumber) {
			case 1:
				// add data to the students table
				System.out.println("Please enter the numbers of students you want to add: ");
				int numStudent = scanner.nextInt();
				while(numStudent > 0) {
					stDaoImpl.addStudents(inputStudent(), conn);
					numStudent --;
				}
				break;
			case 2:
				//add data to the class table
				System.out.println("Please enter the numbers of class you want to add: ");
				int numClass = scanner.nextInt();
				while(numClass > 0) {
					stDaoImpl.addClass(inputClass(), conn);
					numClass --;
				}
				break;
			case 3:
				//add data to the dayOff table
				System.out.println("Please enter the numbers of day off you want to add: ");
				int numDayOff = scanner.nextInt();
				while(numDayOff > 0) {
					stDaoImpl.addDayOff(inputDayOff(), conn);
					numDayOff--;
				}
				break;
			case 4:
				//add data to the studentClass table
				System.out.println("Please enter the numbers of day off you want to add: ");
				int numSt = scanner.nextInt();
				while(numSt > 0) {
					stDaoImpl.addStudentClass(inputStudentClass(), conn);
					numSt--;
				}
				break;
			case 5:
				//find class with class name
				System.out.println("Please enter the class name of class you want to find: ");
				Scanner iClassName = new Scanner(System.in);
				String className = iClassName.nextLine();
				for (Class listClass : stDaoImpl.findClass(className, conn)) {
					System.out.println(listClass.getId()+" "+listClass.getClassName());
				}
			case 6:
				StudentsInfomationFound studentSIF = new StudentsInfomationFound();
				System.out.println("Please enter the student name you want to find: ");
				Scanner ip = new Scanner(System.in);
				String name = ip.nextLine();
				studentSIF.setStudentName(name);
				String dayOff = ip.nextLine();
				studentSIF.setDayOff(dayOff);
				for (StudentsInfomationFound listStudentIF : stDaoImpl.findStudent(studentSIF, conn)) 
					System.out.println(listStudentIF.getStudentName()+" "+listStudentIF.getDayOff());
				break;
			case 7:
				System.out.println("exit!");
				break;
			default:
				System.out.println("your input number is wrong, please input again!");
				System.out.println("-------------------------------");
				break;
			}

		} while (inputNumber != 7);
	}
	private static Students inputStudent()
	{
		Students st = new Students();
		Scanner inputName = new Scanner(System.in);
		System.out.println("please input name:");
		String name = inputName.nextLine();
		st.setName(name);
		System.out.println("Please input age: ");
		Scanner inputAge = new Scanner(System.in);
		int age = inputAge.nextInt();
		st.setAge(age);
		return st;
	}
	private static Class inputClass()
	{
		Class cl = new Class();
		Scanner inputName = new Scanner(System.in);
		System.out.println("please input class name:");
		String className = inputName.nextLine();
		cl.setClassName(className);
		return cl;
	}
	private static DayOff inputDayOff()
	{
		DayOff _do = new DayOff();
		System.out.println("Please input student id: ");
		Scanner inputInt = new Scanner(System.in);
		int studentId = inputInt.nextInt();
		_do.setStudentId(studentId);
		Scanner inputDayOff = new Scanner(System.in);
		System.out.println("please input day off:");
		String dayOff = inputDayOff.nextLine();
		_do.setDayOff(dayOff);
		return _do;
	}
	private static StudentClass inputStudentClass()
	{
		StudentClass sc = new StudentClass();
		Scanner inputId = new Scanner(System.in);
		System.out.println("please input studentId: ");
		int studentId = inputId.nextInt();
		sc.setStudentId(studentId);
		System.out.println("please input studentId: ");
		int classId = inputId.nextInt();
		sc.setClassId(classId);
		return sc;
	}
	
	public static void Menu() {
		System.out.println("Choose one numbers below : ");
		System.out.println("1: insert data to the Students table ");
		System.out.println("2: insert data to the class table ");
		System.out.println("3: insert data to the day_off table ");
		System.out.println("4: insert data to the Student_class table ");
		System.out.println("5. find data of class table with class name");
		System.out.println("6. find day off with student name or day of");
		System.out.println("7: exit!");
		System.out.println("-------------------------------");
	}
}
