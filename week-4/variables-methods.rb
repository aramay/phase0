
puts "What is your first name"

fname = gets.chomp
puts "What is your middle name"

mname = gets.chomp
puts "What is your last name"

lname = gets.chomp

puts "greeting #{fname}, #{fname}, #{fname}"

puts "Enter your favorite num"

x = gets.chomp.to_i #gets.chomp read as string, convert to int
y = x + 1
puts "bigger and better number is #{x}"

=begin
Release 4: More small exercises!

Expand your brain a bit by working on the following exercises:

Return a Formatted Address
https://github.com/kasper341/phase0/tree/master/week-4/address

Defining Math Methods
https://github.com/kasper341/phase0/tree/master/week-4/math

Release 6: Reflect

answer the following questions:

How do you define a local variable?
Variables defined within a method are local variables.

ans = 0
def add(num_1, num_2)
 #your code here
 ans = num_1 + num_2
 return ans
end

Here varaible 'ans' maintain two seperate copies, independent of each other. variable inside method 'add' is local and outside is global.

How do you define a method?

It begins with keyword 'def' followed by method name.
Ends with a keyword 'end' to denote that is closed.

def add(num_1, num_2)

end

What is the difference between a local variable and a method?

How do you run a ruby program from the command line?
  we use a command
  'ruby filename.rb'
How do you run an RSpec file from the command line?
  we use a command
  'rspec filename.rb'

What was confusing about this material? What made sense?
This challenge did not have any surprises. I was pretty comfortable with all the material.
=end

