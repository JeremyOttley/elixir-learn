
defmodule Math do
  def fizz(n) when is_integer(n) do
    case n do
      n when rem(n, 3) == 0 -> "Fizz"
      n when rem(n, 5) == 0 -> "Buzz"
      _ -> "FizzBuzz"
    end
  end
end

x = Math.fizz(12)

IO.puts(x)
