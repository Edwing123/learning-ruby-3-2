# frozen_string_literal: true

=begin
 What's a block in Ruby? I don't have a simple answer.

 Ruby is an OOP language, it provides classes,
 and in classes, we define methods. Methods
 have a body, and in their body we define instructions.

 The methods define by a class (be those instance or class methods)
 define behaviour.

 Our programs are constructed of classes, methods, variables,
 expressions, method invocations, and more.

 Why did I say all these?

 Because I don't see there's a precise way to define
 what a block is without first understanding that Ruby
 defines its syntax and semantics, and these two things together
 are the foundation of what a Ruby dev can do when writing
 code.

 In Ruby, a block is a construct (syntax and semantics)
 that is tightly coupled with methods and their invocations.
 Basically, a method can called "yield" inside its body, and
 this yield will execute the block passed to the method
 invocation. Now, if we don't provide a block for the method call,
 and "yield" is called, the program will raise an exception.

 How do we make sure I block is provided?

 Ruby provides the "block_given?" method, it'll return
 true if a block was provided to the method invocation,
 othewise, it'll return false.

 This is interesting for me, because even though
 blocks syntax is coupled with method invocations,
 the language itself won't perform a check to
 verify that we are providing a block when the
 method needs it (that is, when yield is called).

 There's a reason for this flexibility: a block
 might be used only if a condition is met.
 a lot of Ruby APIs do different things based
 on if a block is given or not, so, it's up to
 the method to check if a block was given.

 Let's some examples.
=end

# If a block is given, it'll be invoked
# 5 times, i has an initial value of 0,
# and after each call i will increment by 1.

5.times do |i|
	puts i
end

# If a block is not given, an `Enumerator` instance
# will be returned.

enumerator = 5.times

# Same for: 5.upto, 5.downto.

# Also `Array#each`.

grades = [8, 7, 9, 9, 9]

# _1 is an anonymous variable representing
# the first arguments passed to the block.
grades.each { puts _1 }

enumerator = grades.each

p enumerator.to_a

# Let's create our own.

def add(x, y)
	r = x + y

	if block_given?
		yield r
		return
	end

	return x
end

p add(1, 2)

# The call to `add` returns nothings is a block
# is given. Though the call to `p` prints `nil`.
p add(1, 2) { |r| puts "The result is #{r}." }

# ==========================================
# Now let's go with the contents of the book.
# ==========================================

# Blocks scoping.

# The have access to the surrounding scope.

sum = 0

5.times do |i|
	sum += i
end

puts sum == (0 + 1 + 2 + 3 + 4)

# In this case, if we assign a new value to `sum`,
# It'll mutate the variable outside the block,
# this is important to say because in this case
# Ruby is not creating a new variable scoped
# to the block. In other languages -especially
# those with strong typing, where you declare
# variables before using them- this is not the case.
#
# Also, it's worth mentioning that in some languages,
# even if you can declare variables, you are not allowed
# to shadow variables. See an example of this at `Lambda.java`.

# block params can shadow surrounding variables.

sum = 0

total = (1..10).reduce(1) { |sum, n| sum * n }

puts sum
puts total

# Run the program with -w (warnings)
# to get a warning about this.

# If we need to declare block-local variables,
# we can do so by "declaring" them following
# the block params list, after a semicolon.

total = 0

cart = [66, 78, 56, 33, 12]

cart.each do |item_price; total|
	# total is block-local.
	total = 0

	# Item price + 15% VAT.
	total += item_price + (item_price * 0.15)
end

# Not good!
puts total


