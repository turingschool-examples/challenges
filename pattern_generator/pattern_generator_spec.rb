require 'minitest/autorun'
require 'minitest/pride'
require './pattern_generator'
require 'pry'

class PatternTest < Minitest::Test

  def test_files_are_required
    g = Generator.new

    assert_equal g.class, Generator
  end

  def test_it_can_generate_a_single_pattern
    g = Generator.new
    pattern = g.generate_one_pattern('XXNXN')
    assert_equal pattern[0].to_i, 0
    refute_equal pattern[-1].to_i, 0
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

  def test_it_can_generate_all_patterns
    g = Generator.new
    result = g.generate_all_patterns('XXNXN')

    assert_equal result.class, Array
    assert_equal result.count, 1757600
    assert_equal result.uniq.length, result.length
  end

  def test_number_of_results_return_correct_number
    g = Generator.new
    result = g.number_of_results('XXNXN')
    assert_equal result, 1757600
  end
end
