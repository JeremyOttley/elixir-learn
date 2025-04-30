defmodule User do
  def validate_age(age) when age < 0, do: {:error, "age cannot be negative"}
  def validate_age(age) when age > 120, do: {:error, "age is unrealistic"}
  def validate_age(age), do: {:ok, age}

  def create_user(name, age) do
    with {:ok, validated_age} <- validate_age(age),
         {:ok, formatted_name} <- format_name(name) do
      {:ok, %{name: formatted_name, age: validated_age}}
    end
  end

  defp format_name(name) when is_binary(name), do: {:ok, String.trim(name)}
  defp format_name(_), do: {:error, "name must be a string"}
end

# Usage
case User.create_user("John", 25) do
  {:ok, user} -> IO.inspect(user)
  {:error, reason} -> IO.puts("Failed to create user: #{reason}")
end
