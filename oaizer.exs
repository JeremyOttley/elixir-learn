isbn = "978-1-4780-2737-9"

defmodule ISBN do
  defp prefix(), do: "A"
  defp suffix(), do: "E"
  def process_isbn(isbn) do
    prefix() <> String.slice(String.replace(isbn, ~r/-/, ""), 8..11) <> suffix()
  end
  
  
end

ISBN.process_isbn(isbn)
