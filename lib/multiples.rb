require 'pry'

def collect_multiples(limit)
  num = 1
  array = []
  while num < limit
    if num % 3 == 0 || num % 5 == 0
      array << num
    end
    num += 1
  end
  array
end

def sum_multiples(limit)
  total = 0
  collect_multiples(limit).each {|num| total += num}
  total
end
