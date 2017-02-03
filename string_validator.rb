class StringValidator
  def validate(target)
    # consider just "()" and ")("
    if target.length > 0
      tokens = target.chars
      if tokens[0] == "(" && tokens[1] == ")"
        true
      else
        false
      end
    else
      true
    end
  end
end
