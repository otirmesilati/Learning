public class Work_Shop_5 
{
    public class ClassicFactoryMethod
    {
         public static interface Product 
         {
            public void productMethodOne();
		        public void productMethodTwo();
         }

         private static class ConcreteProductA implements Product
         {
            private ConcreteProductA() {asField = 1;}

            public void productMethodOne(){}
		        public void productMethodTwo(){}

            private int asField;
         }

         private static class ConcreteProductB implements Product 
         {
            public void productMethodOne(){}
		        public void productMethodTwo(){}
         }

         private static class ConcreteProductC implements Product 
         {
            public void productMethodOne(){}
		        public void productMethodTwo(){}
         }

         private static class ConcreteProductD implements Product 
         {
            public void productMethodOne(){}
		        public void productMethodTwo(){}
         }

         public static class ConcreteFactoryClassA {}

         private static class FactoryMethodClient {}
    }
}
