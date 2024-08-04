public class Work_Shop_8 {
    
    // let's have some fun with threads //

    // 1 technique of parallelism - creating runnable blocks
    public interface my_Runnable extends Runnable {
    
        public void run();
        public boolean hi(); // prints hi
        
    }
    
}
