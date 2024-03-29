// &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   1st Lesson: Classes   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

/* Overall classes: 2
 1. MainTest
 2. AccessTypes

 Overall functions: 6
 1. playing_with_conversions_equals_and_same
 2. playing_with_object_allocations
 3. immutable_wrappers
 4. set_function_should_always_return_boolean
 5. finalize
 6. main

 */

// ----------------------------------------- Simple Applicative examples ----------------------------------------

// ----------------------------------------------- Long examples ------------------------------------------------
package lectures;


import java.awt.Point;


@SuppressWarnings("unused")
public class Lecture1 {

  public static class Ques_1
	{

	}

    public static class AccessTypes
    {
		// notice the order! protected considered more broad than no modifier //
		public void public_void() {}
		protected void protected_void() {}
		void no_modifier_void() {}
		private void private_void() {}
	}
	public static class MainTest{public static void main(String [] args) {}} // each class will have it's own main to run //

    public static void playing_with_conversions_equals_and_same()
	{
		// Type-Casting: widening and narrowing //
		System.out.println(5.0/2); // different cast + divide operation => widening
		System.out.println(5/2); // divide operation along (not enough to widen) => narrowing

		// highest priority from operators //
		System.out.println((double)5/2);

		// A bit more //
		int int_variable_1 = 100;
		float float_variable_1 = int_variable_1;
		System.out.println(float_variable_1);

		float float_variable_2 = 100.25f; // not forgetting the f for float literals! //
		int int_variable_2 = (int)float_variable_2;
		System.out.println(int_variable_2);

		// Equals versus same: let's create two identical different points //
		Point p_3 = new Point(1,3);
		Point p_4 = new Point(1,3);

		System.out.println(p_3.equals(p_4)); // is equals?
		System.out.println(p_3 == p_4);      // is same?
	}
	public static void playing_with_object_allocations()
	{
		// allocating aggregations through references to newly made objects //
		Point my_point_1 = new Point();
		Point [] point_array = new Point[2];
		point_array[0] = new Point();
		point_array[1] = new Point();
		Lecture1 l = new Lecture1();

		// calling self made finalize/destructor manually and the "hungry" garbage collector! //
		l.finalize();
		System.gc(); // save some for later Mr... //
	}
    public static void immutable_wrappers()
	{
		Integer Int_var = 8;
		System.out.println("This seems mutable, but it actually creates another object and thus immutable! : " + ++Int_var);
	}
	static boolean set_function_should_always_return_boolean() {return true;}
    public void finalize() {}


	public static void main (String[] args)
	{
		playing_with_conversions_equals_and_same();
		playing_with_object_allocations();
		immutable_wrappers();
		System.out.println("We either get " + set_function_should_always_return_boolean() + " or false from the setters!");
	}

}
