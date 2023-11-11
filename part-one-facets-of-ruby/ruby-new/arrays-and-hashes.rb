# @author Edwing123
# Arrays and Hashes in Ruby.

# Arrays let us store a list of elements of different
# types, and later access or set them by an index.
#
# One way to create an array is through an array literal.

# Array literal.
friends = ["Michi", "Joseph", "Ruth"]

# The elements of an array can be of any data type.
mixed_types = ["Edwing123", true, 123, :ruth, nil, ["An array inside another array"]]

# Access elements individually by their index.
michi = friends[0]

# The first element is at index 0.
# And the last element is at index length - 1. Where length is the
# number of elements in the array.
# Which can be obtained by calling the length method.
friends_count = friends.length()

puts <<~STR
I have #{friends_count} friends.
The zeroth friend is #{michi}.
STR

# Holy moly! What's that <<~STR thing?

# By the way, nil is an object!
# Well, I know how they are represented internally,
# in fact, nil always have the same object id.
nil_object_id = nil.object_id()

puts nil_object_id

# Hashes let us make mappings from a key to a value.
# They are also called dictionaries or associative arrays in other languages.
currency_symbols = {
	  "USD" => "$",
	  "EUR" => "€",
	  "JPY" => "¥",
	  "GBP" => "£",
	  "CAD" => "C$",
}

# Hashes keys and values can be of any data type.
mixed_types = {
	1 => "Number",
	:symbol => "Symbol",
	"string" => "String",
	true => "True",
	false => "False",
	nil => "Nil",
}


mixed_types.each do |key, value|
	puts "#{key.inspect} => #{value}"
end

# Access values by their key.
usd_symbol = currency_symbols["USD"]

# Access it by providing a key within [].
# If the key is not found, nil is returned.
# We can specify a default value for a missing key.

hash_with_default = Hash.new("Default value")
puts hash_with_default[:do_not_exist]

# Hashes and arrays offer a lot of convient methods.
# So I'll learn about those along the way.
