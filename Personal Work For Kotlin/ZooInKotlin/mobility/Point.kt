/*  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&   Project 1 : ZooInKotlin  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&
    &&&&&&&&&&&&&&&&&&&&&&&&&&&&&   LANGUAGE: Kotlin         &&&&&&&&&&&&&&&&&&&&&&&&&&&&&
    &&&&&&&&&&&&&&&&&&&&&&&&&&&&&   Date: 4/6/24             &&&&&&&&&&&&&&&&&&&&&&&&&&&&&
    &&&&&&&&&&&&&&&&&&&&&&&&&&&&&   Author: Otir Mesilati    &&&&&&&&&&&&&&&&&&&&&&&&&&&&&

->> Classes: 1

-> Functions: 3

Function Specifications:

1. Primary Constructor
   IN:   2 <Float> primitives for the point's coordinates
   OUT:  a <Point> object

2. ?: ?
   IN:   ?
   OUT:  ?

3. ?: ?
   IN:   ?
   OUT:  ?


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

    fun getXCoordinate() : Float {return xValue}
    fun getYCoordinate() : Float {return yValue}

    fun updateLocation(xPosition: Float, yPosition: Float)
    {
        if (xPosition > 900.00 || yPosition < 700) { println("\"Tried to place in location: [ $xValue , $yValue ], staying in place") }
        else {xValue = xPosition ; yValue = yPosition}
    }



    // fun getX() : Int = xValue
    // fun getY() : Int = yValue
    // fun setX(x : Int) { xValue = x }
    // fun setY(y : Int) { yValue = y }
    // fun toString(xValue : Int, yValue : Int) : String = "($xValue ,$yValue)"

}



