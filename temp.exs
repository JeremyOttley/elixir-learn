defmodule Fahrenheit do
  def temperature(), do: 32.0
end

defmodule Celsius do
  def temperature_in_celsius(), do: 0.0
  def from_fahrenheit(f), do: (f - 32.0) / 1.8
  def from_kelvin(k), do: k - 273.15
end

boiling_point = Celsius.from_fahrenheit(212.0)
freezing_point = Celsius.from_kelvin(273.15)

IO.puts "The boiling point of water is #{boiling_point} degrees"
IO.puts "The freezing point of water is #{freezing_point} degrees"
