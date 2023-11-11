
puts("Hello, We are learning Ruby.")

# It's date and time.
now = Time.now()
now_in_utc = now.utc()

puts("The time is #{now} (local).")
puts("The time is #{now_in_utc} (UTC).")

