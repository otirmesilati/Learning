import gleami/o
import gleam/string as text

pub fn main() 
{
    // string printing //

    io.println("Hello, Avi!")
    io.println(text.reverse("Hello, Benny!"))
    println("Unqualified fashion for declarations")

    // number printing //
    io.debug(1)
    debug(2) // unqualified //
    io.debug(1.0 + 1.5) // No conversions! 
    io.debug(0b011) // binary //
    io.debug(0o27) // octal //
    io.debug(0xF) // hexa //
    
}
