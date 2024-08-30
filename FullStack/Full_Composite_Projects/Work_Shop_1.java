package FullStack.Full_Composite_Projects;


// Syntax: Java
// convertDecimalToNonDecimal
// Environment: Eclipse
// Pseudo: Decimal_To_Non_Decimal 
// Abstraction-Delegation: a to d is abstracted by Integer.parseInt()
// dependencies: Integer library, work-shop class, function has to be static to run in main

/*
 Code-Design:
 1. It's Java - import the Integer class - full path
 2. still java - make the work shop class
 3. java - main is static, make a static main
 4. make the function signature:
 4.1 start with the name - it's in red and compiler's complaining!
 4.2 add the return type - still red 
 4.3 return 0 to make him happy and get rid of the reds
 5. 
 */

import java.lang.Integer;

public class Work_Shop_1
{

    int convertDecimalToNonDecimal(int decimal_Number, int destination_Radix)
    {
        // what now ? //
        return 0;
    }

    public static void main(String[] args) {
        
    }
}

// implement a public static class here //

/*
 
a. Position <- 0
b. Non_Decimal_Number <- 0
c. Copy_Of_Decimal <- Decimal_Number
d. WHILE(are_digits_left(Decimal_Number) NOT FALSE)
d.a. Non_Decimal_Number <- Add_Two_Integers(Non_Decimal_Number ,Multiply_Two_Integers(Copy_Of_Decimal % 10, Power_Number(Destination_Radix, Position))
d.b Copy_Of_Decimal / 10
d.c Position <- Position + 1
e. RETURN Non_Decimal_Number


 */