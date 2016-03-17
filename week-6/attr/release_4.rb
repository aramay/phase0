# Release 3:

class Profile
# here is the change, we combined the attr_writer and attr_reader into one declaration: attr_accessor
  attr_accessor :age

  attr_accessor :name

  attr_accessor :occupation

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info
    puts
    puts "age: #{@age}"
    puts
    puts "name: #{@name}"
    puts
    puts "occupation: #{@occupation}"
    puts
  end

  # This code is no longer needed.
  # def what_is_age
  #   @age
  # end

  # This code is no longer needed
  # def change_my_age=(new_age)
  #   @age = new_age
  # end

  # def what_is_name
  #   @name
  # end

  # def change_my_name=(new_name)
  #   # def change_my_name=(new_name) # set name value via attr_accessor
  # #   @name = new_name
  # # end

  # def what_is_occupation
  #   @occupation
  # end

  # def change_my_occupation=(new_occupation)
  #   @occupation = new_occupation # set occupation value via attr_accessor
  # end


end

instance_of_profile = Profile.new
puts "--- printing age -----"
sleep 0.8
p instance_of_profile.age

puts "--- printing name ----"
sleep 0.8
# p instance_of_profile.what_is_name
p instance_of_profile.name # attr_accessor set for this value

puts "--- printing occupation ----"
sleep 0.8
# p instance_of_profile.what_is_occupation
p instance_of_profile.occupation # access occupation value via attr_accessor

puts "--- changing profile information ----"
10.times do
  print "."
  sleep 0.1
end

instance_of_profile.age = 28
# instance_of_profile.change_my_name = "Taylor"
instance_of_profile.name = "Taylor" # set name value via attr_accessor
# instance_of_profile.change_my_occupation = "Rare Coins Trader"
instance_of_profile.occupation = "Rare Coins Trader" # set occupation value via attr_accessor


puts
puts "---- printing all profile info -----"
sleep 0.8
instance_of_profile.print_info