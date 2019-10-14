package manager.students;

public class StudentsInfomationFound {
	private String dayOff,studentName;

	public StudentsInfomationFound(String dayOff, String studentName) {
		super();
		this.dayOff = dayOff;
		this.studentName = studentName;
	}

	public StudentsInfomationFound() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getDayOff() {
		return dayOff;
	}

	public void setDayOff(String dayOff) {
		this.dayOff = dayOff;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	
}
