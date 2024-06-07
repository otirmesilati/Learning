import java.awt.Point;
import java.util.Random;

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
	
	
	

}
