# frozen_string_literal: true

f = File.open("./blocks.rb")

f.each do |line|
	puts line
end

f.close

f = File.open("./blocks.rb")

f.each.with_index do |line, index|
	puts "#{index}: #{line}"
end

f.close
