public class Work_Shop_6 {
    
     // import FctorymethodTesting.*;

     public class ClassicAbstractFactory
     {
        private interface BaseProduct
        {
            public int getProductNumber();
            public static final String rootProductString = "BaseProduct";
        }

        private static interface ProductTypeB extends BaseProduct
        {
            public String getTypeBModel(); 
        }

        private static interface ProductTypeC extends BaseProduct
        {
            public String getTypeCModel();
        }
     }
}
