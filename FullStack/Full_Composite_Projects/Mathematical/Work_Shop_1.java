package Full_Composite_Projects.Mathematical;


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

    static int convertToNonDecimal(int decimalNumber, int destinationRadix)
    {
        // Test 1 Bud: does the opposite - returns decimal
        String stringDecimal = Integer.toString(decimalNumber);
        int nonDecimalNumber = Integer.parseInt(stringDecimal, destinationRadix);
        // return nonDecimalNumber; - only greened out so no compilation reds

        // after fixing:
        stringDecimal = Integer.toString(decimalNumber);
        String Non_Decimal_String = java.lang.Integer.toString(decimalNumber, destinationRadix);
        return nonDecimalNumber;


    }

    public static void main(String[] args) {
        
        // Testing the convertDecimalToNonCeimal function:
        // 12 in decimal is 14 in octal //
        int this_is_twelve = 12;
        int and_this_needs_to_be_fourteen = convertToNonDecimal(this_is_twelve, 8);
        if (and_this_needs_to_be_fourteen == 14) System.out.println("Yay!");
        else System.out.println("😔"); 

        // Test 1 results: FAIL!!! reason: parseInt does not do what it's supposed to!
        // what it does? it takes a number from the specified radix and turns it into decimal
        
        // FIXING Test 1 Failure:
        // Possible fixes: 
        // 1. Go with Another function
        // 2. Chane the abstract delegation to take it the way it is
        
        // Checking if there is a built in function that does the decimal to non decimal part:
        // the function we looked for - toString()! does the to different radix conversion

        // Test 2 results: Success! //

    }
}
