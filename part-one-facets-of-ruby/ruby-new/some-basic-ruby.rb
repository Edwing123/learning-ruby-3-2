
def greet(name)
	return "Hello, #{name}!"
end

morning_greeting = greet("Ruth")
night_greeting = greet("Ruth")

puts(morning_greeting)
puts(night_greeting)

puts greet("Michi")

# Strings with either single or double quotes.
#
# Single quotes are Ruby raw strings, and double quotes are Ruby interpreted strings.
#
# What gets interpreted is escape sequences, like \n for newline, \t for tab, etc.
#
# Also, double quoted strings allow expression interpolation, which is the ability to
# embed Ruby expressions inside of strings, which are evaluated and replaced with the
# result of the expression __transformed__ into a string.

puts "Hello, #{morning_greeting}."

# Ruby variables naming conventions.
#
# Ruby variables are interesting, or maybe weird.
#
# The thing is, in OO languages you will find that
# for classes and objects, variables are called fields, well,
# in Ruby, they are called instance variables if they belong
# to an instance of a class, and they are called class variables
# if they belong to the class itself.
#
# Also, Ruby makes a distinction in how you name instance and class variables,
# this with the goal of diffirentiating them from one another.
#
# Let's first define all the type of identifers we can find in Ruby:
# 1. method names.
# 2. method parameters.
# 3. local variables.
#
# These three should start with a lowercase letter or an underscore.
# Why? I'll learn later.
#
# 4. instance variables.
# 5. class variables.
# 6. constants.
# 7. global variables.
#
# Instance variables are defined with an initial "at" sign, like @name.
# Class variables are defined with two "at" signs, like @@count.
# Global variables are defined with an initial "$" sign, like $stdout.
# Constants are defined with an initial uppercase letter, like PI.
#
# In Ruby, class names, modules names must be defined as constants (initial uppercase letter), like Animal.
#
# Ruby follows simple naming conventions: for variables use snake_case.
# For classes and modules use CamelCase. For constants use SCREAMING_SNAKE_CASE.
#
# Also, Ruby lets methods end with !, =, and ?.
# Why? I'll learn later.
