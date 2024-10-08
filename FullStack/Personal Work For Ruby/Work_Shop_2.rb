"Hello World"
puts "Hello World"

# evaluations 

3 + 2
3 ** 2
Math.sqrt(9)
x = 3 ** 2
y = 4 ** 2
Math.sqrt(x + y)

def hi
puts "hello"
end

hi

def hi(name)
  puts "Hello, #{name}!"
end

hi("John")

class Greeter
  def initialize(name)
    @name = name
  end

  def say_hi
    puts "Hello, #{@name}!"
   end

  def say_bye
    puts "Goodbye, #{@name}!"
  end
end

greeter = Greeter.new("Alice")
greeter.say_hi
greeter.say_bye

Greeter.instance_methods()
Greeter.instance_methods(false)

greeter.respond_to?("nigh") # False - nothing close to it
greeter.respond_to?("name") # False - attributes not ref like this
greeter.respond_to?("say_hi") # True
greeter.respond_to?("say_bye") # True

greeter = Greeter.new("Andy")
class Greeter # now we will access name 
  attr_accessor :name 
end

greeter.respond_to?("name") # True
greeter.respond_to?("name=") # True
greeter.name = "Betty"
greeter.name

class MegaGreeter
  attr_accessor :names

  def initialize(names = "World")
    @names = names
  end

  def say_hi
    # what here ?
  end

  # https://www.ruby-lang.org/en/documentation/quickstart/3/
  # Mega-greeter class : say_hi function 
  # later - we'll find a more comprehensive tutorial and standardize the tutorial work-shop