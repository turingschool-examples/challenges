require 'pry'

class PatternGenerator

  def self.generate_pattern(string = "XXNXN")
    pattern = string.chars
    convert_charecters(pattern)
  end

  def self.convert_charecters(pattern)
    new_pattern = pattern.each_with_index.map do |charecter, index|
      if index == 0 || index == 1 || index == 3
        charecter = (65 + rand(26)).chr
      else
        charecter = rand(0..9)
      end
    end
    all_strings = convert_to_string(new_pattern)
    serial_number = all_strings.join
    unique?(serial_number)
  end

  def self.convert_to_string(pattern)
    pattern.map {|charecter| charecter.to_s}
  end

  def self.unique?(new_number)
    serial_numbers = Array.new
    if serial_numbers.include?(new_number)
      generate_pattern
    else
      serial_numbers << new_number
    end
  end

end
