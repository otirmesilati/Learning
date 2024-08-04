public class Work_Shop_8 {
    
    // let's have some fun with threads //

    // 1st technique of parallelism - creating runnable blocks
    // wrap it with a thread
    public interface my_Runnable extends Runnable {
    
        public void run();
        public boolean hi(); // prints hi
        
    }

    // 2nd technique of parallelism - threading
    public class my_Thread extends Thread 
    {
        // ???
    } 

}
