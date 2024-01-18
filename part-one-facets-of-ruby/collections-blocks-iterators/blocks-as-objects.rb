# frozen_string_literal: true

# We can explictly defined a parameter
# for a block. Such parameter must be the last
# one, and it's prefixed with an ampersand
# character "&".

def capture_block(&block)
	# We can return it.
	# This syntax transform the block
	# to an instance of the `Proc` class.
	block
end

say_hello = capture_block { puts "Hello." }

# Call it through `Proc#call`.

say_hello.call()

# This is very common that Ruby provides not one, but two
# ways to create such "block variables".

# Lambdas.

greet = ->(name) { puts "Hello, #{name}." }

greet.call "Edwin"

p greet.class

# The author calls this a "stabby lambda", I believe
# is due to the "->" operator, perhaps it looks like a knife?

# This syntax is a shortcut for `Kernel#lambda`.

attack = lambda { |weapon| puts "Attacking with #{weapon}." }

attack.call "lambdas"

p attack.class

# Mmm the class of the lambda is `Proc`.

# There's also `Kernel#proc`.

do_homework = proc { |classname| "Doing #{classname} homework." }

do_homework.call "Math"

p do_homework.class

# Both lambda/stabby and proc invoke `Proc.new`.

do_anything = Proc.new do |what|
	puts "I'm really doing anything, really."
	puts "Anything: #{what}."
end

do_anything.call "Studying Ruby"

p do_anything.class

# Even though all these "blocks-as-objects" mechanisms end up as instances
# of `Proc`, there exist differences.
#
# Lambda/stabby:
#  - It checks the appropiate number of arguments are provided.
#  - The `return` keyword can be used to return from within the lambda body.
#
# Proc:
#  - It's very flexible with the arguments provided, it won't perform a check.
#  - The `return` keyword is not block-scoped as lambdas, instead, it'll return
#    from the surrounding method.
#
# Let's see examples.

# Lambda.

# Checks correct args number.

check_args = ->(name, age) {}

# ArgumentError.
# check_args.call
# check_args.call 1

# Returning from lambda.

tap = ->(entity) { return entity }

p tap.call 1

# Proc.

# Same as before, but this time we see the
# quirks of procs.

# Checks correct args number.

check_args = proc { |name, age| }

# Ok.
check_args.call
check_args.call 1

# Returning from lambda.

tap =  proc { |entity| return entity }

p tap.call 1

# This is not printed.

puts "The end."
