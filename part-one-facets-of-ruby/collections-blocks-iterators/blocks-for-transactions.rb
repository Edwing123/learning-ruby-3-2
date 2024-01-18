# frozen_string_literal: true

# I'm not sure how to explain what a transaction is in this
# context, for now I'll omit an explanation.

class File
	def self.open_ensure_close(*args)
		f = File.open(*args)

		yield f

		f.close
	end
end

File.open_ensure_close("./hash-digging.rb") do |f|
	while (line = f.gets) != nil
		puts line
	end
end
