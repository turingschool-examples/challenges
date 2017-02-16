require 'pry'
class PatternGenerator

  attr_reader :letters, :numbers, :all

  def initialize
    @letters = ("A".."H").to_a + ("J".."N").to_a + ("P".."Z").to_a
    @numbers = ("2".."9").to_a
    @all = []
  end

  def create_all_options
    first = @letters
    second = @letters
    third = @numbers
    fourth = @letters
    fifth = @numbers

    first.each do |one|
      second.each do |two|
        third.each  do |three|
          fourth.each do |four|
            fifth.each do |five|
              @all << [one,two,three,four,five].join
            end
          end
        end
      end
    end
    @all.count
  end

  def get_a_random_one
    @all = @all.shuffle
    @all.pop
  end


end
