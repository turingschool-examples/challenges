require 'minitest/autorun'
require './pattern_generator'

class PatternGeneratorTest < Minitest::Test
  def test_it_works_for_a_single_digit_serial
    pg = PatternGenerator.generate_serial('N')

    assert_equal pg[:patterns], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  end
end
