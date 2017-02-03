gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'well-formed-strings.rb'

class StringValidatorTest < Minitest::Test
  def test_parens
    v = StringValidator.new
    assert v.validate("()"), true
  end

  def test_mess
    v = StringValidator.new
    assert v.validate("([{}[]])"), true
  end

  def test_one_off
    v = StringValidator.new
    assert v.validate("()["), false
  end

  def test_offset
    v = StringValidator.new
    assert v.validate("([)]"), false
  end
end
