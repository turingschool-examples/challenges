require 'pry'
class PatternGenerator
  NUMBERS = (0..9).to_a
  LETTERS = ("A".."Z").to_a

  def generate(pattern)
    pattern_array = pattern.split(//)
    final = []
    total = (10**pattern_array.count("N"))*(26**pattern_array.count("X"))

    until final.count == total
      temp_array = []
      pattern_array.each do |char|
        if char == "N"
          temp_array << random_number
        elsif char == "X"
          temp_array << LETTERS[random_selector]
        end
      end
      set = temp_array.join("")
      if !final.include?(set)
        final << set
      end
    end
    final.uniq
  end

  def random_number
    Random.rand(0..9)
  end
  def random_selector
    Random.rand(0..25)
  end


end
