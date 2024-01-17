# frozen_string_literal: tru

# Yeah, monkey patching, what a pain.

class Character
	attr_reader :name

	def initialize(name)
		@name = name
	end
end

# Not good, but valid.
class Character
	def scream_name()
		puts "I AM #{name.upcase}."
	end
end

chr = Character.new("Edwing123")
chr.scream_name()

# Many libraries do this, it's the everyday bread in Ruby.
