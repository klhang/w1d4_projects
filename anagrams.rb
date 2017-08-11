
def first_anagram?(str1, str2)
  helperF(str1).include?(str2)
end

def helperF(string)
  return [string] if string.length <= 1
  prev = helperF(string[0...-1])
  result = []

  prev.each do |anagram|
    (0..anagram.length).each do |i|
      result << anagram.dup.insert(i, string[-1])
    end
  end
  result
end

def second_anagram?(str1, str2)
  arr1, arr2 = str1.split(''), str2.split('')

  arr1.each do |letter|
    idx1 = arr2.index(letter)
    return false unless idx1
    arr2.delete_at(idx1)
  end
  arr2.empty?
end

def third_anagram?(str1, str2)
  sorted = [str1, str2].map do |str|
    str.split('').sort.join
  end
  sorted.first == sorted.last
end

def fourth_anagram?(str1, str2)

end
