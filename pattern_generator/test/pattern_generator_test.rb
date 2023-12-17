require 'minitest/autorun'
require 'minitest/pride'
require './lib/pattern_generator'
require 'pry'

class PatternGeneratorTest < Minitest::Test
  def test_it_exists
    assert(PatternGenerator.new).is_a? PatternGenerator
  end

  def test_it_initalizes_with_numbers
    pattern_generator =  PatternGenerator.new
    assert_equal ["2", "3", "4", "5", "6", "7", "8", "9"], pattern_generator.numbers
  end

  def test_it_initalizes_with_letters
    expected = ["A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    pattern_generator =  PatternGenerator.new
    assert_equal expected, pattern_generator.letters
  end

  def test_it_can_create_all_options
    expected = 884736
    pattern_generator =  PatternGenerator.new
    assert_equal expected, pattern_generator.create_all_options
  end

  def test_it_returns_a_random_one_that_will_not_be_still_avaible
    pattern_generator =  PatternGenerator.new
    pattern_generator.create_all_options
    random =  pattern_generator.get_a_random_one
    refute pattern_generator.all.include?(random)
  end


end
