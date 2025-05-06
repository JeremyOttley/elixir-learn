sentence = "Hello, my name is Jeremy"

defmodule MyModule do
  def count_words(sentence) do
    sentence
    |> String.split()
    |> Enum.count()
  end
end

MyModule.count_words(sentence)
