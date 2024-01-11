# Regular Expressions are object in Ruby.

langs_regexp = /Ruby|C|Java(Script)?/

langs = [
	"Ruby",
	"Java",
	"JavaScript",
	"C",
	"Rust",
]

favorite_count = 0

langs.each do |lang|
	if lang =~ langs_regexp
		favorite_count += 1
	end
end

puts "We found #{favorite_count} favorite languages."

# RegExp and strings have a `match?` method.
color_regexp = /colou?r/

line = gets()

# Returns true if the pattern matches, otherwise it returns false.
puts line.match?(color_regexp)
puts color_regexp.match?(line)

# This one returns the starting position of the match,
# or nil of there is no match.
puts line =~ color_regexp

# Strings have functions for replacing substrings.

words_blocklist = [/dumb/, /damn/, /wtf/, /lmao/, /Rust/]

msg = "Hello bros, this dumb dog of mine ate my Rust homework, lmao."

words_blocklist.each { |word| msg = msg.gsub(word, "$#3&") }

puts msg

# gsub is for a global replacement. on the other hand, sub replaces
# the first word matched.
