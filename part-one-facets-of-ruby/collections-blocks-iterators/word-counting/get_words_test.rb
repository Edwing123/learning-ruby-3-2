# frozen_string_literal: true


require "minitest/autorun"
require_relative "get_words.rb"

class GetWordsTest < Minitest::Test
	def test_empty_string()
		assert_equal [], get_words_from_string("")
		assert_equal [], get_words_from_string("		")
	end

	def test_many_words()
		assert_equal ["hi", "ruth"], get_words_from_string("hi ruth")
		assert_equal %w[this is it], get_words_from_string("this is it")
	end

	def test_it_downcase_words()
		assert_equal %w[duck bull dog], get_words_from_string("duck bull dog")
	end
end
