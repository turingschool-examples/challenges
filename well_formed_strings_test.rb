gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'well_formed_strings'

class StringValidatorTest < Minitest::Test

  def setup
    @validator = StringValidator.new
  end

  def test_it_exists
    assert_equal @validator.class, StringValidator
  end

  def test_it_validates_true_with_parethesis

    assert @validator.validate("()")
  end

  def test_it_returns_if_paren_is_not_closed
    refute @validator.validate("(")
  end

  def test_it_can_take_multiple_open_return_false
    refute @validator.validate("((()")
  end
end
