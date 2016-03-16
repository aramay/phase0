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


