# frozen_string_literal: true

# Enumerators are objects.

xs = [1, 2, 3, 4, 5]

xs_enum = xs.to_enum

xs_enum.with_index do |n, idx|
	puts "#{n} at #{idx}."
end

# Same as above.
xs_enum.each_with_index do |n, idx|
	puts "#{n} at #{idx}."
end
