class StringValidator
  attr_reader :token_stack

  def initialize
    @token_stack = []
  end

  def pairings
    {
      "(" => ")",
      "[" => "]",
      "{" => "}",
    }
  end

  def matched_pair?(t1, t2)
    pairings[t1] == t2
  end

  def left?(token)
    pairings.keys.include?(token)
  end

  def right?(token)
    pairings.values.include?(token)
  end

  def validate(target)
    answer = pairs_match?(target) && token_stack.empty?
    token_stack.clear
    return answer
  end

  def pairs_match?(input)
    input.chars.all? do |token|
      if left?(token)
        token_stack.push(token)
      elsif right?(token)
        left = token_stack.pop
        matched_pair?(left, token)
      end
    end
  end
end
