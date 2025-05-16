Mix.install([
{:exml, "~> 0.1.3"}
])

# Mix.install([
# {:req, "~> 0.5.0"}
# ])

xml = """
<?xml version="1.0" encoding="UTF-8"?>
<bookstore>
    <book>
        <title lang="en">Harry Potter</title>
        <price>29.99</price>
    </book>
    <book>
        <title lang="en">Learning XML</title>
        <price>39.95</price>
    </book>
</bookstore> 
"""

doc = Exml.parse xml

Exml.get doc, "//book[1]/title/@lang"

IO.puts Exml.get doc, "//title"
