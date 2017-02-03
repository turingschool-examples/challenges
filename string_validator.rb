class StringValidator
  def pairings
    {
      "(" => ")",
      "[" => "]",
      "{" => "}",
    }
  end

  def validate(target)
    # consider just "()" and ")("
    if target.length > 0
      tokens = target.chars
      if pairings[tokens[0]] == tokens[1]
        true
      else
        false
      end
    else
      true
    end
  end
end
