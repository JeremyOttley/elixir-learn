defmodule Rev do
	def reverse(str) do
    	reversed = String.reverse(str)
		IO.inspect(reversed)
    end
end

Rev.reverse("Jeremy")
