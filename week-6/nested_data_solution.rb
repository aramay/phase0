# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

# array = [
#   [1,2],
#     ["inner",
#       ["eagle", "par",
#         ["FORE", "hook"]
#       ]
#     ]
#   ]

# attempts: 8-10
# ============================================================
# p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

# hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# # attempts: 1
# # ============================================================
# p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

# nested_data = {array: ["array", {hash: "finished"}]}

# # attempts: 4
# # ============================================================
# p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

# number_array = [5, [10, 15], [20,25,30], 35]

# number_array.each do |num|
#    if num.kind_of?(Array)
#        num.each {|num| p num + 5}
#    else
#        p num + 5
#    end
# end


# Bonus:

startup_names = ["bit",
                  ["find", "fast",
                    ["optimize", "scope"]
                  ]
                ]


puts new_array = startup_names.flatten

new_array.each {|x| p x + "ly"}

# startup_names.each do |num|
#   if num.kind_of?(Array)
#        num.each {|num| p num + "ly"}

#        # num.each {|num| p num + "ly"}
#   elsif num.kind_of?(Array)

#     num.each {|num| p num + "ly"}
#   end
#     # p num #+ "ly"

# end


# Release 5: Reflect

=begin
answers the following questions:

1. What are some general rules you can apply to nested arrays?
  # start with outer most layer and then move towards working on inner arrays. Think of it as a grid like structure and everything can be access as a matrix.

2. What are some ways you can iterate over nested arrays?
  # We used ".each" method to iterate over nested arrays.
3. Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
  # We used "kind_of?" which returns an instance an an element. In this case we checked if element in a list are array, then perform different operation

=end
