class StringValidator
  CLOSERS = {"[" => "]", "(" => ")", "{" => "}"}

  def validate(input)
    chars = input.split('')
    chars.each do |char|
      match = chars.find { |char| char == CLOSERS[char] }
    end
  end

end

v = StringValidator.new
v.validate("[]")

# get first char
# loop through remaining chars and look for closing char
# if closing char found, remove first and closing char from array
# call method again with new array
# if array has no characters left, return true, else return false
