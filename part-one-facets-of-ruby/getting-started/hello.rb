#!/usr/bin/env ruby

class Main
	def initialize()
		@message = "Hello, World!"
	end

	def run()
		puts @message
	end
end

if __FILE__ == $0
	main = Main.new()
	main.run()
end
