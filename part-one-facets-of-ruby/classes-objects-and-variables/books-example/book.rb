# frozen_string_literal: true

class Book
	attr_reader :isbn, :price

	def initialize(isbn, price)
		unless price.is_a?(Float)
			raise ArgumentError("price must be a float.")
		end

		@isbn = isbn
		@price = price
	end
end
