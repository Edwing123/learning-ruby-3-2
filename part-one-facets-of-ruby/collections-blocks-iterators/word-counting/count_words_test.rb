# frozen_string_literal: true

require "minitest/autorun"
require_relative "count_words.rb"

class TestCountWords < Minitest::Test
  def test_empty_list()
	assert_equal({}, count_words([]))
  end

  def test_single_word()
	assert_equal({"hi" => 1}, count_words(["hi"]))
  end

  def test_many_words()
	assert_equal({"hi" => 2, "me" => 1}, count_words(%w[hi hi me]))
  end
end
