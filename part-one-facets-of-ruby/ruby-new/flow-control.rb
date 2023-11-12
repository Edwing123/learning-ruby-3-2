
today = Time.now()

if today.sunday?
	puts "Go to university."
elsif today.saturday?
	puts "Do homework."
else
	puts "Study."
end

# While loops
i = 0

while i < 10
	puts i
	i += 1
end

def cat
	# gets comes from  the Kernel module.
	# gets returned either a line of text or nil.
	# nil is considered a falsy value in Ruby.
	while (line = gets)
		puts line
	end
end

# cat

# Statement modifiers are an alternative
# statement for some flow control constructs.
# they follow the syntax:
#
# <expression> <flow control construct> <condition>
#

age = 22
msg = "You are young."
msg = "You are old." if age >= 18

puts msg

# The if version is commonly used as guard in
# the beginning of a method.
def get_drink(age)
	return "no alcohol for you." if age < 18
	return "here's your beer."
end

puts get_drink(17)
puts get_drink(18)
