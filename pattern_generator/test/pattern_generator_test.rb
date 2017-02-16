require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/pattern_generator'

class PatternGeneratorTest < Minitest::Test

  def test_it_can_generate_a_pattern
    pattern_generator = PatternGenerator.new
    pattern = pattern_generator.new_pattern
    assert_equal 5, pattern.length
  end


end
