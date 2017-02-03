class StringValidator
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

  def validate(target)
    true if target.empty?
    tokens = target.chars
    matched_pair?(tokens[0], tokens[1])
  end
end
