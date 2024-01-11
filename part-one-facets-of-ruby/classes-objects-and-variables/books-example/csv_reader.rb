# frozen_string_literal: true

require "csv"
require_relative "book.rb"

class CSVReader
	def initialize()
		@books = []
	end

	def read_data_from_file(path)
		CSV.foreach(path, headers: true) do |row|
			@books << Book.new(
				row["ISBN"],
				row["Price"].to_f,
			)
		end
	end

	def total_value_in_stock()
		return @books.reduce(0) { |acc, book| acc + book.price }
	end

	def number_of_each_isbn()
	end
end
