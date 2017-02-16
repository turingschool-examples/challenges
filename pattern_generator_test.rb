require 'minitest/autorun'
require 'minitest/pride'
require './pattern_generator'

class PatternGeneratorTest < Minitest::Test
  def setup
    @pg = PatternGenerator
  end
  def test_it_works_for_a_single_character_serial_number
    result = @pg.generate_serial('N')

    assert_equal result[:patterns], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def test_it_works_for_a_single_character_letter
    result = @pg.generate_serial('X')

    assert_equal result[:patterns], ('A'..'Z').to_a
  end
end
