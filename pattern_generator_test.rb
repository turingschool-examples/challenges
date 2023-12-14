gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'pattern_generator'

class PatternGeneratorTest < Minitest::Test

  def test_for_instance_of_class
    skip
    assert_instance_of PatternGenerator, PatternGenerator.new
  end

  def test_can_ouput_one_letter_serials
    skip
    p = PatternGenerator.new
    assert_equal ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], p.possible_serial_numbers("X")
  end

  def test_can_ouput_one_number_serials
    skip
    p = PatternGenerator.new
    assert_equal ["1", "2", "3", "4", "5", "6", "7", "8", "9"], p.possible_serial_numbers("N")
  end

  def test_can_ouput_two_character_long_pattern
    p = PatternGenerator.new
    assert_includes ["AA", "AB"], p.possible_serial_numbers("XX")
  end


  def test_can_ouput_possible_serial_numbers
    skip
    p = PatternGenerator.new
    assert_includes "AA1B2", p.possible_serial_numbers("XXNXN")
  end



end
