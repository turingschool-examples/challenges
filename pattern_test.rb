require './pattern'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class PatternMatcherTest < Minitest::Test
  def setup
    @p = PatternMatcher.new
  end
  
  def test_that_pattern_matcher_exists
    assert_equal PatternMatcher, @p.class
  end
  
  def test_that_random_numbers_are_sort_of_generated
    number = @p.random_number
    assert_equal Fixnum, number.class
  end
  
  def test_that_random_letters_are_sort_of_generated
    letter = @p.random_letter
    assert_equal String, letter.class
  end

  def test_that_the_matcher_outputs_the_right_thing_for_X
    serial = @p.serial_generator("X")
    refute_equal Fixnum, serial[0].class
  end
  
  def test_that_the_matcher_outputs_the_right_thing_for_N
    serial = @p.serial_generator("N")
    assert_equal Fixnum, serial[0].class
  end
  
  def test_that_the_matcher_outputs_the_right_thing_for_NX
    serial = @p.serial_generator("NX")
    assert_equal Fixnum, serial[0].class
    refute_equal Fixnum, serial[1].class
  end

  def test_that_the_matcher_outputs_the_right_thing_for_NXN
    serial = @p.serial_generator("NXN")
    assert_equal Fixnum, serial[0].class
    refute_equal Fixnum, serial[1].class
    assert_equal Fixnum, serial[2].class
  end

  def test_that_the_matcher_outputs_the_right_thing_for_NXNX
    serial = @p.serial_generator("NXNX")
    assert_equal Fixnum, serial[0].class
    refute_equal Fixnum, serial[1].class
    assert_equal Fixnum, serial[2].class
    refute_equal Fixnum, serial[3].class
  end

  def test_that_the_matcher_outputs_the_right_thing_for_NXNXN
    serial = @p.serial_generator("NXNXN")
    assert_equal Fixnum, serial[0].class
    refute_equal Fixnum, serial[1].class
    assert_equal Fixnum, serial[2].class
    refute_equal Fixnum, serial[3].class
    assert_equal Fixnum, serial[4].class
  end
    
  def test_that_serial_creator_creates_the_right_number_of_things
    all_possible_combos = @p.serial_creator("XXNXN")
    assert_equal 1757600, all_possible_combos.count
  end
  
  
end