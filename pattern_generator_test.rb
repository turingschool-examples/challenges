require 'minitest/autorun'
require 'minitest/pride'
require './pattern_generator'

class PatternGeneratorTest < Minitest::Test
  def setup
    @pg = PatternGenerator
  end

  def test_it_works_for_a_single_number_character_pattern
    result = @pg.generate_serial('N')

    assert_equal result[:patterns], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def test_it_gives_a_count_of_the_patterns_for_a_single_character_pattern
    result = @pg.generate_serial('N')

    assert_equal result[:count], 10
  end

  def test_it_works_for_a_single_character_letter_pattern
    result = @pg.generate_serial('X')

    assert_equal result[:patterns], ('A'..'Z').to_a
  end
end
