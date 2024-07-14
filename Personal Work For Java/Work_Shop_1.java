import java.awt.Point;
import java.util.Random;

import javax.lang.model.type.NullType;

@SuppressWarnings ("unused")
public class Work_Shop_1 {
	
	private static class innerObject 
	{
		private int myField = 5;
		public void setField(int x) {myField = x;}
		public int returnFive() {return 5;}
    }
	
	public interface myInter
	{
        void myMethod();
	}
	
	public static void main(String[] args) 
	{
		final innerObject oe; 
		int a = 1;
		int b = 2;
		oe = new innerObject();
		System.out.println("Hi");
        oe.setField(4);
		System.out.println(oe.myField);
	}
	
	/* so here we'll explain the design pttaerns:
	 * 1. CREATIONAL:
	 * - Clonable: classes implementing the clone behavior 
	 * an interface which includes a clone method
	 * - Singleton: ??
	 * 2. BEHAVIOURAL:
	 * 
	 * 3. CONCURRENT:
	 */

	 
	 // package MorePatterns // 
	  
	 // Clone - the interface and an implementing class //
	 interface My_Cloneable extends Cloneable { Object clone() throws CloneNotSupportedException; }
	  
	  class Cloneable_Class implements My_Cloneable
	  {
		@Override
		public Object clone() throws CloneNotSupportedException
		{
			return super.clone();
		}
	  }
	  
	  class My_Singleton 
	  {

		public static My_Singleton getInstance() 
		{
			return wrappedInstance;
		}

		// here goes the printing function //

		public static boolean printSingleton(){ return true;}

		private My_Singleton(){}

		private static My_Singleton wrappedInstance;
	  }

}
