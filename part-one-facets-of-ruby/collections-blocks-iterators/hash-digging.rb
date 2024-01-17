# frozen_string_literal: true

# The `dig` method is a handy way to concisely access
# data in Arrays, Hashes, and Structs.

# For example:

songs = {
	jrock: [
		{
			name: "Happy Birthday",
			band: "Back Number",
			duration: 4.19 * 60,
		},
		{
			name: "Happy End",
			band: "Back Number",
			duration: 5.15 * 60,
		},
	],
	rock: [
		{
			name: "Thunderstruck",
			band: "AC/CD",
			duration: 4.53 * 60,
		}
	]
}

puts songs[:jrock][1][:duration]

puts songs.dig(:jrock, 1, :duration)

# According to the author, an advantage of this
# is that even if an element doesn't exit, it'll
# return nil, instead of an exception.
