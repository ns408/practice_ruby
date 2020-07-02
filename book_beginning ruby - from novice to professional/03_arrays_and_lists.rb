#!/usr/bin/env ruby

puts %Q|
Arrays - ordered collection of objects
Indexing starts from 0
|

x = [1, 2, 3, 4]
puts "Display an element from the list: " + x[3].to_s # an "element reference"
# Few ways to skin this cat - unsure why would one want to do such a horrific thing though
puts "Display an element 2nd time: #{x[3]}"
puts("Displaying an element 3rd time: #{x[3]}")
print "Display an element 4th time: ", x[3], "\n"

# Assign new value to one of the elements
x[2] = "sup " * 3
p x