package manager.students;

public class ClassDayOff {
	private int id;
	private int classId;
	private int studentId;
	public ClassDayOff(int classId, int studentId) {
		super();
		this.classId = classId;
		this.studentId = studentId;
	}
	public ClassDayOff(int id, int classId, int studentId) {
		super();
		this.id = id;
		this.classId = classId;
		this.studentId = studentId;
	}
	public ClassDayOff() {
		super();
		// TODO Auto-generated constructor stub
	}
}
