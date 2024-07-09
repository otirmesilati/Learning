import gleam/io

pub type Id = Int

const ints: List(Int) = [4,5,6]
const floats = [7.0, 8.2, 9.7] 

pub fn main()
{
    let first_var: Id = 1
    let second_var: Int = 2

    // lists // 

    let my_list = [1,2,3,4,5]
    io.debug(my_list)
    let my_second_list = [0, ..my_list]

} 

// function access modifier in gleam is private //

fn multiply(plier: Int, plicand: Int) -> Int
{
    plier * plicand
} 

fn my_doubling(first_var: Int) -> Int
{
    // use multiply here //
}