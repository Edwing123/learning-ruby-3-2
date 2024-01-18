# frozen_string_literal: true

def encrypt(text, shifts_count = 1)
	return text
		.split("")
		.map { |chr| (chr.ord + shifts_count).chr }
		.join("")
end

def decrypt(text, shifts_count = 1)
	return text
		.split("")
		.map { |chr| (chr.ord - shifts_count).chr }
		.join("")
end


def assert(condition)
	raise RuntimeError unless condition
end

assert encrypt("12") == "23"

puts encrypt("12")

puts encrypt "Yes, this is the way go to, hopefully nobody will know it."


def key_exchange(g, n, p)
	return (g ** p) % n
end

n = 2 ** 3 - 1
g = Random.rand(n)
edwin_p = Random.rand(n)
ruth_p = Random.rand(n)

edwin_partial = key_exchange(g, n, edwin_p)
ruth_partial = key_exchange(g, n, ruth_p)

edwin_key = key_exchange(ruth_partial, n, edwin_p)
ruth_key = key_exchange(edwin_partial, n, ruth_p)

assert edwin_key == ruth_key

puts edwin_key
puts ruth_key

encrypted = encrypt("Hello Ruth, This is a message from Edwin.", ruth_key)

puts encrypted

decrypted = decrypt(encrypted, edwin_key)

puts decrypted
