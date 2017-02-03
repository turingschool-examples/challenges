class StringValidator

  def validate(string)
    valid_brackets = []
    brackets = { '{' => '}', '[' => ']', '(' => ')' }
    string.each_char do |char|
      valid_brackets << char if brackets.key?(char)
      return false if brackets.key(char) && brackets.key(char) != valid_brackets.pop
    end
    valid_brackets.empty?
  end

end
