require 'pry'

class PatternMatcher
  attr_reader :serial
  
  def serial_generator(pattern)
    @serial = []
    pattern.upcase.chars.each do |character|
      if character == "X"
        @serial.push(random_letter)
      elsif character == "N"
        @serial.push(random_number)
      else
        puts "Error."
      end
      @serial
    end
    @serial
  end
  
  def random_number
    numbers = (0..9).to_a
    selector = rand(8)
    numbers[selector]
  end
  
  def random_letter
    letters = ("A".."Z").to_a
    selector = rand(25)
    letters[selector]
  end
  
end