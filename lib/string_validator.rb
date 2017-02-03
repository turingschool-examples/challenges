require 'pry'

class StringValidator
  def validate(string)
    stack = []
    string.split('').each do |character|
      if library.values.include?(character)
        stack << character
      elsif library[character]
        stack.pop
      end
    end

    if stack == []
      return true
    else
      return false
    end
  end

  def library
    {')' => '(', '}' => '{', ']' => '['}
  end
end
