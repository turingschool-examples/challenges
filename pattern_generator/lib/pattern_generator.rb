class PatternGenerator

  def initialize(pattern)
    @pattern = pattern.chars
    @letters = ["A", "B", "C", "D", "E", "F", "G",
                "H", "J", "K", "L", "M", "N", "P",
                "Q", "R", "S", "T", "U", "V", "W",
                "X", "Y", "Z"]
  end

  def find_serials
    serial = @pattern.reduce("") do |result, char_type|
      result += random_capital_letter if char_type == "X"
      result += random_number.to_s if char_type == "N"
      result
    end
  end

  def new_serial
    serial = ""
    serial += random_capital_letter
    serial += random_capital_letter
    serial += random_number.to_s
    serial += random_capital_letter
    serial += random_number.to_s
  end

  def random_capital_letter
    @letters[random_number]
  end

  def random_number
    Random.rand(2..9)
  end

  def all_patterns

  end

end
