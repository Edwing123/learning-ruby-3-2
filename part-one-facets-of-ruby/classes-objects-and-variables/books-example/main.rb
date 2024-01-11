# frozen_string_literal: true

require_relative "csv_reader.rb"

if __FILE__ == $0
	if ARGV.size < 1
		STDERR.puts "No CSV files were provided for processing."
		exit(0)
	end

	csv_reader = CSVReader.new()

	ARGV.each do |path|
		csv_reader.read_data_from_file(path)
	end

	total_in_stock = csv_reader.total_value_in_stock()
	puts "We got $#{total_in_stock} worth in stock."
end
