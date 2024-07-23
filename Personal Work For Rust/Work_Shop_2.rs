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

    println!("{number:>5}", number = 2); // right justify by 4 places (the last taken by the 2) //
    // left justifying is like printing regularly //
    println!("{number:0>5}", number = 2); // justify right with zeros //
    println!("{number:0<5}", number = 2); // justify left with zeros //
    println!("{number:0>width$}", number = 2, width = 5);
    
    // immutable variables //
    
    let number : f64 = 2.0;
    let width : usize = 5;
    println!("{number:>width$}"); // right justify with zeros and limit decimal places //

    let fir_var = true;
    let fir_var: bool = false; // type annotation
    let sec_var: f64 = 4.5; // type annotation
    let third_var = 5i32; // sufixed type annotation

    // mutable variables //





}