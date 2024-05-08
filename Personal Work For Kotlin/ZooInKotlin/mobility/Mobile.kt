package mobility

import Ilocatable

abstract class Mobile : Ilocatable
{
    public override fun setLocation(): Unit {}
    public fun setDistance(): Unit {}
    public override fun getLocation(): Unit {}
    public fun calcDistance(): Unit {}
    public fun move(): Unit {}
}