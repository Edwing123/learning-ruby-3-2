# frozen_string_literal: true

# Lambda has the following syntax:
# -> (params...) { body }
#
# This is a shortcut for:
# lambda { body }
#
# The parenthesis are optional.
# -> params... {}

def succ(initial)
	state = initial

	set = -> n { state += n }
	get = -> { state }

	return [set, get]
end

set_count, get_count = succ(0)

(1..10).each { |i| set_count.call(get_count.call() + i) }

puts "The count is #{get_count.call()}."
