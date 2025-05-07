defmodule MyModule do
  def fizzer(number) when is_integer(number) do
      cond do
        rem(number, 15) == 0 ->
          {:ok, "FizzBuzz #{number}"}
        
        rem(number, 3) == 0 ->
          {:ok, "Fizz #{number}"}
        
        rem(number, 5) == 0 ->
          {:ok, "Buzz #{number}"}
        
        true ->
          {:ok, number}
      end
  end
end

case MyModule.fizzer(30) do
  {:ok, result} -> result
  _ -> "Error"
end
