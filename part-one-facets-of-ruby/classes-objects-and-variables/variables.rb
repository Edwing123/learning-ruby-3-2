# frozen_string_literal: true

me = "Edwin"

puts "'me' is of type #{me.class}."
puts "'me' has id of #{me.object_id}."
puts "'me' has a value of #{me}."

# another_me points to the same String instance.
another_me = me

# In order to create a real copy, we can use the
# dup (duplicate) method of the string object.
me_but_copied = me.dup()

puts "me.id == copied.id? #{me.object_id == me_but_copied.object_id}."

# Make an object inmutable by freezing it.
me.freeze()

# Is it frozen?
puts me.frozen?()
