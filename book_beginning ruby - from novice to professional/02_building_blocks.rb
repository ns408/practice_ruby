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
puts "replace first two chars of a string: " + "what was that".sub(/^../, 'wat')
puts "replace first two chars of a string: " + "what was that".sub(/..$/, 'wat')
puts %Q|
^ anchor for the beginning of line.
.. - represent any character
$ anchor for the end of line.
|

puts "\A \Z can be used for absolute start or end of a string."
puts "replace first two chars of a string: " + "what was that\nwhat what".sub(/\A../, 'wat')
puts "replace first two chars of a string: " + "what was that\nwhat what".sub(/..\Z/, 'wat')

puts %Q|
Iteration with a Regular Expression
Using scan as the iterator method.

Below each letter is fed to the block, assigned to letter and printed.
|

"abc".scan(/./) { |letter| puts letter}
"xyz".scan(/./) do |letter|
    puts letter
end
puts "Scan test - match alphanumeric and/or underscore characters in group of 4 using \\w"
"This is a scan test".scan(/\w\w\w\w/) { |var| puts var}

puts %q|
# Special chars and symbols for regex
^   anchor for the beginning of a line
$   anchor for the end of a line
\A  anchor for the start of a string
\Z  anchor for the end of a string
.   any character
\w  any letter, digit, or underscore
\W  anything that \w doesn't match
\d  any digit
\D  anything that \d doesn't match (non-digits)
\s  whitespace (space, tabs, newlines etc)
\S  non-whitespace (any visible character)
|

puts
"Me shoe cost me $99 and me sock $20".scan(/\d+/) { |var| puts var}

puts %Q|
# Regular expression character and sub-expression modifiers
*   match *zero* or more occurances of the preceding char, and match as many as possible.
+   match *one* or more occurances of the preceding char, and match as many as possible.

*?  match "zero" or more occurances of the preceding char, and match as few as possible.
+?  match "one" or more occurances of the preceding char, and match as few as possible.

?   match either one or none of the preceding character.

{x}     match x occurances of the preceeding character.
{x, y}  match at least x occurances and at most y occurances.
|

puts """\nExample of *character classes*
/[aeiou]/   - match any of a,e,i,o,u
/[a-m]/     - match all lowercase chars between a and m
"""

"This is a test".scan(/[aeiou]/) { |x| print x + "\t" }
puts
"This is a test".scan(/[a-m]/) { |x| print x + "\t" }

puts """\n
### Matching - a string against a pattern of choice
=~  matching operator.
"""

# If the string has a match with the regex following the operator
# then the expression returns the position of the first match.
puts "String has vowels." if "This is a test" =~ /[aeiou]/
puts "String contains no digits." unless "This is a test" =~ /[0-9]/

puts "\nUsing method match() provided by String class."
puts "String has vowels - using .match()" if "This is a test".match(/[aeiou]/)

x = "This is a test".match(/(\w+) (\w+)/)
p x

puts """
Above, match returns a MatchData object that can be accessed like an array.
x[0]    contains the data matched by the entire regular expression
        each successive element contains the value which was matched by each group of the regex.
        (\w+) matched This and then is
"""


puts %Q|
Summary: - someday, I may tackle this. Not today though.
|