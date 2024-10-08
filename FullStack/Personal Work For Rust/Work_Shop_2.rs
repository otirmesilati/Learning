// https://www.tutorialspoint.com/rust/rust_data_types.htm
// Data Types

//   & & & & & & Comments & & & & & &   //

// Single line comment

/* 
Multi Line 
Comment
 */

//   & & & & & & Literals & & & & & &   // 
//   ^ ^ ^ ^ ^ Integers ^ ^ ^ ^ ^

123;
4_273;
42_73;
427_3;
-34;


//  ^ ^ ^ ^ Integers: Type Modifiers ^ ^ ^ ^

0xF5;
0o12;
0b110;


//   ^ ^ ^ ^  Integers: Unsigned  ^ ^ ^ ^ 

11u8;
12u16;
13u32;
14u64;
15u128;
16usize;

//   ^ ^ ^ ^ Integers: Signed ^ ^ ^ ^

// ?

// floating point
// bools
// chars

12;
45.6;
"Hi";
true;
(1u32, 2u32, 4.3f32, 5.4f32);

//   & & & & & & Operators & & & & & &  

3.4 + 5.6;
true && false;

//   & & & & & & String Formatting & & & & & &   // 
// - Note the printing is MACRO based, :o/b/x for diffrent radixes //

println!("first: {}", my_tuple.0);

//   & & & & & & Conditional Statements & & & & & &   // 

//   & & & & & & Loops & & & & & &   //

//
fn main()
{
    // literals:
    
    // tuples:
    
    let my_tuple = (1u32, 2u32, 3u32, 4.3f32, 5.4f32);     
    
    

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
    let fist_tuple = ("hi", "bye");
    
    // mutable variables //

    let mut fort_var: f64 = 67.23;
    fort_var = 25.47f64; 

    // operators and literals

    println!("{}", 1u32 + 2);
    println!("{}", 1i32 - 2);
    println!("{}", 1e4);
    println!("{}", 1e5 - 1e4);

} 