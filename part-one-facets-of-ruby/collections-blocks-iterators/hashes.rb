# frozen_string_literal: true

=begin
 Hashes in Ruby.
=end

countries_currency_symbol = {
	:nicaragua => "C$",
	:usa => "$",
	:japan => "¥"
}

countries_currency_symbol[:japan].tap do
	p it.encoding
end

# Symbols are used a lot in hashes,
# and due to that, Ruby introduced a new syntax
# to concisely create hash with symbol keys.

token_name_map = {
	identifier: "Identifier",
	left_param: "Left parenthesis",
	right_param: "Right parenthesis",
}

puts "These hash has #{token_name_map.length} keys."

# There's also a handy shortcut for defining hashes
# where there exist a variable that has the same
# name as the intented hash key.

firstname = "Edwin"
lastname = "Garcia"

me = {firstname:, lastname:}

p me

# This also works with methods.

def greet(name:)
	puts "Good morning, #{name}."
end

name = "Edwin Garcia"

# Shortcut for `name: name`.
greet(name:)
