defmodule MyModule do
  def get_data() do
    data = %{name: "Jeremy", job: "Editor"}
    {:ok, data}
  end
end

case MyModule.get_data() do
  {:ok, data} -> IO.puts("Data: #{inspect data}")
  _ -> IO.puts "Error occurred"
end
