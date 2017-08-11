
def two_sum1(array, target)
  array.length.times do |i|
    (array.length - i - 1).times do |j|
      return true if array[i] + array[j + i + 1] == target
    end
  end
  false
end

def two_sum2(array, target)
  array = array.sort
  i, j = 0, array.length - 1

  while i < j
    case (array[i] + array[j]) <=> target
    when 0
      return true
    when -1
      i += 1
    when 1
      j -= 1
    end
  end
  false
end

def two_sum3(array, target)
  array = array.sort
  array.each_with_index do |el, i|
    search_result = array.bsearch { |el2| target - el - el2 }
    next unless search_result
    return [array[i - 1], array[i + 1]].include?(el) if search_result == el
    return true
  end
  false
end

def two_sum4(array, target)
  complements = {}

  array.each do |el|
    return true if complements[target - el]
    complements[el] = true
  end
  false
end
