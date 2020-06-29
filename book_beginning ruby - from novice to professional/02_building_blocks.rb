#!/usr/bin/env ruby

puts %Q|
- Variables are placeholders or references to objects.
- Always initialise (assign a value) variables.
- must start with either a letter, or an underscore.
- must contain only letters, numbers or underscores.
- are case sensitive.

- Expression: a combination of data, operators and variables.
|

a = 1
b = 2
puts %Q|
# Operators

Shortcut:
a = 1
b = 2
a += b = #{a += b}
a += b = #{a *= b}

|

# Comparison Operators and Expressions
age = 90
puts "You are seasoned mate." if age > 50

puts "You are seasoned and got long to live." if age > 50 && age < 120

# between?() method
age = 50
puts "Whadup young blood" if age.between?(50,70)

# Test for equality
puts "Test for equality - yeah, sure.." if age == 50

puts %Q|
== - equality operator
= - assignemnt operator
x <=> y - Comparison, return 0 if x == y, 1 if x > y, -1 if x < y
|

puts "'True is true or false is false' if true == true && (1 > 2 || 2 == 2)" if true == true && (1 > 2 || 2 == 2)
puts

# Loop through numbers with Blocks and Iterators
# do end - multi-line code blocks
3.times do puts "sup! " end

1.times { puts "saywhat!" }

# Iterators - mechanism to create a loop
puts "\nIterators example:"
1.upto(2) { | var | print "#{var} " }; puts
2.downto(1) { | var | print "#{var} " }; puts
0.step(6,2) { | var | print "#{var} " }; puts

# Just as the above - execute the code block and pass along data that can be captured into variables:
0.step(6,2) do | var |
    print "#{var} "
end; puts

# Floating point numbers - objects of the Float class
puts "Floating point numbers:"
puts 10.0 / 3.0
puts 10.to_f / 10.to_f
puts 10.5.to_i

# Constants
puts %Q|
- Constants are represented with a capital letter.
- Ruby will give a warning while trying to change their value once defined.
Pi = 3.141592
Pi = 3.141
|
Pi = 3.141592
Pi = 3.141

# Text and Strings

# String literal - string embedded into code using quotes
puts "string".class

a = "string1"; b = "string2"
puts "whatever" if a + b == "string1string2"

mystring = <<HEREDOCUMENT

Here document example:
string 1
string 2
HEREDOCUMENT
puts mystring

# String Expressions
puts "Success for string!" if "str" + "ing" == "string"

# multiply strings
puts "wat!" * 2

# compare strings - compares the ascii value
puts "x" > "y"

# String class's ord method to get ascii value
puts "x".ord.to_s + " " + "y".ord.to_s

# String class's chr method
puts 120.chr

# Interpolation
x = 10
y = 20
puts "\nInterpolation example:\n#{x} + #{y} = #{x + y}"
# Another example
puts x.to_s + " + " + y.to_s + " = " + (x + y).to_s

puts "It's a #{"bad " * 2 }time."

# String Methods - Captured in 01_warmup.rb

# Regular expressions and string manipulation
# Regular expression - is a string that describes pattern for matching elements in other strings.

# Substitution
puts "\n# Substitution"
puts "using sub() to do single substitution: " + "foobar foobar".sub('bar', 'foo')
puts "using gsub() for multiple substitutions: " + "foobar foobar".gsub('bar', 'foo')
puts "using gsub() for multiple substitutions: " + "what was that".gsub('a', 'i')



puts %Q|
Summary:
|