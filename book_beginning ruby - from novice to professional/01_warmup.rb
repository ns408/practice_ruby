#!/usr/bin/env ruby

10.times do print "whatever! " end

puts "\n2+3 is equal to " + (2 + 3).to_s + "\n"

# Play with classes - again

class Person
    attr_accessor :name, :age, :gender
end

person_instance = Person.new
person_instance.name = "panda"
person_instance.age = 90

puts "person_instance.name: " + person_instance.name
puts "person_instance.age: " + person_instance.age.to_s

# Moar classes mate - inheritance flavour
class Pet
    attr_accessor :name, :age, :gender, :color
end

# Inherit from Pet class
class Cat < Pet
end

class Dog < Pet
    # Method
    def bark
        puts "Bow wow!"
    end

    # Passing data to method using parameter i
    def bark_var(i)
        i.times do
            puts "wow!"
        end
    end
end

class Snake < Pet
    attr_accessor :length
end

snake = Snake.new
snake.name = "Sammy"
snake.length = 500
dog = Dog.new
dog.name = "Lassie"

# %Q - Double quotted strings, allows interpolation
# | - heredoc
puts %Q|
snake name: #{snake.name}
dog name: #{dog.name}
|

# Call the method
dog.bark

# Pass argument of 2 to the method
dog.bark_var(2)

puts "dog.class: = #{dog.class}\n"


# everything in the language is an object
# 2 + 2 - are objects of class Fixnum
puts "2.class: #{2.class}"

# Kernel Methods
Kernel.puts %Q|
Kernel is a special class (a module). Methods avaialble in every class and scope.
Kernel.puts is an example of a Kernel method.
|

puts %Q|
Parenthesis around arguments for a method call is optional:

Both produce "hello":
puts "hello"
puts("hello")
|

# String class methods

puts %Q|
"string".class: #{"string".class}
"string".length: #{"string".length}
"string".upcase: #{"string".upcase}
"STRING".downcase: #{"STRING".downcase}
"STRING".chop: #{"STRING".chop}
"STRING".reverse: #{"STRING".reverse}
"STRING".swapcase: #{"STRING".swapcase}
"STRING".swapcase.swapcase: #{"STRING".swapcase.swapcase}
"String".sum: #{"String".sum}
"String".next: #{"String".next}
|

# Using Ruby in a Non Object Oriented Style
def me_happy
    puts "ain't I happy"
end

me_happy
puts "me_happy method was defined as a classless function. But it is still being defined on the Object class."

puts %Q|
Summary:
    Class - definition of a concept. Can inherit features from other classes.
    Object - single instance of a class.
    Argument/parameters: you pass arguments to methods and methods receive parameters.
|