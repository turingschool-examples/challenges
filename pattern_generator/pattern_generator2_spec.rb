require 'minitest/autorun'
require 'minitest/pride'
require './pattern_generator2'
require 'pry'

class PatternTest < Minitest::Test

  def test_files_are_required
    g = Generator.new

    assert_equal g.class, Generator
  end

  def test_all_letters_returns_all_letters
    g = Generator.new
    result = g.all_letters
    letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    assert_equal result, letters
  end

  def test_all_numbers_returns_all_numbers
    g = Generator.new
    result = g.zero_to_nine
    numbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    assert_equal result, numbers
  end

  def test_it_can_generate_a_single_pattern
    g = Generator.new
    result = g.convert_pattern_to_chars('XXNXN')

    assert_equal ['AA0A0'], result
  end

  def test_it_can_generate_all_patterns
    g = Generator.new
    result = g.convert_pattern_to_chars('XXNXN')

    all_results = g.generate_all_patterns(result)
    assert_equal all_results.class, Array
    assert_equal all_results.length, 1757600
  end

end
