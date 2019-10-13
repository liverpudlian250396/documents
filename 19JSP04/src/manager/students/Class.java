package manager.students;

public class Class {
	private int id;
	private String className;
	public Class() {
		
	}
	public Class(String class_name)
	{
		this.className = class_name;
	}
	public Class(int id, String class_name) {
		this.id = id;
		this.className = class_name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	
}
