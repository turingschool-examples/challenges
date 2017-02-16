gem 'minitest', '>= 5.0.0'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/generator'
require 'pry'

class GeneratorTest < Minitest::Test

  def test_it_exists
    
    g = Generator.new
    assert g
  end

  def test_it_generates_a_single_letter
    
    g = Generator.new
    code = g.random_letters("X")

    assert_equal 1, code.length
    assert_equal String, code.class
  end

  def test_it_generates_five_letters
    
    g = Generator.new
    code = g.random_letters("XXXXX")

    assert_equal 5, code.length
    assert_equal String, code.class
  end

  def test_it_generates_a_letter_and_number
    
    g = Generator.new
    code = g.random_letters("XN")

    assert_equal 2, code.length
    assert_equal String, code.class
  end

  def test_it_generates_a_letter_number_combo
    
    g = Generator.new
    code = g.random_letters("XNXXN")

    assert_equal 5, code.length
    assert_equal String, code.class
  end

  def test_it_generates_all_combos_for_1_letter
    
    g = Generator.new
    pattern = "X"
    combos = g.all_combinations(pattern)

    assert_equal 26, combos.count
    assert_equal Array, combos.class
  end

  def test_it_generates_all_combos_for_2_letters

    g = Generator.new
    pattern = "XX"
    combos = g.all_combinations(pattern)

    assert_equal 676, combos.count
    assert_equal Array, combos.class
  end

  def test_it_generates_all_combos_for_1_letter_1_number

    g = Generator.new
    pattern = "XN"
    combos = g.all_combinations(pattern)

    assert_equal 260, combos.count
    assert_equal Array, combos.class
  end

  def test_it_counts_all_combos_for_2_letters

    g = Generator.new
    pattern = "XX"
    combos = g.combination_count(pattern)

    assert_equal 676, combos
  end

  def test_it_counts_all_combos_for_1_letter_1_number
    
    g = Generator.new
    pattern = "XN"
    combos = g.combination_count(pattern)

    assert_equal 260, combos
  end

  def test_it_generates_all_combos_for_5_letters
    
    g = Generator.new
    pattern = "XXXXX"
    combos = g.all_combinations(pattern)

    assert_equal 11881376, combos.count
    assert_equal Array, combos.class
  end

  def test_it_count_total_combos_for_5_letters
    
    g = Generator.new
    pattern = "XXXXX"
    combos = g.combination_count(pattern)

    assert_equal 11881376, combos
  end

end
