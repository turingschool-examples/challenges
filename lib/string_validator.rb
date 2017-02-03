class StringValidator

  HASH = {"(" => ")", "[" => "]", "{" => "}"}

  def validate(input)
    opening = []
    closing = []

    chars = input.chars
    chars.each do |char|
      opening << char if HASH.keys.include?(char)
      closing << HASH[char] if HASH[char]
    end
    opening.length == closing.length
  end
end
