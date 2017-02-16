require 'pry'

class PatternMatcher
  attr_reader :serial
  
  def initialize
    @serial_bank = []
  end
  
  def serial_creator(pattern)
    result = serial_generator(pattern).join
    if @serial_bank.include?(result) == false
      @serial_bank.push(result)
    else
      serial_creator(pattern)
    end
  end
  
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