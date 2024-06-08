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
		 * Private C'tor (Encapsulation: thus IMMUTABLE)
		 * 
		 */
		private theSingleton() {}
		
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
			if(wrappedInstance == null) System.out.println("No singleton yet!");
			else System.out.println("The singleton was created :)");
		}

        private static final theSingleton wrappedInstance = new theSingleton();
	}
}

protected void finalize() throws Throwable {} // Nothing to do here 

}
