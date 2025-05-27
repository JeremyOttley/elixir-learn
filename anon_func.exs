## Anonymous Functions

add_one = &(&1 + 1)
add_one.(1) # 2

# OR

add_one = fn x -> x + 1 end
add_one.(1) # 2
