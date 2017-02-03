require './lib/string_validator'
require 'minitest/autorun'
require 'minitest/pride'

class StringValidatorTest < Minitest::Test

  def test_it_equals_four
    v = StringValidator.new
    assert_equal 4, v.num
  end

  def test_validates_first_string
    string = "()"
    v = StringValidator.new
    assert_equal true, v.validate(string)
  end

  def test_validates_first_string
    string = "([{}[]])"
    v = StringValidator.new
    assert_equal true, v.validate(string)
  end

  def test_validates_second_string
    string = "()["
    v = StringValidator.new
    assert_equal false, v.validate(string)
  end
end
