#Attr Methods

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

# Pseudocode

# Input: Initialize NameData - class with a name
# Output: "Hello #{name}! How wonderful to see you today."
# Steps:
  #1. Initialize class (NameData) with a varaible name
  #2. Initialize class (Greetings) with instance of NameData
  #3. Create a method 'hello' in class greetings
  #4. call 'hello' method from Greetings class

class NameData

  attr_accessor :name

  def initialize(name)

    @name = name

  end

end


class Greetings

  def initialize

    @greet = NameData.new("John Doe")

  end

  def hello
    p "Hello #{@greet.name}! How wonderful to see you today."

  end

end


greet = Greetings.new
greet.hello

# Reflection


=begin
 Release_1
  1. What are these methods doing?
    # These methods are working as 'getters' and 'setters'.
    Setter Method 'what_is_age' age value retained by instance varaibles.
    Getter Method 'change_my_age' sets a new value for age instance varaible.

  2. How are they modifying or returning the value of instance variables?
    # 'initialize' - method assigns default values.
    # Class instance variable 'instance_of_profile' calls a method 'change_my_age' via dot operator '.' and sets its value to '28'.

Release 2

  1. What changed between the last release and this release?
    # This release used 'attr_*' method family object calles 'attr_reader'. This allowed to decrease repition by removing 'what_is_age' method and accessing age value outside class via accessing instance variable 'age' => instance_of_profile.age, insted of calling a method 'instance_of_profile.what_is_age'
  2. What was replaced?
    # Lines 23-26 are no longer required. Same functionality is achieved via 1 Line of code on Line 5.
  3. Is this code simpler than the last?
    # Yes.

Release 3

  1. What changed between the last release and this release?
    # This release 'attr_writer' property was used to update 'age' instance.
  2. What was replaced?
    # Method 'change_my_age' is no longer required. Same functionality is achieved via 1 Line of code on Line 6.
  3. Is this code simpler than the last?
    # yes


Release 6: Reflect
answers the following questions:

  1. What is a reader method?
    # Reader method allow you to read value of your variables.
  2. What is a writer method?
    # Reader method allow you to write value to your variables.
  3. What do the attr methods do for you?
    # attr_* method family provide the functionality of reading and writing your instance varaibles.

  4. Should you always use an accessor to cover your bases? Why or why not?
    # Not always, it depends on your design requirements e.g. you don't want to expose critical data that can be accessed and canged without authorization.

  5. What is confusing to you about these methods?
    # attr_* method family, at first i did not see how 'getters' and 'setters' do the same thing as attr_* - but release from 1-5 was good exercise. As i refactored code and updated 'getters' and 'setters' got more clear after that.

=end