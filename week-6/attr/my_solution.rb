#Attr Methods

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData

end


class Greetings

end



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
    # # yes

Release 4




=end