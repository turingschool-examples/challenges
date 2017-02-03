require 'minitest/autorun'
require 'minitest/pride'
require './well_formedness'

class ThingTest < Minitest::Test
  def test_it_validates_a_simple_example
      x = Validator.new
      result = x.validate("()")
      assert result, true
  end

  def test_it_validates_a_medium_example
    x = Validator.new
    result = x.validate("([{}[]])")
    assert_equal result, true
  end


  def test_it_fails_a_simple_example
    x = Validator.new
    result = x.validate("()[")
    assert_equal result, false
  end

  def test_it_fails_a_medium_example
    x = Validator.new
    result = x.validate("([)]")
    assert_equal result, false
  end

end
