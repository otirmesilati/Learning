import gleami/o
import gleam/string as text

pub fn main() 
{
    // string printing //

    io.println("Hello, Avi!")
    io.println(text.reverse("Hello, Benny!"))
    io.prinln("conc" <> "at")
    println("Unqualified fashion for declarations")

    // number printing //
    io.debug(1)
    debug(2) // unqualified //
    io.debug(1.0 + 1.5) // No conversions! 
    io.debug(0b011) // binary //
    io.debug(0o27) // octal //
    io.debug(0xF) // hexa //
    io.debug(7.0e-5) //scientific notation //

    // Assignments //
    let first_var = 5
    let second_var = "hi"
    io.println(second_var)    
}
