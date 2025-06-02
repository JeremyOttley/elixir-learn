isbn = "978-1-4780-2737-9"

defmodule ISBN do
  defp prefix(), do: "A"
  defp suffix(), do: "E"
  def process_isbn(isbn) do
    len = String.length(isbn)
    if  len >= 13 do
      {:ok, prefix() <> String.slice(String.replace(isbn, ~r/-/, ""), 8..11) <> suffix()}
    else
      {:error, "ISBN13 too short!"}
    end
  end
end

case ISBN.process_isbn(isbn) do
  {:ok, result} -> result
  {:error, reason} -> reason
  true -> "Huh"
end
