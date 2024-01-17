# frozen_string_literal

=begin
 Ruby arrays provides a lot methods by default.
=end

# push and pop.

tokens = []

# Add elements to the end of the array.
tokens.push :identifier
tokens.push :left_param
tokens.push :right_param
tokens.push :semicolon

# Remove elements from the end of the array.

until (token = tokens.pop).nil?
	puts "The token is #{token}."
end

# unshift and shift.

# Add elements to the beginning of the array.

friends = []

friends.unshift "Michi"
friends.unshift "Joseph"
friends.unshift "Minino"
friends.unshift "Biufor"

until (friend = friends.shift).nil?
	puts "#{friend} is a friend of mine."
end

# Get elements from the head and tail of the array.

languages = %w[English, Spanish, Japanese, French, Portugues]

first_two = languages.first 2

p first_two

last_two = languages.last 2

p last_two
