# @author Edwing123
# Symbols in Ruby.

# For me, Ruby symbols are similar
# to enumerations, or atom in Erlang.
# In which it's a kind of special
# value whose data its its own name.

# Symbols are immutable, and they
# are created by using a colon.

# They can be used as key in hashes, and there
# are advantages for that, they are lighter than
# strings. That's because behind the scenes
# symbols are represented as numbers with a human-friendly name.

def move_to(direction)
	puts("Moving to #{direction}.")
end

move_to(:north)
move_to(:south)
move_to(:east)
move_to(:west)

# Unlike user-defined objects, symbols
# behave like primitive values. For example
# 1 == 1, here 1 is a primitive value, and
# even though we have "two" 1's, they are
# the same value. The same happens with symbols.

puts(:north == :north)

# Let's check their object_id's.
puts(:north.object_id == :north.object_id)

# Let's use symbols are hash keys.
friends_ages = {
	:ruth => 17,
	:michi => 1,
	:minino => 7,
	:joseph => 27,
}

friends_ages.each do |key, value|
	puts("The key is :#{key}, and the value is #{value}.")
end

# Using symbols are hash keys is very common,
# and due to that, Ruby has a special syntax
# for creating literal hashes.

friends_ages = {
	ruth: 17,
	michi: 1,
	minino: 7,
	joseph: 27,
}

friends_ages.each do |key, value|
	puts("The key is :#{key}, and the value is #{value}.")
end
