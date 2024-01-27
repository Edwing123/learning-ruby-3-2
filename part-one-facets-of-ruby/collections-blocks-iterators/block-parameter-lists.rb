# frozen_string_literal: true

# If there's one thing I think I'll forget
# a lot in Ruby, is its vast ways of creating parameters.

# Both in method and block parameters we can define
# positional args, splat args, keyword args, and block captures.

def inspect_obj(obj)
	puts "==="
	puts "Type: #{obj.class}"
	puts "Value: #{obj}"
	puts "==="
	puts
end

def print_args(a, *b, **c, &d)
	[a, b, c, d].each { |obj| inspect_obj obj }
end

print_args(1, 2, 3, c1: 4, c2: 5) do
	#
end

# Same procedure using blocks.

print_args = ->(a, *b, **c, &d) do
	[a, b, c, d].each { |obj| inspect_obj obj }
end

print_args = proc do |a, *b, **c, &d|
	[a, b, c, d].each { |obj| inspect_obj obj }
end

print_args = lambda do |a, *b, **c, &d|
	[a, b, c, d].each { |obj| inspect_obj obj }
end
