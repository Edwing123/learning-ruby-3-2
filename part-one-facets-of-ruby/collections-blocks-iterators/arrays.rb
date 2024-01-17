# frozen_string_literal: true

=begin
 Working with arrays.
=end

# Creating an array using the literal syntax provided
# by Ruby.

things = [:symbol, true, "Hello", 123, 1.5, [1, 2, 3]]

# An array can start off empty.
things = []

# Another way to create one is by instantiating one
# through the [Array] class.
things = Array.new()

p things.class
p things.length

# An out of bounds access returns [nil].
p things[0]

# Ruby arrays support negative indexes, where -1
# is the last element, -2 is the element that comes
# before the last element, and so on.
fruits = ["Mango", "Banana", "Orange"]
index = -1

puts "The fruit at fruits[#{index}] is #{fruits[index]}."

# We can index using ranges.

def fetch(array, start, count)
    array[(start)...(start+count)]
end

p fetch(fruits, 0, 100)
p fetch(fruits, 0, 3)
p fetch(fruits, 0, 2)
p fetch(fruits, 0, 1)
p fetch(fruits, 0, 0)

# The `[]` is actually a method of the [Array] class.
# However, Ruby special cases this syntax for convenience.

friends = ["Michi", "Joseph", "Minino", "Biufor"]

p friends.[](0)

p friends.[] 1

# Invalid.
# p friends.[1]

# Invalid, too.
# p friends.[1](0)

# Ruby indexing support several variations: We have seen
# single index number, ranges. It also support two args.

# 0 is the starting index position, 2 is the
# number of elements to get starting from that position.
p friends[0, 2]

# We can also mutate the array with indexes.
pokemon_party = ["Wirmple", "Lotad", "Torchi", "Ralts", "Wingull"]

# This is the correct number.
pokemon_party[2] = "Torchic"

# Once again, this is syntatix sugar over `[]=`.
pokemon_party.[]=(0, "Wurmple")

puts "My pokemon party is:"

pokemon_party.each { |pokemon| puts "- #{pokemon}." }

# That was the simplest form. Array mutation support
# other indexing types.

grades = [8, 7, 9, 9, 8]

# The syntax: [start, count].

# Replace count elements with x starting from start.

# Replace elements at 0 and 1 with the value 9.
# This was surprising to me, because the elements
# from 0 to 1 get wiped out, and the value 9
# is inserted.
#
# This is because [0, 2] selects a sub-array,
# and the selected sub-array is replaced with 9.
grades[0, 2] = 9

p grades
puts [9, 9, 9, 8] == grades

# If the count argument is 0, the mutation behaves
# as an insertion.
grades[0, 0] = 1

p grades
puts [1, 9, 9, 9, 8] == grades

# Now, let's talk about the right hand side.
# If the value is an array, each element gets
# into play with the replacement.

sequense = [1, 2, 3, 4]

# 0 is set to 99, and 1 is set 100.
sequense[0, 2] = [99, 100]

p sequense
p [99, 100, 3, 4] == sequense

# What if the count argument is less than the available elements
# on the right?

sequense[0, 1] = [1, 2]

# The element at 0 index is remove, and the values
# on the right are inserted.
p sequense
p [1, 2, 100, 3, 4] == sequense

# What if the the count is greater than the
# available elements?

# Reset.
sequense = [1, 2, 3, 4]

sequense[0, 3] = [100, 200]

# 0 is set to 100, 1 is set to 200, and 3 is removed.
p sequense
p [100, 200,  4] == sequense
