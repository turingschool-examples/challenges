class StringValidator
  attr_reader :opening, :closing

  OPEN_TO_CLOSE = {"(" => ")", "[" => "]", "{" => "}"}

  def initialize
    @opening = []
    @closing = []
  end

  def validate(input)
    input.chars.each do |char|
      opening << char if OPEN_TO_CLOSE.keys.include?(char)
      closing << OPEN_TO_CLOSE[char] if OPEN_TO_CLOSE[char]
    end
    opening.length == closing.length
  end
end
