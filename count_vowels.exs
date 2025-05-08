defmodule MyModule do
  @vowels ["a", "e", "i", "o", "u"]
  #defp is_vowel?(c) when c in ["a", "A", "E", "e", "i", "I", "O", "o", "U", "u"], do: true
  def count_vowels(word) do
    word
    |> String.graphemes()
    |> Enum.filter(fn char -> char in @vowels end)
    #|> Enum.filter(fn char -> is_vowel?(char) end)
    |> Enum.count()
  end
end

MyModule.count_vowels("abbacus")
