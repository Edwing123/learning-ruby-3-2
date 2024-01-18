# frozen_string_literal: true

# Enhanced word-counting example.

def get_words_frequency(text)
	return text
		.downcase
		.scan(/[\w']+/)
		.tally
		.sort_by { |_, count| count }
		.last(5)
		.reverse
		.map {|k, v| "#{k}: #{v}."}
end

puts get_words_frequency("Hello, this is me, again, asking for help, hello, mother.")

# Ruby also has for loops, however, the author claims they are too magical.
# I disagree, a for loop construct that will get parsed, compiled, and ultimately,
# the compiled bytecode will be executed by the Ruby VM.
#
# A more honest answer would be that block and iterators (.each, .map, etc)
# are more idiomatic Ruby.
#
# But then, why do Ruby supports for loops?
#
# Hypothesis: Matz got inspiration from other programming language.
# That's fine, no problems. This seems to be one of those
# cases where we can see Ruby design has progressed in order
# to get an "identity", something that makes it unique, at least
# in syntax and coding practices.
