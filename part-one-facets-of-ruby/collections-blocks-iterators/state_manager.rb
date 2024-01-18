# frozen_string_literal: true

class StateManager
	def initialize(initial_state)
		raise ArgumentError("initial state must be a hash") unless initial_state.is_a?(Hash)

		@state = {**initial_state}
		@listeners = Hash.new([])
	end

	def listen(key, &action)
		@listeners[key] << action
	end

	def set(key, value)
		old_value = @state[key]
		@state[key] = value
		@listeners[key].each { |action| action.call(key, old_value, value) }
		return nil
	end

	def get(key)
		return @state[key]
	end
end

form_state = StateManager.new({
	username: "",
	password: "",
})

form_state.listen(:username) do |key, old_value, new_value|
	puts "Changing #{key} from #{old_value} to #{new_value}."
end

form_state.set(:username, "Edwing123")
form_state.set(:username, "Ruth")
