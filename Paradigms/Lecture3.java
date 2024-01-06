// &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   3rd Lesson: Inheritance & Interfaces   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

/* Overall classes: 6
 1. TwoDigits
 2. NoDefualtPoint
 3. MyPoint
 4. MyLine
 5. OnlyCtorString
 6. MyStack


 Overall functions: 1
 1. lecture_2_main
 */

package lectures;

// TODO: finish 3b
@SuppressWarnings({"unused", "static-access"})
public class Lecture3
{

	public static class MyStudent
	{

		public MyStudent(int id, String name)
		{
			this.name = new String(name);
			this.id = id;
			grade = 100;
			number_of_courses = 0;
		}

		public boolean equals(Object other_object)
		{
			if(other_object instanceof MyStudent) if(id == ((MyStudent)other_object).get_id()) return true;
			return false;
		}
		public String toString() {return "Student's information: \n 1. id: " + id + "\n 2. name: " + name + "\n number of courses: " + number_of_courses;}
		public int price_for_tuition() {return number_of_courses * COURSE_PRICE;}
		public int compute_payment() {return Math.min(MAX_PRICE, price_for_tuition());} // IMPORTANT: adding behavior instead of substituting!! //
		public int get_grade() {return grade;}
		public String get_name() {return name;}
		public int get_id() {return id;}
		public int get_number_of_courses() {return number_of_courses;}
		public boolean set_number_of_courses(int new_number_of_courses) {this.number_of_courses = new_number_of_courses; return true;}
		protected String get_class_name() {return "MyStudent";}
		protected void print_class_name() {System.out.println(get_class_name());}

		protected int grade;
		private static final int COURSE_PRICE = 1000; // acts as "constants": final static //
		private static final int MAX_PRICE = 3000; // IMPORTANT: adding behavior instead of substituting!! //
		private String name;
		private int id, number_of_courses;
	}
	public static class MyMilgay extends MyStudent
	{

		public MyMilgay(int id, int milga, String name)
		{
			super(id, name);
			this.milga = milga;
		}

		public void set_grade(int new_grade) {grade = new_grade;}
		public int get_milga() {return milga;}
		public int price_for_tuition() {return Math.max(super.price_for_tuition() - milga, 0);}
		protected String get_class_name() {return "MyMilgay";}
		protected void print_class_name() {System.out.println(get_class_name());}

		protected int grade = 80;
		private int milga;
	}
	public static class MyPoint
	{
		MyPoint(){}
		MyPoint(int x, int y){this.x = x; this.y = y; ++number_of_points;}

		public void set_x(int x) {this.x = x;}
		public void set_y(int y) {this.y = y;}
		public int get_x() {return x;}
		public int get_y() {return y;}
		public void print_point_1() {System.out.println("(" + x + "," + y + ")");}
		// No overriding the second print: it's static so no this for run time //
		public static void print_point_2(MyPoint point_to_print) {System.out.println("(" + point_to_print.x + "," + point_to_print.y + ")");}
		private static int number_of_points = 0;
		private int x = 0, y = 0;
	}
    public static interface i_tank
    {
    	public double capacity();
    	public double get_content();
    	public void fill(double amount_to_fill);
    	public boolean is_full();
    }
	public static class MyBox1 implements i_tank
	{
    	MyBox1(double contents, double length, double width, double height) {this.contents = contents; this.length = length; this.width = width; this.height = height;}

    	public double capacity() {return 0.0;}
    	public double get_content() {return contents;}
    	public void fill(double amount_to_fill) {contents = Math.min(contents + amount_to_fill, capacity());}
    	public boolean is_full() {return true;}

    	private double contents, length, width, height;
	}
    public static class Tank
	{

	}

	public static void playing_with_casting()
	{
		MyMilgay m_1 = new MyMilgay(11, 1000, "Milgay");
		m_1.set_number_of_courses(2);
		System.out.println("The amount the first student need to pay is: " + m_1.price_for_tuition());

		MyStudent m_2 = new MyMilgay(12, 800, "David");
		m_2.set_number_of_courses(3);
		System.out.println("The amount the second student need to pay is: " + (m_2.price_for_tuition()));

		MyStudent m_3 = new MyStudent(13, "Benny");
		m_3.set_number_of_courses(4);
		System.out.println("The amount the third student need to pay is: " + (m_3.compute_payment()));

		MyMilgay m_4 = new MyMilgay(14, 600, "Dobbi");
		m_4.set_number_of_courses(5);
		m_4.set_grade(90);
		System.out.println("Grade: " + m_4.get_grade()); // get_grade declared in my_student and not supplying override for milgay's other grade field//
		// UPCASTING OR NOT ON M_4: the get_grade in student and milgay's both implement with returning MyStudent.grade!! //
	}
	public static void playing_with_static_methods()
	{
		MyPoint m_p_1 = new MyPoint(1,2);
		m_p_1.print_point_1();
		// if we were in class MyPoint we could write print_point_2(m_p_1) //
		m_p_1.print_point_2(m_p_1);
		MyPoint.print_point_2(m_p_1);
	}

	public static void main(String[] args)
	{
		playing_with_casting();
		playing_with_static_methods();
	}

}
