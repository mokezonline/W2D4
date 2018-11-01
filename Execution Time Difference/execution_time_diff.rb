require 'byebug'

#Since we have a nested loop, at least O(n^2)
def phase1_my_min(list)
  list.each_with_index do |num1, idx1|
    current_lowest = true
    list.each_with_index do |num2, idx2|
      next if idx1 == idx2
      current_lowest = false if num2 < num1
    end
    return num1 if current_lowest == true
  end
end

#Improved to O(n) because we only look at the entire list once
def phase2_my_min(list)
  min_value = list[0]

  list[1..-1].each do |num|
    min_value = num if min_value > num
  end

  min_value
end

#Since we have a nested loop, at least O(n^2)
def phase1_largest_contig(list)
  result = []
  list.each_with_index do |num1, idx1|
    (idx1...list.length).each do |idx2|
      result << list[idx1..idx2]
    end
  end
  result.map! do |subarr|
    subarr.reduce(:+)
  end
  result.max
end

def phaseII_largest_contig(list)
  largest_sum = list[0]
  current_sum = list[0]
  i = 1

  # debugger
  while i < list.length
    current_sum += list[i]
      if current_sum < 0
        i += 1
        current_sum = list[i]
      end

    i += 1
    largest_sum = current_sum if current_sum > largest_sum
  end

  largest_sum
end

if $PROGRAM_NAME == __FILE__
  a = [2, 3, -6, 7, -6, 7]
  p phaseII_largest_contig(a)
end
