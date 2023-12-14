require 'pry'
class PatternGenerator

  def possible_serial_numbers(pattern)
    pattern = pattern.chars
    total = (pattern.count("N") * 10)*(pattern.count("X") * 26)
    final = []
    letters = [*('A'..'Z')]
    numbers = [*(1..9)]
    random_number = Random.rand(0..9)
    random_letter = letters[Random.rand(0..26)]
    until final.count == total
      temp = []
      pattern.each do |l|
        if l == "N"
          temp << random_number
        elsif l == "X"
          temp << random_letter
        end
        final = temp.join("")
      end
    end
  end

end

# #
# ##
# ###
# in JS
