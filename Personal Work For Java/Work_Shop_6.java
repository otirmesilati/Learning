public class Work_Shop_6 {
    
     // import FctorymethodTesting.*;

     public class ClassicAbstractFactory
     {
        private interface BaseProduct
        {
            public int getProductNumber();
            public static final String rootProductString = "BaseProduct";
            // Idea is - every product has a number 
            // And the string is going to be mutated along the control flow //
        }

        private static interface ProductTypeB extends BaseProduct
        {
            public String getTypeBModel();
            // More interfaces for more factories! 
        }
     }
}
