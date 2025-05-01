text = "Hello123World456"
result = String.replace(text, ~r/\d+/, "X")
# Returns: "HelloXWorldX"

# With capture groups
text = "Hello123World456"
result = String.replace(text, ~r/(\w+)(\d+)/, "\\1-X")
# Returns: "Hello-XWorld-X"

text = "Hello123World456"
result = String.replace(text, ~r/\d+/, "X", global: true)
# Returns: "HelloXWorldX"

# With multiple options
result = String.replace(text, ~r/\d+/, "X", 
  global: true,
  trim: true
)
# Returns: "HelloXWorldX"

text = "Hello123World456"
result = String.replace(text, ~r/\d+/, fn match ->
  String.upcase(match)
end)
# Returns: "Hello123World456" (unchanged)
