text = "Hello123World456"
result = Regex.replace(text, ~r/\d+/, "X")
# Returns: "HelloXWorldX"

# With capture groups
text = "Hello123World456"
result = Regex.replace(text, ~r/(\w+)(\d+)/, "\\1-X")
# Returns: "Hello-XWorld-X"

text = "Hello123World456"
result = Regex.replace(text, ~r/\d+/, "X", global: true)
# Returns: "HelloXWorldX"

# With multiple options
result = Regex.replace(text, ~r/\d+/, "X", 
  global: true,
  trim: true
)
# Returns: "HelloXWorldX"

text = "Hello123World456"
result = Regex.replace(text, ~r/\d+/, fn match ->
  String.upcase(match)
end)
# Returns: "Hello123World456" (unchanged)

# With capture groups
result = Regex.replace(text, ~r/(\w+)(\d+)/, fn _, g1, g2 ->
  "#{g1}-#{g2}"
end)
# Returns: "Hello-123World-456"
