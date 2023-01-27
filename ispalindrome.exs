defmodule Palindrome do
	def isPalindrome(s) do
		s == String.reverse(s)
	end
end
