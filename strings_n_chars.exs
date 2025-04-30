# Character vs String
'a'           # Single character (integer)
"hello"       # String (sequence of characters)

# Size comparison
byte_size("hełło")     # Returns 7 bytes (due to UTF-8 encoding)
String.length("hełło") # Returns 5 characters

# Working with characters
?a            # Shows code point: 97
?ł            # Shows code point: 322

# Converting between types
to_charlist("hello")   # Converts string to char list
to_string('hello')     # Converts char list to string
