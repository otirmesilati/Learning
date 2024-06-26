public class Work_Shop_3 
{
    /**
 * A class for testing the DP of singleton
 * 
 * @author otirm_2hwnj4i
 *
 */

 public class UnClassicSingleton {

	/**
	 * Standard empty implementation of singleton class 
	 * 
	 * @author otirm_2hwnj4i
	 *
	 */
	private static class theSingleton
	{
		
		/**
		 * Get instance method for the singleton instance 
		 * 
		 * @return the reference of the instance
		 * 
		 */
		public static theSingleton getInstance() 
		{
			return wrappedInstance;	
		} 
		
		public static void printSingleton() 
		{
			if(wrappedInstance == null) 
			{
				System.out.println("No singleton yet!");
			    wrappedInstance = new theSingleton();
			}
			else System.out.println("The singleton was created :)");
		}
		
		/**
		 * Private C'tor (Encapsulation: thus IMMUTABLE)
		 * 
		 */
		private theSingleton() {}
		
		private static theSingleton wrappedInstance;
	}

protected void finalize() throws Throwable {} // Nothing to do here 

public static void main(String[] args) 
{
   // theSingleton.printSingleton(); <-- Caused problems in VSC
   Work_Shop_3.UnClassicSingleton.theSingleton.printSingleton();
   // Let's test the static singleton print //
   Work_Shop_3.UnClassicSingleton.theSingleton.getInstance();
   Work_Shop_3.UnClassicSingleton.theSingleton.printSingleton();

}

 }
}
