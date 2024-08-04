public class Work_Shop_8 {
    
    // this section will be used for the basics of //
    // inheritence, implementation, IO, files etc... //
    public class my_Class {}
    public interface my_Interface {}
    // let's DFS into the nuances: //
    // playing with modifiers and narrowings //
    // playing with static //
    // playing with abstract methods //
    // playing with fields //

    // let's have some fun with threads //

    // 1st technique of parallelism - creating runnable blocks
    // wrap it with a thread or an executor
    public interface my_Runnable extends Runnable {
    
        public void run();
        public boolean hi(); // prints hi
        
    }

    // 2nd technique of parallelism - threading
    public class my_Thread extends Thread 
    {
        // run method here //
    } 

    // add a method here: //
    // run the my_runnable wrapped in a thread //
    // run the my_thread //

}
