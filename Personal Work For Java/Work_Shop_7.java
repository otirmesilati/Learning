public class Work_Shop_7 
{
    public class ClassicBuilder
    {
        private interface Product
        {

        }

        private interface Component
        {
            public String toString();
        
        }

        private static abstract class FirstComponent implements Work_Shop_7.ClassicBuilder.Component { public String toString() { return "fisrt component";}}
        private static abstract class SecondComponent implements Work_Shop_7.ClassicBuilder.Component { public String toString() { return "second component";}}
        private static abstract class ThirdComponent implements Work_Shop_7.ClassicBuilder.Component { public String toString() { return "third component";}}

        private static class FirstComponentFirstConcrete extends FirstComponent
        {
            // get all the following methods here //
        }
                
        public String toString() {return (super.toString()).concat(firstImplementationAddon);}

        public void ComponentsFirstMethod() {System.out.println("First Component's, model 1, first operation.");}
        public void ComponentsSecondMethod() {System.out.println("Second Component's, model 1, second operation.");}
        public void ComponentsThirdMethod() {System.out.println("Third Component's, model 1, third operation.");}

        private String firstImplementationAddon = ", Model 1";
    }
}
