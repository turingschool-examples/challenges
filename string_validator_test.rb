gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'string_validator'

class StringValidatorTest < Minitest::Test
  def test_for_validator
    assert_instance_of StringValidator, StringValidator.new
  end

  def test_for_validates_one
    v = StringValidator.new
    assert_equal true, v.validate("()")
  end

  def test_for_validates_second
    v = StringValidator.new
    assert_equal true, v.validate("([{}[]])")
  end

  def test_for_validates_third
    v = StringValidator.new
    assert_equal false, v.validate("()[")
  end

  def test_for_validates_third
    v = StringValidator.new
    assert_equal false, v.validate("([)]")
  end


end
