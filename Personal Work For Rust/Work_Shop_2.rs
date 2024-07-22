// Commenting
/* 
More
Comments
 */


fn main()
{
    // Note the printing is MACRO based, :o/b/x for diffrent radixes //
    println!("Hello World!")

    // incremental //
    print!("{0}, this is {1}. {1}, this is {0}", "Alice", "Bob")
    
    // no order significance //
    println!("{subject} {verb} {object}", object = "the lazy dog", subject = "the quick brown fox", verb = "jumps over")

    println!("decimal: {}", 1234);
    println!("hexa: {:x}", 1234);
    println("octal: {:o}", 1234);
    println!("binary: {:b}", 1234);
    // paragraphing - justifying and adding zeros //

    println!("{number:>5}", number = 2); // right justify by 5 places //
    // left justifying is like printing regularly //
    // justify right with zeros //
    // justify left with zeros //
}