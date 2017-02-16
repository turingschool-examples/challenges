gem 'minitest', '>= 5.0.0'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/generator'
require 'pry'

class GeneratorTest < Minitest::Test

  def test_it_exists
    g = Generator.new
    assert g
  end

  def test_it_generates_a_single_letter
    g = Generator.new
    code = g.random_letters("X")

    assert_equal 1, code.length
    assert_equal String, code.class
  end

  def test_it_generates_five_letters
    g = Generator.new
    code = g.random_letters("XXXXX")

    assert_equal 5, code.length
    assert_equal String, code.class
  end

  def test_it_generates_a_letter_and_number
    g = Generator.new
    code = g.random_letters("XN")

    assert_equal 2, code.length
    assert_equal String, code.class
  end

  def test_it_generates_a_letter_number_combo
    g = Generator.new
    code = g.random_letters("XNXXN")

    assert_equal 5, code.length
    assert_equal String, code.class
  end

end
