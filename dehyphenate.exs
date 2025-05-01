defmodule ISBN do
  def clean_isbn(isbn) do
    String.replace(isbn, ~r/-/, "")
  end
end

isbn = "978-1-4780-5901-1"



ISBN.clean_isbn(isbn)
