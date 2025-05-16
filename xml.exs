# defp deps() do
#   [
#     {:exml, "~> 0.1.3"}
#   ]
# end

Mix.install([
{:exml, "~> 0.1.3"}
])

# Mix.install([
# {:req, "~> 0.5.0"}
# ])

xml = """
<XML>
<xml>
<publisher>
<publisher_name>University of Illinois Press</publisher_name>
<prefix_name>University of Illinois Press</prefix_name>
<publisher_location>Champaign, IL, United States</publisher_location>
<member_id>3673</member_id>
<member_type>Member Publisher</member_type>
<annual_fee>550</annual_fee>
<date_joined>2011-04-07</date_joined>
<other_prefixes>
<prefix>10.5622</prefix>
<prefix>10.5406</prefix>
</other_prefixes>
</publisher>
</xml>
</XML>
"""

doc = Exml.parse xml

IO.puts Exml.get doc, "//publisher_name"
