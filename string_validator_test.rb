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

  def test_two_pairs_of_matched_brackets_are_valid
    sv = StringValidator.new
    assert sv.validate("{}()")
  end

  def test_mismatched_second_brackets_are_invalid
    sv = StringValidator.new
    refute sv.validate("{})(")
  end

  def test_complex_nesting_is_valid
    sv = StringValidator.new
    assert sv.validate("([{}[]])")
  end

  def test_complex_nesting_with_some_trash_is_invalid
    sv = StringValidator.new
    refute sv.validate("([{}[]])]")
  end

  def test_complex_nesting_with_some_other_trash_is_invalid
    sv = StringValidator.new
    refute sv.validate("([{}[]])[")
  end

  def test_validating_a_second_input_works_correctly
    sv = StringValidator.new
    refute sv.validate("([{}[]])[")
    assert sv.validate("()")
  end
end
