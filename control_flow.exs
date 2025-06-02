# You use if with one condition and a possible else, that's it. 
# You use the cond statement when you have more than one condition and an if statement isn't enough, 
# by the end, the case statement is used when you want to pattern match some data.

# Let's explain by examples: suppose you want to eat apple if today is raining or rice if not, then you could use:

if weather == :raining do
  IO.puts "I'm eating apple"
else
  IO.puts "I'm eating rice"
end

# This is a limited world, so you want to expand your options and because of that you will eat different things on some conditions, so the cond statement is for that, like this:

cond do
  weather == :raining and not is_weekend ->
    IO.puts "I'm eating apple"
  weather == :raining and is_weekend ->
    IO.puts "I'm will eat 2 apples!"
  weather == :sunny ->
    IO.puts "I'm happy!"
  weather != :raining and is_sunday ->
    IO.puts "I'm eating rice"
  true ->
    IO.puts "I don't know what I'll eat"
end

# The last true should be there otherwise it'll raise an exception.

# Well so what about case? It is used to pattern match something. Let's suppose you receive the information about the weather and the day of week as a message in a tuple and you depend on that to take a decision, you could write your intentions as:

case { weather, weekday } do
  { :raining, :weekend } ->
    IO.puts "I'm will eat 2 apples!"

  { :raining, _ } ->
    IO.puts "I'm eating apple"

  { :sunny, _ } ->
    IO.puts "I'm happy!"

  { _, :sunday } ->
    IO.puts "I'm eating rice"

  { _, _ } ->
    IO.puts "I don't know what I'll eat"
end

# So the case brings to you the pattern-matching approach to the data, that you don't have with if or cond.
