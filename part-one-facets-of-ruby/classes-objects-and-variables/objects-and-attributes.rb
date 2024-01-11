# frozen_string_literal: true

class BookInStock
	attr_reader :isbn
	attr_reader :price

	def initialize(isbn, price)
		unless price.is_a?(Float)
			raise ArgumentError("price is not a float")
		end

		@isbn = isbn
		@price = price
	end

	# Create accessor methods for each instance variables.
	# def isbn()
		# return @isbn
	# end

	# def price()
		# return @price
	# end
end

def display_book(book)
	puts "ISBN: #{book.isbn()}."
	puts "Price: #{book.price()}."
end

concurrency_in_go = BookInStock.new(
	"1491941197",
	28.80,
)

display_book(concurrency_in_go)
