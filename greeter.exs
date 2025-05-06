defmodule Greeter do
  def greet(name) when is_binary(name) do
    {:ok, "Hello #{name}"}
  end
  
  def greet(""), do: {:error, "Name cannot be empty"}
  def greet(nil), do: {:error, "Name cannot be nil"}
end

x = Greeter.greet("Jeremy")

case x do
  {:ok, result} -> result
  {:error, error} -> error
  _ -> "WTF! Is that a digit bro?!"
end
