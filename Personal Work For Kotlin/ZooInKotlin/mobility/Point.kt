package mobility

// TODO: touch up on magic numbers, errors and friends

class Point (xToSet : Int, yToSet : Int)
{

    private var xValue : Int = 0
    private var yValue : Int = 0

    init {
        if (xValue > 800 || yValue > 600)
        {
            println("Tried to place in location: [ $xValue , $yValue ]")
            xValue = 0 ; yValue = 0
        }
        else {xValue = xToSet ; yValue = yToSet}
    }

    fun getX() : Int = xValue
    fun getY() : Int = yValue
    fun setX(x : Int) { xValue = x }
    fun setY(y : Int) { yValue = y }

// TODO: selectors for location

}



