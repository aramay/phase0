def create_groups(list)

  if (list.length < 3)
    puts "Not enough people for a group"

  end

  min_possible_group = 3 # min group members
  #min_next_possible_group = 4 #next best possible group size




  p number_of_people = list.length # get total people

  p groups = number_of_people / min_possible_group #minimum group of 3

  p remainder = number_of_people % 3 #remaining people

  group_members = []

  #store group members
  list.each_slice(groups) do |x|
    group_members << x
  end


  # puts "group_members #{group_members}"
  # puts "group_members #{group_members[0]}"

  group_list = {}

   group_members.each_with_index do |item, index|
    group_list.store(index,item)
  end

  p group_list

  remainder = []


end

list = ["person-1","person-2","person-3","person-4","person-5"]

list2 = ["person-1","person-2","person-3","person-4","person-5","person-6","person-7"]

# create_groups(list)
create_groups(list2)

=begin

Release 6: Reflect
answer the following questions in:

1. What was the most interesting and most difficult part of this challenge?
  # Most difficult part is monitor many condition for some operation to take place. e.g. keeping track of minimun group members. Each scenario i.e. adding members, deleting members etc requires specific conditions to be checked.
2. Do you feel you are improving in your ability to write pseudocode and break the problem down?
  # I was, since i am behind schedule this week. I will try to complete this next week.
3. Was your approach for automating this task a good solution? What could have made it even better?
  # I was not able to complete this challenge.
4. What data structure did you decide to store the accountability groups in and why?
  # I used arrays and Hashes
5. What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
  # I learned about ".each_with_index" this is extract indexes with values. It became usefull for storing data in Hashes.
=end