/*  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&   Project 1 : ZooInKotlin  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&
    &&&&&&&&&&&&&&&&&&&&&&&&&&&&&   LANGUAGE: Kotlin         &&&&&&&&&&&&&&&&&&&&&&&&&&&&&
    &&&&&&&&&&&&&&&&&&&&&&&&&&&&&   Date: 4/6/24             &&&&&&&&&&&&&&&&&&&&&&&&&&&&&
    &&&&&&&&&&&&&&&&&&&&&&&&&&&&&   Author: Otir Mesilati    &&&&&&&&&&&&&&&&&&&&&&&&&&&&&

-> Functions: ?

Function Specifications:

1. ?: ?
   IN:   ?
   OUT:  ?

->> Classes: ?

*/

package mobility

// TODO: touch up on magic numbers, errors and friends

class Point (xToSet : Float, yToSet : Float)
{

    private var xValue : Float = 0.0F
    private var yValue : Float = 0.0F

    init {
        if (xValue > 900.00 || yValue > 700.00)
        {
            println("Tried to place in location: [ $xValue , $yValue ], putting in origin")
            xValue = 0.0F ; yValue = 0.0F
        }
        else {xValue = xToSet ; yValue = yToSet}
    }

    fun updateLocation(xPosition: Float, yPosition: Float)
    {
        // condition to check if the position is valid and nothing more
    }



    // fun getX() : Int = xValue
    // fun getY() : Int = yValue
    // fun setX(x : Int) { xValue = x }
    // fun setY(y : Int) { yValue = y }
    // fun toString(xValue : Int, yValue : Int) : String = "($xValue ,$yValue)"

}



