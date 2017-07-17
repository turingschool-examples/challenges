require 'pry'

class Generator
  def initialize
    @all_patterns = []
  end

  def generate_one_pattern(pattern)
    result = ""
    pattern.each_char do |char|
      if char == 'X'
        result += all_letters.sample
      else
        result += zero_to_nine.sample
      end
    end
    result
  end

  def number_of_results(pattern)
    number = 1
    pattern.each_char do |char|
      if char == 'X'
        number = number * 26
      else
        number = number * 10
      end
    end
    number
  end

  def generate_all_patterns(pattern)
    until @all_patterns.length == number_of_results(pattern)
      one_pattern = generate_one_pattern(pattern)
      unless @all_patterns.include?(one_pattern)
        puts "Added pattern: #{one_pattern}!"
        @all_patterns  << one_pattern
      end
    end
    @all_patterns
  end

  def all_letters
    ('A'..'Z').to_a
  end

  def zero_to_nine
    ("0".."9").to_a
  end

end
