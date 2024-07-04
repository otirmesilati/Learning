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

        private static interface ProductTypeD extends BaseProduct
        {
            public String getTypeDModel();
        }

        private static class FirstProductTypeB implements ProductTypeB
        {
            public FirstProductTypeB() {bNumOne = 1;}
            public int getProductNumber() {return 2;}
            public String getTypeBModel(){return "Model 1";}
            private int bNumOne;
        }

        private static class FirstProductTypeC implements ProductTypeC
        {
            public FirstProductTypeC(){cNumOne = 2;}
            public int getProductNumber() {return 3;}
            public String getTypeCModel(){return "Model 1";}
            int cNumOne;
        }
        
        private static class SecondProductTypeC
        {
            public SecondProductTypeC() {cNumTwo = 3;}
            public int getProductNumber() {return 3;}
            public String getTypeBModel() {return "Model 2";}
            int cNumTwo;
        }

        private static class FirstProductTypeD
        {
            public int getProductNumber() {return 3;}
            public String getTypeBModel() {return "Model 1";}
            int dNumOne;
        }

        
     }
}
