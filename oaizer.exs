isbn = "978-1-4780-2737-9"

defmodule ISBN do
  
  def process_isbn(isbn) do
    "A" <> String.slice(String.replace(isbn, ~r/-/, ""), 8..11) <> "E"
  end
  
  
end

ISBN.process_isbn(isbn)
