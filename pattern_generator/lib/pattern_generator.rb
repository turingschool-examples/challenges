class PatternGenerator

  def initialize(pattern)
    @pattern = pattern.chars
    @letters = ["A", "B", "C", "D", "E", "F", "G",
                "H", "J", "K", "L", "M", "N", "P",
                "Q", "R", "S", "T", "U", "V", "W",
                "X", "Y", "Z"]
    @serials = {}
    @total = (10**pattern.count("N"))*(26**pattern.count("X"))
    @count = 0
  end


  def find_serial
    serial = @pattern.reduce("") do |result, char_type|
      result += random_capital_letter if char_type == "X"
      result += random_number.to_s    if char_type == "N"
      result
    end
  end

  def random_capital_letter
    @letters[random_selector]
  end

  def random_number
    Random.rand(2..9)
  end

  def random_selector
    Random.rand(0..23)
  end

  def all_serials
    until @count != @total
      new_serial = find_serial
      if !@serials.has_key?(new_serial)
        @serials[new_serial] = 1
        @count += 1
      end
    end
    @serials
  end

  # def all_serials
  #   # first char  all positions 0 - 23 rest 2
  #   # second char all positions 1 - 23 rest A/2
  #   # third char all numbers 3-9 rest A/2
  #   # fourth char all positions 1 - 23 rest A/2
  #   # fifth char all numbers 3-9 rest A/2
  #   all_for_first_char
  # end
  #
  # def all_for_first_char
  #
  # end

end
