# Ruby features many methods and APIs
# to perform I/O operatins on streams of data.
# As usual, we get access to the standard streams:
#
# - stdin.
# - stdout.
# - stderr.
#
# Methods like puts, p, and print are used to show
# output to the standard output.
#
# On the other hand, gets is used to get a string from stdout.

puts "write <exit> to exti the writing mode."
puts "Write something:"

lineno = 0

lineno += 1

print "#{lineno} | "

while (line = gets) != nil and (line =~ /<exit>/i) == nil
	# puts line
	lineno += 1
	print "#{lineno} | "
end
