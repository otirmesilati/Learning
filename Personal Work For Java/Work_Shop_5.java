public class Work_Shop_5 
{
    public class ClassicFactoryMethod
    {
         public static interface Product 
         {
            
         }

         private static class ConcreteProductA implements Product
         {

         }

         private static class ConcreteProductB implements Product {}

         private static class ConcreteProductC implements Product {}

         private static class ConcreteProductD implements Product {}

         public static class ConcreteFactoryClassA {}
    }
}
