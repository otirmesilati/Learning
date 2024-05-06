package mobility

abstract class Mobile : Ilocatable
{
    public fun setLocation(): Unit {}
    public fun setDistance(): Unit {}
    public fun getLocation(): Unit {}
    public fun calcDistance(): Unit {}
    public fun move(): Unit {}
}