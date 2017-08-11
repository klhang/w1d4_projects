
def mymin1(list)
  min = 0
  list.each do |num1|
    dup = list.dup
    dup.delete(num1)
    min = num1 if dup.all? { |num2| num2 > num1 }
  end
  min
end


def mymin2(list)
  list.each_with_index do |num1, i|
    min = true
    list.each_with_index do |num2, j|
      next if i == j
      min = false if num2 < num1
    end
   return num1
  end
end


def mymin3(list)
  min = list.first
  list.each { |num| min = num if num < min }
  min
end


def largest_subsum1(array)
  result = []
  array.each_index do |i|
    (idx1..array.length - 1).each do |j|
      result << array[i..j]
    end
  end

  resu.map { |sub| sub.inject(:+) }.max
end
