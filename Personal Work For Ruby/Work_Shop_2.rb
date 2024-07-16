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

