class Generator


  def random_letters(pattern)
    letters = Array('A'..'Z')
    numbers = Array(0..9)
    serial_number = []

    pattern.each_char do |char|
      if char == "X"
        letter = letters.sample
        serial_number << letter
      elsif char == "N"
        number = numbers.sample
        serial_number << number
      end
    end
    serial_number.join
  end

end
