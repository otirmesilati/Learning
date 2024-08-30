package FullStack.Full_Composite_Projects;


// Syntax: Java
// convertDecimalToNonDecimal
// Environment: Eclipse
// Pseudo: Decimal_To_Non_Decimal 
// Abstraction-Delegation: a to d is abstracted by Integer.parseInt()
// dependencies:
// - Integer library, 
// - work-shop class
// - function has to be static to run in main
// - parseInteger needs conversion to string of the number 

/*
 Code-Design(never to be read again only if have to?):
 1. Copy the pseudo code, put it in the bottom so it can be glanced at
 1. It's Java - import the Integer class - full path
 2. still java - make the work shop class
 3. java - main is static, make a static main
 4. make the function signature:
 4.1 start with the name - it's in red and compiler's complaining!
 4.2 add the return type - still red 
 4.3 return 0 to make him happy and get rid of the reds
 5. glance at the pseudo code, and then at abstract-Delegation:
 5.1. a to d is abstracted! yay! celebrate internally
 5.2. Taking care of the small dependency - into stringDecimal put toString of the decimal 
 5.3 parseInt the decimalNumber and put it in nonDecimalNumber
 6. return the NonDecumalNumber and finish the program
 7. delete the pseudo code, READY FOR TESTING!
 */

import java.lang.Integer;

public class Work_Shop_1
{

    int convertDecimalToNonDecimal(int decimalNumber, int destinationRadix)
    {
        String stringDecimal = Integer.toString(decimalNumber);
        int nonDecimalNumber = Integer.parseInt(stringDecimal, destinationRadix);
        return nonDecimalNumber;
    }

    public static void main(String[] args) {
        
    }
}
