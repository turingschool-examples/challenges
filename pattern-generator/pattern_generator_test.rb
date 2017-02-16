require 'minitest/autorun'
require 'minitest/pride'
require_relative 'pattern_generator'

class PatternGeneratorTest < Minitest::Test
  def test_it_generates_serial_numbers
    pg = PatternGenerator.new
    result = pg.generate("XN")
    assert_includes(result, "A1")
    assert_includes(result, "C8")
    assert_includes(result, "Z9")
  end

  def test_it_generates_serial_numbers
    pg = PatternGenerator.new
    result = pg.generate("XNX")
    assert_includes(result, "A1A")
    assert_includes(result, "C8G")
    assert_includes(result, "Z9P")
  end
end
