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

		public static boolean printSingleton()
		{
			if(wrappedInstance == null) 
			{
				System.out.println("Singleton? maybe later :)");
			    // wrappedInstance = new My_Singleton();
                return true;
			} 
			
			else System.out.println("Created");

			return true;
		}

		private My_Singleton(){}

		private static My_Singleton wrappedInstance;
	  }

	  class My_Factory
	  {
		// 1. Product Interface //
		public  static interface Product 
		{
			public void productMethodOne();
		}
		
		// 2.1. - 2.?. Implementing behaviour classes //
		public static class ConcreteProductA implements Product
		{

			@Override
			public void productMethodOne() {} // empty implementation for example
			public String toString(){return "A";}
		}

		public static class ConcreteProductB implements Product
		{
			@Override
			public void productMethodOne() {} // empty implementation for example		
		    public String toString(){return "B";}
		}

		public static class ConcreteProductC implements Product
		{
			public void productMethodOne() {} // empty implementation for example
		    public String toString(){return "C";}
		}

		// 3. Factory class - creates instances for each //
		public static class my_factory
		{
			Product createdProduct;

			public Product factoryCreation(String productType)
			{
				if(productType == "A")
				{
					createdProduct = new ConcreteProductA();
					return createdProduct;
				}
				else if(productType == "B")
				{
					createdProduct = new ConcreteProductB();
                    return createdProduct;
				}
				else
				{
					createdProduct = new ConcreteProductC();
                    return createdProduct;
				}
			}
		}
	}

	  class My_builder
	  {

		// 1. Product Interface //
		private interface product{} 
		// 2. Component Interface //
		private interface component{}

		// here will go the components //
		// product maker class //
		// builder class // 
		
	  }

}
