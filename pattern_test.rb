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

end