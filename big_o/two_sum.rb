def bad_two_sum?(arr, target_sum)

  (0...arr.length-1).each do |idx1|
    (idx1+1...arr.length-1).each do |idx2|
      return true if arr[idx1] + arr[idx2] == target_sum
    end
  end
  false

end

# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false

def sorting_sum(arr, target_sum)
  arr.sort!
  return false if target_sum > (arr.last * 2)
  return false if target_sum < arr.first

  mid = target_sum / 2
  p arr
  smaller = arr.select { |num| num < mid }
  larger = arr.select { |num| num >= mid }

  (0...smaller.length).each do |idx1|
    (0...larger.length).each do |idx2|
      return true if smaller[idx1] + larger[idx2] == target_sum
    end
  end
  
  false
end
arr = [0, 1, 5, 7]
p sorting_sum(arr, 6) # => should be true
p sorting_sum(arr, 10) # => should be false

def hash_map(arr, target_sum)
  opposites = {}

  (0...arr.length).each do |i|
    opp = target_sum - arr[i]
    if opposites.has_key?(opp)
      return true
    else
      opposites[opp] = arr[i]
    end
  end
  false
  # p opposites
end

# arr = [0, 1, 5, 7]
# p hash_map(arr, 6) # => should be true
# p hash_map(arr, 10) # => should be false
