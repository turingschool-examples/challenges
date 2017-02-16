require 'securerandom'
require 'pry'

class PatternMatcher
  
  def initialize
    @serial_bank = []
  end
  
  def serial_creator(pattern)
    threads = []
    while @serial_bank.count <= 1757600
      result = serial_generator(pattern)
      @serial_bank.push(result.join).uniq!
    end
    @serial_bank
  end
  
  def serial_generator(pattern)
    @serial = []
    pattern.upcase.chars.each do |character|
      if character == "X"
        @serial.push(random_letter)
      elsif character == "N"
        @serial.push(random_number)
      end
      @serial
    end
    @serial
  end
  
  def random_number
    number = SecureRandom.random_number(0..9)
  end
  
  def random_letter
    letter = ("A".."Z").to_a.sample
  end
  
end