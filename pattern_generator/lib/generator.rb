class Generator
  attr_accessor :pattern_count

  LETTERS = Array('A'..'Z')
  NUMBERS = Array(0..9)

  def initialize
    @pattern_count = 1
    @serial_number = ''
  end

  def random_letters(pattern)

    pattern.each_char do |char|
      if char == "X"
        letter = LETTERS.sample
        pattern_counter(26)
        @serial_number << letter
      elsif char == "N"
        number = NUMBERS.sample
        pattern_counter(10)
        @serial_number << number
      end
    end
    @serial_number
  end

  def pattern_counter(multiplier)
    @pattern_count = @pattern_count*multiplier
  end

  def all_combinations(pattern)
    LETTERS.repeated_permutation(pattern.length).to_a
  end

  def combination_count(pattern)
    random_letters(pattern)
    @pattern_count
  end

end
