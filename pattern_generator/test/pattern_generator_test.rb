require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/pattern_generator'

class PatternGeneratorTest < Minitest::Test

  def set_up
    @letters = {"A"=> true, "B"=> true, "C"=> true, "D"=> true,
              "E"=> true, "F"=> true, "G"=> true, "H"=> true,
              "J"=> true, "K"=> true, "L"=> true, "M"=> true,
              "N"=> true, "P"=> true, "Q"=> true, "R"=> true,
              "S"=> true, "T"=> true, "U"=> true, "V"=> true,
              "W"=> true, "X" => true, "Y"=> true, "Z"=> true
               }
    @numbers = {"2" => true, "3" => true, "4" => true, "5" => true,
                "6" => true, "7" => true, "8" => true, "9" => true,
                }
  end

  def test_it_can_generate_a_pattern
    pattern_generator = PatternGenerator.new("XXNXN")
    pattern = pattern_generator.find_serials

    assert_equal 5, pattern.length
  end

  def test_the_first_char_is_a_captial_letter
    set_up
    pattern_generator = PatternGenerator.new("XXNXN")
    pattern = pattern_generator.find_serials

    assert @letters[pattern[0]]
  end

  def test_the_second_char_is_a_capital_letter
    set_up
    pattern_generator = PatternGenerator.new("XXNXN")
    pattern = pattern_generator.find_serials

    assert @letters[pattern[1]]
  end

  def test_the_third_char_is_a_number
    set_up
    pattern_generator = PatternGenerator.new("XXNXN")
    pattern = pattern_generator.find_serials

    assert @numbers[pattern[2]]
  end

  def test_the_fourth_char_is_a_capital_letter
    set_up
    pattern_generator = PatternGenerator.new("XXNXN")
    pattern = pattern_generator.find_serials

    assert @letters[pattern[3]]
  end

  def test_the_fifth_char_is_a_number
    set_up
    pattern_generator = PatternGenerator.new("XXNXN")
    pattern = pattern_generator.find_serials

    assert @numbers[pattern[4]]
  end

  def test_two_patterns_are_not_the_same
    set_up
    pattern_generator = PatternGenerator.new("XXNXN")
    pattern_1 = pattern_generator.find_serials
    pattern_2 = pattern_generator.find_serials

    refute pattern_1 == pattern_2
  end




end
