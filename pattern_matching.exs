defmodule MyModule do
  def divide(_, b) when b == 0, do: {:error, "division by zero"}
  def divide(a, b), do: {:ok, a / b}
end
# Usage
case MyModule.divide(10, 2) do
  {:ok, result} -> IO.puts("Success: #{result}")
  {:error, reason} -> IO.puts("Error: #{reason}")
end


###

def greet(name) do
  case name do
    "" -> IO.puts("Hello!")
    nil -> IO.puts("Hello stranger!")
    name -> IO.puts("Hello #{name}")
  end
end
