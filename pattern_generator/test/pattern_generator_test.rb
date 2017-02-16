require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/pattern_generator'

class PatternGeneratorTest < Minitest::Test

  def set_up
    @letters = {"A"=> true, "B"=> true, "C"=> true, "D"=> true,
              "E"=> true, "F"=> true, "G"=> true, "H"=> true,
              "I"=> true, "J"=> true, "K"=> true, "L"=> true,
              "M"=> true, "N"=> true, "O"=> true, "P"=> true,
              "Q"=> true, "R"=> true, "S"=> true, "T"=> true,
              "U"=> true, "V"=> true, "W"=> true, "X" => true,
              "Y"=> true, "Z"=> true}
  end

  def test_it_can_generate_a_pattern
    pattern_generator = PatternGenerator.new
    pattern = pattern_generator.new_pattern
    assert_equal 5, pattern.length
  end

  def test_the_first_char_is_a_letter
    set_up
    pattern_generator = PatternGenerator.new
    pattern = pattern_generator.new_pattern
    assert @letters[pattern[0]]
  end


end
