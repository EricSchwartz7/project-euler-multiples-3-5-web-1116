class Multiples

  attr_accessor :limit

  def initialize(limit)
    @limit = limit
  end

  def collect_multiples
    num = 1
    array = []
    while num < @limit
      if num % 3 == 0 || num % 5 == 0
        array << num
      end
      num += 1
    end
    array
  end

  # def sum_multiples
  #   total = 0
  #   collect_multiples.inject {|num| total += num}
  #   total
  # end
  def sum_multiples
    collect_multiples.reduce(:+)
  end

end
