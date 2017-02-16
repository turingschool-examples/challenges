require './pattern'
require 'minitest/autorun'
require 'minitest/pride'

class PatternMatcherTest < Minitest::Test
  def setup
    @p = PatternMatcher.new
  end
  
  def test_that_pattern_matcher_exists
    assert_equal PatternMatcher, @p.class
  end
  
  def test_that_random_numbers_are_sort_of_generated
    number = @p.random_number
    assert_equal Fixnum, number.class
  end
  
  def test_that_random_letters_are_sort_of_generated
    letter = @p.random_letter
    assert_equal String, letter.class
  end

  def test_that_the_matcher_outputs_the_right_thing_for_X
    serial = @p.serial_generator("X")
    refute_equal Fixnum, serial[0].class
  end

  def test_that_the_matcher_outputs_the_right_thing_for_N
    serial = @p.serial_generator("N")
    assert_equal Fixnum, serial[0].class
  end
  
end