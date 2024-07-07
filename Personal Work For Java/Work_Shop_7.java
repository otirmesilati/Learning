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


        // let's create the first component //
    }    
    
    private static abstract class FirstComponent implements Work_Shop_7.ClassicBuilder.Component { public String toString() { return "fisrt component";}}
    private static abstract class SecondComponent implements Work_Shop_7.ClassicBuilder.Component { public String toString() { return "second component";}}
    private static abstract class ThirdComponent implements Work_Shop_7.ClassicBuilder.Component { public String toString() { return "third component";}}

    private static class FirstComponentFirstConcrete extends FirstComponent
    {
        public String toString() {return (super.toString()).concat(firstImplementationAddon);}

        private String firstImplementationAddon = ", Model 1";
    }
}
