# frozen_string_literal: true

def count_words(words_list)
	# The value 0 will be return
	# for any look up where
	# the key is undefined.
	#
	# Basically, it'll create
	# the undefined key, assign
	# the value 0, and then return
	# that value.
	words_count = Hash.new(0)

	# The moment a word (the key) is looked up,
	# and it doesn't exit, the hash will map
	# the key to the default value 0.
	words_list.each { |word| words_count[word] += 1 }

	return words_count
end
