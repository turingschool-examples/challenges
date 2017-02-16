class PatternGenerator

  def self.generate_serial(pattern)
    if pattern == 'N'
      { patterns: [0,1,2,3,4,5,6,7,8,9], count: 10 }
    elsif pattern == 'X'
      { patterns: ('A'..'Z').to_a, count: 26}
    end
  end

end
