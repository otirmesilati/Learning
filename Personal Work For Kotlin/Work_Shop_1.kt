/*
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   Workshop ? : ?          &&&&&&&&&&&&&&&&&&&&&&&&&&&&&
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   LANGUAGE: Kotlin        &&&&&&&&&&&&&&&&&&&&&&&&&&&&&
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   Date: ?                 &&&&&&&&&&&&&&&&&&&&&&&&&&&&&
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&   Author: Otir Mesilati   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&

-> Functions: ?

Function Specifications:

1. addTwoNumbers: summation of 2 numbers function
   IN:   2 integers that will be summed
   OUT:  int summation

2. subtractTwoNumbers: subtraction of 2 numbers function
   IN:   2 integers that will be subtracted
   OUT:  int difference

3. multiplyTwoNumbers: multiplication of 2 numbers function
   IN:   2 integers that will be multiplied
   OUT:  int product

4. divideTwoNumbers: division of 2 numbers function
   IN:   2 integers that will be divided
   OUT:  int product

5. maximumOfTwoNumbers: maximum of 2 numbers finding function
   IN:   2 integers for checking maximum
   OUT:  int maximum

6. minimumOfTwoNumbers: minimum of 2 numbers finding function
   IN:   2 integers for checking minimum
   OUT:  int minimum

->> Classes: ?

*/

// Constraints & Dependencies: Non.

fun addTwoNumbers(summand: Int, addend: Int) = summand + addend

fun subtractTwoNumbers(minuend: Int, subtrahend: Int) = minuend - subtrahend

fun multiplyTwoNumbers(multiplier: Int, multiplicand: Int) = multiplier * multiplicand

fun divideTwoNumbers(dividend: Int, divisor: Int) = dividend / divisor

fun maximumOfTwoNumbers(firstNumber: Int, secondNumber: Int) = if(firstNumber > secondNumber) firstNumber else secondNumber

fun minimumOfTwoNumbers(firstNumber: Int, secondNumber: Int) = if(firstNumber > secondNumber) secondNumber else firstNumber
