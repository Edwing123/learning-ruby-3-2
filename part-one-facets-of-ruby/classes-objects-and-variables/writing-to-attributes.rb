# frozen_string_literal: true

class BookInStock
	# attr_reader :isbn, :price
	# attr_writer :isbn, :price

	# Both reader and writer.
	attr_accessor :isbn, :price

	def initialize(isbn, price)
		@isbn = isbn
		@price = price
	end

	# Writing methods for each instance variable.
	# def isbn=(isbn)
	# 	@isbn = isbn
	# end

	# def price=(price)
	# 	@price = price
	# end
end

my_life = BookInStock.new(
	"0",
	0.0,
)

my_life.price = 1.0

p my_life
