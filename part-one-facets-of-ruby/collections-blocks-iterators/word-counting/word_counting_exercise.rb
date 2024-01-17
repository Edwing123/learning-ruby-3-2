# frozen_string_literal: true

require_relative "get_words.rb"
require_relative "count_words.rb"

msg = "Hello, world, hey world, how are you?"

# p get_words_from_string(msg)
# p count_words(["Hi"])

count_words(
	get_words_from_string(msg)
)
.sort_by { |key, value| value }
.reverse_each { |key, value| puts "#{key}: #{value}" }
