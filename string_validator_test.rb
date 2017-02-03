require './string_validator'
require 'minitest/autorun'

class TestStringValidator < Minitest::Test
  def setup
    @v = StringValidator.new
  end

  def test_validates_parenthesis
    result = @v.validate("()")
    assert_equal result, true
  end

  def test_validates_all_brackets
    result = @v.validate("([{}[]])")
    assert_equal result, true
  end

  def test_refutes_unclosed_brackets
    result = @v.validate("()[")
    assert_equal result, false
  end

  def test_refutes_incorrect_order
    result = @v.validate("([)]")
    assert_equal result, false
  end

  def test_vailidates_with_junk_characters
    result = @v.validate("(asdf[{}ewrq[%&*!]])")
    assert_equal result, true
  end

  def test_refutes_bad_order_with_junk_characters
    result = @v.validate("(FF[asd)$!@%]")
    assert_equal result, false
  end
end
