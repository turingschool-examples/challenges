require "pry"
class StringValidator
  def validate(string)
    paren_open = false
    paren_count = 0

    string.chars.each do |char|
      if char == "("
        paren_open == true
        paren_count = paren_count + 1
      elsif char ==")" && paren_open == true
        paren_count = paren_count - 1
        paren_open = false
      end
    end
       paren_count == 0 && paren_open == false ? !paren_open : paren_open
  end
end
