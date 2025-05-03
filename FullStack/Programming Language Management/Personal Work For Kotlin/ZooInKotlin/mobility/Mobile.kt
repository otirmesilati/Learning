/*  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&   Workshop ? : ?  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&
    &&&&&&&&&&&&&&&&&&&&&&&&&&&&&   LANGUAGE: Python        &&&&&&&&&&&&&&&&&&&&&&&&&&&&&
    &&&&&&&&&&&&&&&&&&&&&&&&&&&&&   Date: ?        &&&&&&&&&&&&&&&&&&&&&&&&&&&&&
    &&&&&&&&&&&&&&&&&&&&&&&&&&&&&   Author: Otir Mesilati   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&

-> Functions: ?

Function Specifications:

1. ?: ?
   IN:   ?
   OUT:  ?

->> Classes: ?

*/

package mobility

import Ilocatable

abstract class Mobile : Ilocatable
{
    //TODO: public Point getLocation()

    //TODO: boolean setLocation (Point locationToSet)

    public override fun setLocation(): Unit {}
    public fun setDistance(): Unit {}
    public override fun getLocation(): Unit {}
    public fun calcDistance(): Unit {}
    public fun move(): Unit {}
}