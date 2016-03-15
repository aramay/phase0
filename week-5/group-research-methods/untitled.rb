# require Integer
def my_array_modification_method!(source, thing_to_modify)
  #source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
  puts "method called-destructive-array"

  source.each do |x|
    if x.is_a?(Integer)
      x += thing_to_modify

      puts x
    end
  end

end

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]

my_array_modification_method!(i_want_pets, 2)