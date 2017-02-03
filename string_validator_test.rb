require 'minitest/autorun'
require './string_validator'

class StringValidatorTest < Minitest::Test
  def test_it_exists
    assert StringValidator
  end

  def test_an_empty_string_is_valid
    sv = StringValidator.new
    assert sv.validate("")
  end

  def test_single_parens_are_valid
    sv = StringValidator.new
    assert sv.validate("()")
  end

  def test_single_inverted_parens_are_not_valid
    sv = StringValidator.new
    refute sv.validate(")(")
  end

  def test_single_square_brackets_are_valid
    sv = StringValidator.new
    assert sv.validate("[]")
  end

  def test_single_curly_brackets_are_valid
    sv = StringValidator.new
    assert sv.validate("{}")
  end
end
