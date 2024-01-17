# frozen_string_literal: true

=begin
 Ruby provides more convinience syntax
 for defining arrays.

 Ruby devs thought: Ahh, what a pain to
 to declare string arrays, I don't want
 to type all those commas and quotes.

 That's why they created more syntatic sugar
=end

fruits = %w[mango banana orange apple grape]

fruits.each_with_index do |fruit, index|
	puts "#{index + 1} - #{fruit}."
end

# Each item can be converted to a symbol with %i.

tokens = %i[left_param, right_param, single_quote, double_quote]

tokens.each_with_index do |token, index|
	puts "#{index + 1} - #{token} (#{token.class})."
end
