def create_groups(list)

  p number_of_people = list.length
  p groups = number_of_people / 3 #minimum group of 3

  p remainder = number_of_people % 3 #remaining people

  group_list = []

  for x in 0...3
    group_list[x] = number_of_people / 3

  end

  p group_list

  remainder = []








end

list = ["person-1","person-2","person-3","person-4","person-5"]

list2 = ["person-1","person-2","person-3","person-4","person-5","person-6","person-7"]

# create_groups(list)
create_groups(list2)