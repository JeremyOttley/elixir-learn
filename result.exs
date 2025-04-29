input = ["Jeremy", "Mark", "Ottley"]

IO.puts(input)

# Handling errors safely
result = Enum.fetch(input, 0)
case result do
  {:ok, value} -> IO.inspect("Found #{inspect(value)}")
  :error      -> IO.puts("Not found")
end
