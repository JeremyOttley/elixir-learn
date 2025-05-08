defmodule MyModule do
  defp is_vowel(c) when c in ~w(a e i o u A E I O U), do: true # `in` is an erlang convention
  defp is_vowel(_), do: false # `do:` pattern matching format needs all cases met

  def count_vowels(word) do
    word
    |> String.graphemes()
    |> Enum.filter(&is_vowel/1)
    |> Enum.count()
  end
end

x = MyModule.count_vowels("Jeremy")
IO.puts("Your String has #{x} vowels")
