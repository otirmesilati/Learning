import java.lang.Cloneable;

public class Work_Shop_4 {
    
    public static class cloneableClass implements Cloneable
    {
        protected Object clone() throws CloneNotSupportedException
        {
            return super.clone();
        }
    }
}
