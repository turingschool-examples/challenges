require 'pry'

class Generator
  def initialize
    @final = []
    @current_number = 0
  end

  def all_letters
    ('A'..'Z').to_a
  end

  def zero_to_nine
    ("0".."9").to_a
  end

  def convert_pattern_to_chars(pattern)
    result = ""
    pattern.each_char do |char|
      if char == 'X'
        result += 'A'
      else
        result += '0'
      end
    end
    @final << result
  end

  def generate_all_patterns(basic_pattern)
    @current_number = basic_pattern

    [0,1,2,3,4].each do |num|
      @result << @current_number[num].next
    end

  end

end
