# frozen_string_literal: true

def get_words_from_string(text)
	return text.downcase.scan(/[\w']+/)
end
