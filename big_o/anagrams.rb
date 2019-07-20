def first_anagram?(str1, str2)
  all_ana = []
  total = fact(str1.length)

  until all_ana.length == total
    new_word = str1.split("").shuffle!.join("")
    all_ana << new_word if !all_ana.include?(new_word)
  end

  all_ana.include?(str2)

end
def fact(n)
  return 1 if n == 0
  n * fact(n-1)
end

#p first_anagram?("gizmo", "sally")    #=> false

def second_anagram?(str1, str2)
  return false if str1.length != str2.length

  (0...str1.length).each do |i|
    index = str2.split("").find_index(str1[i])
    return false if index.nil? 
    str2.split("").delete_at(index)
  end

  true
end

# p second_anagram?("llll", "lll")
# p second_anagram?("elvis", "lives")

def third_anagram?(str1, str2)
  str1.split("").sort == str2.split("").sort
end
# p third_anagram?("llll", "lll")
# p third_anagram?("elvis", "lives")

def fourth_anagram?(str1, str2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  str1.each_char { |char| hash1[char] += 1 }
  str2.each_char { |char| hash2[char] += 1 }

  hash1 == hash2
end

p fourth_anagram?("llll", "lll")
p fourth_anagram?("elvis", "lives")