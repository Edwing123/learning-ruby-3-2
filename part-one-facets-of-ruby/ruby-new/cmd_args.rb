# We get access to the arguments provided
# in the command line through the ARGV constant.

if ARGV.size > 0
	puts "The arguments are:"

	ARGV.each_with_index do |arg, index|
		puts "ARGV[#{index}] = #{arg}"
	end
end

puts ARGF
