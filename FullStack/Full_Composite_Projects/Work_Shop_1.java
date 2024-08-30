package FullStack.Full_Composite_Projects;

// Syntax: Java
// Environment: Eclipse
// Pseudo: Decimal_To_Non_Decimal 
// Abstraction-Delegation: a to d is abstracted by Integer.parseInt()
// dependencies: Integer library

import java.lang.Integer;
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