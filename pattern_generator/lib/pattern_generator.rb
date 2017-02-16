class PatternGenerator

  def initialize
    @letters = ["A", "B", "C", "D", "E", "F", "G",
                "H", "J", "K", "L", "M", "N", "P",
                "Q", "R", "S", "T", "U", "V", "W",
                "X", "Y", "Z"]
    @pattern = ""
  end

  def new_pattern
    @pattern += random_capital_letter
    @pattern += random_capital_letter
    @pattern += random_selector.to_s
    @pattern += random_capital_letter
    @pattern += random_selector.to_s
  end

  def random_capital_letter
    @letters[random_selector]
  end

  def random_selector
    Random.rand(2..9)
  end

end
