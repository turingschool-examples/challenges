require "minitest/autorun"
require "minitest/nyan_cat"
require "./lib/string_validator"

class StringValidatorTest < Minitest::Test

  attr_reader :string

  def setup
    @string = StringValidator.new
  end

  def test_it_can_create_a_class
    assert_instance_of StringValidator, string
  end

  def test_it_can_validtate_a_simple_string
    assert_equal true, string.validate("()")
  end

  def test_it_can_invalidate_a_simple_string
    assert_equal false, string.validate("(")
  end

  def test_it_can_invalidate_a_string
    assert_equal false, string.validate("([)]")
  end

  def test_it_can_validate_a_more_complex_string
    assert_equal true, string.validate("(thi{s is a} [t]hing)")
  end

  def test_it_invalidates_messed_up_brackets
    assert_equal false, string.validate("([)]")
  end

end
