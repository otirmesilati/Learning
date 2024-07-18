import gleam/io
import gleam/int // this is relevant for random function // 
import gleam/string

// regular comments
/// type docs
//// module docs

pub type Id = Int
const ints: List(Int) = [4,5,6]
const floats = [7.0, 8.2, 9.7] 

pub fn main()
{
    let first_var: Id = 1
    let second_var: Int = 2
    let my_func = fn(x) {x + 1}
    let my_func2 = addition(2, _)

    // lists // 

    let my_list = [1,2,3,4,5]
    io.debug(3)
    io.debug(my_list)
    let my_second_list = [0, ..my_list]

    // higher order function use //
    let fof_first_var = 3: Int
    let fof_second_var = "Hi": string
    first_level_abstraction(zero_level_abstraction_1, fof_first_var)
    // do the same for the concating function //
    
    // Piping some lines here //
    "Hello, Rose!"
    |> string.drop_right(1)
    |> string.drop_left(7)

    // using the case expressions //
    
} 

// function access modifier in gleam is private //

fn addition(mand: Int, gend: Int) -> Int
{
    mand + gend
}

fn addition_three_numbers(first, second, third) -> Int
{
    first + second + third
}

fn multiply(plier: Int, plicand: Int) -> Int
{
    plier * plicand
} 

fn my_doubling(first_var: Int) -> Int
{
    multiply(first_var * 2)
}

pub fn do_once(inc_var: Int) -> Int
{
    inc_var + 1
}

pub fn do_twice(argu: Int, func: fn(Int) -> Int) -> Int
{
  func(func(argu))  
  // some high level functioning
} 

pub fn zero_level_abstraction_1(to_inc: Int) -> Int 
{
    to_inc + 1
}

pub fn zero_level_abstraction_2(to_conc: string) -> string
{
    to_conc <> "!"
}

pub fn first_level_abstraction(my_func: fn, argu: value) -> value  
{ 
    my_func(argu) // Abstracting - composing the input function //
}

// label using: //

fn calc(value: Int, add: addend: Int, multiply multiplier: Int)
{
    value * multiplier + addend
}