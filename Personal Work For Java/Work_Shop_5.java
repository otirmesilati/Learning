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
            public void asMethod(){}
            public String toString(){return "ConcreteProductA";}
            private int asField;
         }

         private static class ConcreteProductB implements Product 
         {
            public void productMethodOne(){}
		      public void productMethodTwo(){}
            public void bsMethod() {}
            public String toString() {return "ConcreteProductB";}
            private int bsField;
         }

         private static class ConcreteProductC implements Product 
         {
            public void productMethodOne(){}
		      public void productMethodTwo(){}
            public void csMethod() {}
            public String toString() {return "ConcreteProductC";}
            private int csField;
         }

         private static class ConcreteProductD implements Product 
         {
            public void productMethodOne(){}
		      public void productMethodTwo(){}
            public void dsMethod(){}
            public String toString() {return "ConcreteProductD";}
            
            private int dsField;
         }

         public static class ConcreteFactoryClassA 
         {
            Product createdProduct;

            public Product getInstance(String productType)
            {
               if(productType == "ConcreteProductA")
               {
                  createdProduct = new ConcreteProductA();
                  return createdProduct;
               }
               
               else if(productType == "ConcreteProductB")
               {
                  createdProduct = new ConcreteProductB();
                  return createdProduct;
               }
               
               else if(productType == "ConcreteProductC")
               {
                  createdProduct = new ConcreteProductC();
                  return createdProduct;
               }

               else
               {
                  createdProduct = new ConcreteProductD();
                  return createdProduct;
               }
            }
         }
    }


private static class FactoryMethodClient
 {

   public static void main(String[] args)
   {

   }

 }
}
