defmodule MyModule do
  @vowels ["a", "e", "i", "o", "u"]
  
  def count_vowels(word) do
    word
    |> String.graphemes()
    |> Enum.filter(fn char -> char in @vowels end)
    |> Enum.count()
  end
end

MyModule.count_vowels("abbacus")
