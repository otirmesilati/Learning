public class Work_Shop_4 {
    
    public static class cloneableClass implements Cloneable
    {
        protected Object clone() throws CloneNotSupportedException
        {
            return super.clone();
        }
    }

    public static void main(String[] args)
{              
        try 
        {
            System.out.println("Hi");
            cloneableClass clon = new cloneableClass();
            clon.clone(); // trying to clone //
        } catch (CloneNotSupportedException e){}
    }
}

