
defmodule Pig_latin do
  def is_vowel(c) do
    case Enum.member?([~c"a", ~c"e", ~c"i", ~c"o", ~c"u"], c) do 
      :ok -> true
      :error -> false
      _ -> false
    end
  end
  def pigify(w) do
    case is_vowel(String.first(w)) do 
      :ok -> w <> "yay"
      :error -> "Error"
      _ -> String.slice(w, 1..-1//1) <> String.first(w) <> "ay"
    end
  end
end

result1 = Pig_latin.pigify("Jeremy")
result2 = Pig_latin.pigify("Aaron")
IO.puts(result1)
IO.puts(result2)
