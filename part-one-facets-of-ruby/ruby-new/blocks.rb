# Blocks are Ruby take on anonymous functions, the difference
# is they made it unnecessary tight with methods and the language,
# and in my opinion, anonymous functions in JavaScript
# (or basically treating functions as first-class citizens) are more
# flexible.

pets = ["Michi", "Biufor", "Minino"]

puts "At home we have #{pets.size} mascots:\n"

pets.each_with_index do |pet, index|
	puts "#{index + 1} - #{pet}."
end

# You can pass a block to a method, even if it doesn't "use it".
# I don't like this, I'd rather be explicit about if a method
# takes or not a block.

def foo()
	puts "I ain't calling no block."
end

foo { "Hello?" }

# A method decides when to invoked the passed in block, it does that by
# calling the `yielk` method. Think of yield as if it's the block itself,
# we can even pass arguments.

def bar()
	x = 123
	r = yield x

	puts "The result is #{r}."
end

bar { |v| v * 2 }

# But what happens if we don't provide a block?
# bar
#
# We get the following error:
# `bar': no block given (yield) (LocalJumpError)

# The built-in Ruby constructs (strings, arrays, numbers, ranges, and a lot more)
# provide methods that take blocks.

friends = ["Michi", "Minino", "Buifor"]

1.upto(5) { |n| puts n }

5.times { puts _1 } # _1 is the first parameter (index), yeah, it's implictly here.

("a".."e").each { print _1 }

puts ""

("a".."e").each { |letter| print letter }

puts ""
