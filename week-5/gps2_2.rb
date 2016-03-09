# Method to create a list
# input: string of items separated by spaces, Name of the list being created (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # Break up the string into individual items and then copy them as the keywords of our list.
  # Name our list
  # print the list to the console [can you use one of your other methods here?]

# output: [hash]

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # set the item to a hash keyword
  # set the quantity equal to the key value
# output: return a message that the item was successfully added.

# Method to remove an item from the list
# input: Item name
# steps: delete the item with the keyword entered
# output: return a confirmation that the operation has been performed.

# Method to update the quantity of an item
# input: the key word and the new desired quatity
# steps: change the key value of the entered keyword to the entered value.
# output: Confirm that the value was added successfully.

# Method to print a list and make it look pretty
# input: the name of the list to print
# steps: Print out each item of the list in a nice format.
# output: The contents of our list, formatted for legibility.

#Release 5: Reflect
=begin
Answer the following questions in your reflection:

What did you learn about pseudocode from working on this challenge?
  pseudocode helps in discussing about a problem. We were able to iron out the detials and decide what should go into this program and what should not.
What are the tradeoffs of using Arrays and Hashes for this challenge?
  Hash data structure provides and better mechanism for this type of problem, where you have to maintain key/value pair information. In arrays we would have to use two dimension arrays to store key and value. It can easily get complicated with two dimensional arrays.

What does a method return?
  a method can return object.
What kind of things can you pass into methods as arguments?
  We can pass any type of object.
How can you pass information between methods?
  We can return a value from a method to a callee.
  then we can pass that value onto a new method

What concepts were solidified in this challenge, and what concepts are still confusing?
  Hash data structure was bit confusing. I had trouble creating a hash from an array. create_list - method



=end


def create_list(list_items)

  array_of_list_items = list_items.split

  grocery_list = {}

  array_of_list_items.each do |x|
    grocery_list[x] = 0
  end

  p grocery_list

end

def add_item(list_items, key, value)

  list_items[key] = value


  puts "add #{list_items}"

end

def update_item(list_items, key, value)

  list_items[key] = value

  p "update #{list_items}"

end

def delete_item(list_items, item_to_delete)

  list_items.delete(item_to_delete) {|el| "#{el} item not found"}
end

def format_item(list_items)

  list_items.each do |x, y|
    puts "You have #{y} #{x}"
  end

end


#create_list("apple oranges")
list = ("Lemonade Tomatoes Onions")
quantity =  [2, 3, 1, 4]

#creat grocery list
new_grocery_list = create_list(list)

#add new items to list
#(new_grocery_list, "IceCream", 1)
add_item(new_grocery_list, "Ice \ Cream", 4)
add_item(new_grocery_list, "Lemonade", 2)
add_item(new_grocery_list, "Tomatoes", 3)
add_item(new_grocery_list, "Onions", 1)
#update existing values
update_item(new_grocery_list, "Ice \ Cream", 1)

delete_item(new_grocery_list, "Lemonade")

format_item(new_grocery_list)