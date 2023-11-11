# Ruby is an object-oriented programming language.

# A class represents a blueprint for definig
# the state and behaviour of an entity.
class Song
	attr_reader :name, :artist, :duration

	def initialize(name, artist, duration)
		@name = name
		@artist = artist
		@duration = duration
	end

	def play()
		puts "Playing #{@name} by #{@artist} (#{prettify_duration()})."
	end

	def to_s()
		"Song: #{@name} - #{@artist} (#{@duration})"
	end

	def prettify_duration()
		minutes = @duration / 60
		seconds = @duration % 60
		"#{minutes}:#{seconds}"
	end
end

if $0 == __FILE__
	song_happy_end = Song.new("Happy End", "Back Number", 260)
	song_birthday = Song.new("Birthday", "Back Number", 300)

	# Each instance, well, in fact, each object, has
	# a unique object id.
	puts "Object id of song_happy_end: #{song_happy_end.object_id}"
	puts "Object id of song_birthday: #{song_birthday.object_id}"

	puts "Let's play songs."
	song_happy_end.play()
	song_birthday.play()

	emoji = "🤣"
	puts emoji.length()
	puts emoji.bytesize()
	puts emoji[0]

	# Ruby objects communicate by sending messages.
	# When we do <object reference>.<method name>(<arguments list>).
	# We are sending a message to <object reference> to invoke <method name>
	# with <arguments list>.
	#
	# That's why <object reference> is also called a receiver.
	# Because is the one receiving the message.
end
