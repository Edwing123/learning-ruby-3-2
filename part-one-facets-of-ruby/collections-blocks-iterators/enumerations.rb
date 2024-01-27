# frozen_string_literal: true

# So far we've iterated over arrays and hashes using
# methods such as inject, filter, select, map, each (and its variants).
#
# Enumerators provide more control with iterations,
# they let us decide when to iterate.
#
# Ruby provide the notation/mechanism of iteration
# with the [Enumerator] class.
#
# We can get an enumerator out of an array using
# the [to_enum] or [enum_for] methods.

points = [
	[0, 0],
	[1, 2],
]

points_enumerator = points.to_enum()

# We get the next element in the sequense
# by calling the [next] method.

first_point = points_enumerator.next()

p first_point

second_point = points_enumerator.next()

p second_point

# [next] will raise an exception if the collection
# already reached its end: [StopIteration].

begin
	p points_enumerator.next()
rescue StopIteration => e
	p e
end

# By default, the [Enumerator] instance returned
# by [to_enum] uses [Array#each] internally as
# the iteration implementation.
#
# We can check this with:
#
# e = points.to_enum
# puts e.inspect

puts points_enumerator.inspect

# The thing is, in the case of arrays
# we can pass a symbol to [to_enum] with the name
# of an array iterator method, for example [Array#reverse_each].
# Such method will be used as the implementation of the
# iterator.

more = points.to_enum(:reverse_each)

p more.next # The last element.
p more.next # The post-last element.

# Exception!
# p more.next

# Array iterator methods provide a shortcut for this,
# whenever you don't provide a block for an iterator
# method, the method will return an enumerator instance.

# show_points = points.map
# show_points = points.index
show_points = points.each

p show_points.next

p show_points.next

p show_points.inspect
