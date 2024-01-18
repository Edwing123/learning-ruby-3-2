# frozen_string_literal: true

def get_fib_upto(n)
	a, b = 1, 1

	while a <= n
		yield a if block_given?
		a, b = b, a + b
	end

	return a
end

n = get_fib_upto(1_000) { print _1, " " }
puts



