class PatternGenerator

  def self.generate_serial(pattern)
    if pattern == 'N'
      { patterns: ['0','1','2','3','4','5','6','7','8','9'], count: 10 }
    elsif pattern == 'X'
      { patterns: ('A'..'Z').to_a, count: 26}
    end
  end

  def self.generate_serial(pattern)
    all_patterns = []
    pattern.split.each do |letter|
      if pattern == 'N'
        #do some crazy building here
      elsif pattern == 'X'
        #do some more crazy building here
      end
    end
  end

  def letter_library
  end

  def number_library
  end

end
