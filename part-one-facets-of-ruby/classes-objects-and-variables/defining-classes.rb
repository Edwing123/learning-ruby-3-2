# frozen_string_literal: true

=begin
 We have CSV files with the following schema:

 "Date", "ISBN", "Price"
=end

class BookInStock
	def initialize(isbn, price)
		raise RuntimeError unless price.is_a?(Float)
		@isbn = isbn
		@price = price
	end

	def to_s()
		return "Book(isbn=#{@isbn}, price=#{@price})"
	end
end

programming_in_ruby = BookInStock.new(
	"9781680509823",
	33.95,
)

puts programming_in_ruby
# p programming_in_ruby.ancestors
# p programming_in_ruby.object_id().to_s(16)
