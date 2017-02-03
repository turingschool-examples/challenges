class StringValidator

  OPEN_TO_CLOSE = {"(" => ")", "[" => "]", "{" => "}"}

  def validate(input)
    # require 'pry'; binding.pry
    # input.include?("[") && input.include?("]")
    chars = input.chars
    chars.include?(OPEN_TO_CLOSE[chars.first])
  end
end
