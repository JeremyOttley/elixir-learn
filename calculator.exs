defmodule Calculator do
  def calculate(a, b, operation) do
    case operation do
      "+" -> add(a, b)
      "-" -> subtract(a, b)
      "*" -> multiply(a, b)
      "/" -> divide(a, b)
      _ -> {:error, :invalid_operation}
    end
  end

  defp add(a, b), do: {:ok, a + b}
  defp subtract(a, b), do: {:ok, a - b}
  defp multiply(a, b), do: {:ok, a * b}
  defp divide(a, 0), do: {:error, :division_by_zero}
  defp divide(a, b), do: {:ok, a / b}
end
