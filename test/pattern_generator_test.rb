require "minitest/autorun"
require "minitest/nyan_cat"
require "./lib/pattern_generator"

class PatternGeneratorTest < Minitest::Test

  def setup
    @pg = PatternGenerator
  end

  def test_it_can_generate_a_random_5_char_string
    new_pattern = @pg.generate_pattern
    refute_equal new_pattern, "XXNXN"
  end

  def test_it_can_kick_out_duplicate_occurances
    results = []
    5.times do
      results << @pg.generate_pattern
    end
    assert results.uniq.count > 4
  end

  def test_I_can_pass_my_own_format
    results = []
    5.times do
      results << @pg.generate_pattern("AB3F9")
    end
    assert results.uniq.count > 4
  end

end
