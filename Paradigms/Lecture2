// &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   2nd Lesson: Object class   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

/* Overall classes: 6
 1. TwoDigits
 2. NoDefualtPoint
 3. MyPoint
 4. MyLine
 5. OnlyCtorString
 6. MyStack


 Overall functions: 1
 1. playing_with_point_set
 2. playing_with_up_down_casting
 3. my_insertion_sort
 4. general_sorting
 5. playing_with_sorting
 6. main
 */

package lectures;

// import javax.management.RuntimeErrorException;  - not used ATM

// TODO: finish 2b
public class Lecture2
{

	public static class EmptyDemoCircle{}
	public static class MyPoint
	 {
		public MyPoint() {} // using the default arguments
		public MyPoint(int x, int y) {this.x = x; this.y = y;}
		public MyPoint(MyPoint other_point) {x = other_point.x; y = other_point.y;}

		public boolean set_x(int x) {this.x = x; return true;}
		public boolean set_y(int y) {this.y = y; return true;}

		public double get_x() {return x;}
		public double get_y() {return y;}


		// == with primitives works as assembly equals for register bits //
		public boolean equals(MyPoint other_point) {return (x == other_point.x) && (y == other_point.y);}

		// overriding equals for the Point class' case //
		public boolean equals(Object other_object)
		{
			boolean result = false;
			if(other_object instanceof MyPoint)
			{
				if(x == ((MyPoint)other_object).get_x() && y == ((MyPoint)other_object).get_y())
					result = true;
			}
			return result;
		}

		public String toString() {return  "( " + x + " , " + y + " )";}

		private double x = 0.0, y = 0.0;
	 }

	// A structure handling a set of points //
	public static class PointSet
	{
		public PointSet(int point_capacity)
		{
			point_elements = new MyPoint[point_capacity];
			size = 0;
		}

		public int size() {return size;}
		public void add(MyPoint elem_to_add)
		{
			if(elem_to_add != null)
			{
				if(!contains(elem_to_add) && (size + 1 <= point_elements.length))
				{
					point_elements[size] = new MyPoint(elem_to_add);
					++size;
				}
			}
		}
		public void remove(MyPoint elem_to_check)
		{
			boolean found = false;
			for(int remove_index = 0; (!found) && (remove_index < size); ++remove_index)
			{
				if(point_elements[remove_index].equals(elem_to_check))
				{
					point_elements[remove_index] = point_elements[remove_index - 1];
					point_elements[remove_index - 1] = null;
					--size;
					found = true;
				}
			}
		}
		public boolean contains(MyPoint point_to_check)
		{
			boolean found = false;
			for (int contain_index = 0; (!found) && contain_index < size; ++contain_index ) {if(point_elements[contain_index].equals(point_to_check) ) found = true;}
			return found;
		}

		private MyPoint [] point_elements;
		private int size;
	}
	public static class ObjectSet
	{
		public ObjectSet(int capacity)
		{
			general_elements = new Object[capacity];
			size = 0;
		}

		public int size() {return size;}
		public boolean add(Object element_to_add)
		{
			if(element_to_add != null)
			{
				if(!contains(element_to_add) && size < general_elements.length)
				{
					general_elements[size] = element_to_add;
					++size;
					return true;
				}
			}
			return false;
		}
		public boolean remove(Object element_to_remove)
		{
			boolean found = false;
			for(int removing_index = 0; !found && removing_index < size; ++removing_index )
			{
				general_elements[removing_index] = general_elements[removing_index - 1];
				general_elements[removing_index - 1] = null;
				found = true;
			}
			return found;
		}
		public boolean contains(Object element_to_check)
		{
			boolean found = false;
			if(element_to_check != null)
			{
				for(int checking_index = 0; !found && checking_index < size; ++ checking_index)
				{if (general_elements[checking_index].equals(element_to_check)) found = true;}
			}
			return found;
		}

		// initiating the att's outside a C'tor //
		private Object [] general_elements;
		private int size;
	}

	public static class MyStudent implements IComparable
	{
		MyStudent(int id, String name){this.id = id; this.name = new String(name);}

		@Override
		public int compareTo(Object other_object)
		{
			if(other_object instanceof MyStudent)
			{
				int other_id = ((MyStudent)other_object).get_id();
			    if(id == other_id) return 1;
			    else return 0;
			 }
			else return -1; // throw new RuntimeException("type mismatch"); if we want to use exceptions //
			// string has it's OWN compare-to ! //
		}
		public int get_id() {return id;}
		public static void my_insertion_sort(MyStudent [] array)
		{
			for(int i=1; i<array.length; ++i)
		    {
		    	MyStudent value = array[i];
		        int j = i;
		        while(j > 0 && (array[j - 1].get_id() > value.get_id()))
		        {
		            array[j] = array[j - 1];
		            j = j - 1;
		        }
		        array[j] = value;
		    }
		 }

		private int id;
		private String name;
	}
	public static class MyCar implements IComparable
	{

		MyCar(int model,String comapny){this.model = model; this.company = new String(company);}

		public int compareTo(Object other_object) {
			if(!(other_object instanceof MyCar))
			{
				throw new RuntimeException("type mismatch");
			}
			int other_model = ((MyCar)other_object).get_model();
			return model - other_model;
		}
		public int get_model() {return model;}
		public static void my_insertion_sort(MyCar [] array)
		{
			for(int i=1; i<array.length; ++i)
		    {
		    	MyCar value = array[i];
		        int j = i;
		        while(j > 0 && (array[j - 1].get_model() > value.get_model()))
		        {
		            array[j] = array[j - 1];
		            j = j - 1;
		        }
		        array[j] = value;
		    }
		 }

		private int model;
		private String company;
	}
	public static interface IComparable{public int compareTo(Object other_object);}
	public static void playing_with_point_set()
	{
		PointSet my_set = new PointSet(3);
		MyPoint first_point = new MyPoint(1,2);
		MyPoint second_point = new MyPoint(3,4);
		MyPoint thirdPoint = new MyPoint(1,2);
		my_set.add(first_point);
		my_set.add(second_point);
		System.out.println(my_set.contains(thirdPoint));
	}
	public static void playing_with_up_down_casting()
	{
		// Casting object reference: //
		MyPoint p_1 = new MyPoint(5,6);
		EmptyDemoCircle c_1 = new EmptyDemoCircle();
		Object object_reference = p_1; // up-casting a point as an object //
		System.out.println("down-casting is allowed: " + ((MyPoint)object_reference).get_x());
		object_reference = c_1;
		// down-casting run time error, object reference is not a point anymore: System.out.println("up-casting is denied: " + ((MyPoint)object_reference).get_x()); //

	    // First reflection tool: instance-of: //
		Object o = "String first";
		System.out.println(o instanceof String);
		System.out.println(o instanceof MyPoint);
		System.out.println((o instanceof Object) + "\n");
		o = null;
		System.out.println(o instanceof String);
		System.out.println(o instanceof Object);

		// Object versus MyPoint's equals method(same or similar) (BEFORE overriding equals):
		Object p1 = new MyPoint(1,2);
		Object p2 = new MyPoint(1,2);
		System.out.println("checking identity with Object's equals: " + p1.equals(p2));
		System.out.println("checking similarity with MyPoint's equals: " + ((MyPoint)p1).equals((MyPoint)p2));
		/* OUTPUT:
		 * Before overriding:
		 *
		 * checking identity with Object's equals: false
         * checking similarity with MyPoint's equals: true
		 *
		 * After overriding :
		 * checking identity with Object's equals: true
         * checking similarity with MyPoint's equals: true
		 */
	}
    public static void my_insertion_sort(int [] array)
    {
    	for(int i=1; i<array.length; ++i)
    	{
    		int value = array[i];
            int j = i;
            while(j > 0 && (array[j - 1] > value))
            {
            	array[j] = array[j - 1];
            	j = j - 1;
            }
            array[j] = value;
    	}
    }
	public static void general_sorting(IComparable [] array)
	{
		for(int i=1; i<array.length; ++i)
    	{
    		IComparable value = array[i];
            int j = i;
            while(j > 0 && (array[j - 1].compareTo(value) > 0))
            {
            	array[j] = array[j - 1];
            	j = j - 1;
            }
            array[j] = value;
    	}
	}
    public static void playing_with_sorting()
    {
    	MyStudent [] students = new MyStudent[4];
    	students[0] = new MyStudent(4, "Avi");
    	students[1] = new MyStudent(3, "Benny");
    	students[2] = new MyStudent(2, "Cadi");
    	students[3] = new MyStudent(1, "Danni");
    	System.out.println(students[0]);
    	System.out.println(students[3]);
    	students[0].my_insertion_sort(students);
    	System.out.println(students[0]); // the last student is now the first //
    }

	public static void main(String[]args)
	{
		playing_with_point_set();
		playing_with_up_down_casting();
		playing_with_sorting();
	}

}
