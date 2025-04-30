def divide(a, b) when b == 0, do: {:error, "division by zero"}
def divide(a, b), do: {:ok, a / b}

# Usage
case divide(10, 2) do
  {:ok, result} -> IO.puts("Success: #{result}")
  {:error, reason} -> IO.puts("Error: #{reason}")
end
