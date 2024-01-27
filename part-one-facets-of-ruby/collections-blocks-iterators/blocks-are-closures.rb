# frozen_string_literal: true

def manage_state(initial_state)
	state = initial_state

	get_state = ->() { state }

	set_state = ->(value) { state = value }

	return {
		get_state:,
		set_state:,
	}
end

count_state = manage_state(0)

5.times { |i| count_state[:set_state].call(i) }

puts count_state[:get_state].call

def create_counter(initial_value)
	count = initial_value

	return ->() { count += 1 }
end

count = create_counter(1)

5.times { count.call }

puts count.call
