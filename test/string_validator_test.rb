# gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/string_validator"
require 'pry'

class StringValidatorTest < Minitest::Test
  def test_it_validates_parentheses
    v = StringValidator.new
    assert_equal true, v.validate("()")

  end
  def test_it_validates_square_brackets
    v = StringValidator.new
    assert_equal true, v.validate("[]")
  end
end
