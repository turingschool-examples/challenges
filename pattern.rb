class PatternMatcher
  
  def random_number
    numbers = (0..9).to_a
    selector = rand(8)
    numbers[selector]
  end
  
end