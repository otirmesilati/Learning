import gleam/io

pub type Id = Int

pub fn main()
{
    let first_var: Id = 1
    let second_var: Int = 2

    // lists // 

    let my_list = [1,2,3,4,5]
    io.debug(my_list)
} 
