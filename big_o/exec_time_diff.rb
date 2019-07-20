def my_min(arr)

  sorted = false
  while !sorted
    sorted = true
    (0...(arr.length-1)).each do |idx|
      if arr[idx] > arr[idx+1]
        arr[idx], arr[idx+1] = arr[idx+1], arr[idx]
        sorted = false
      end
    end
  end
  arr[0]
end
list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5

def my_min_2(arr)
  min_val = arr.sample

  (0...arr.length-1).each do |i|
    min_val = arr[i] if arr[i] < min_val
  end
  min_val
end

p my_min_2(list) 

def largest_sum(arr)
  sums = []

  arr.each_with_index do |num, idx|
    jdx = idx + 1
    while jdx < arr.length
      sums << arr[idx..jdx].sum
      jdx += 1
    end
  end
  sums.max
end

list = [5, 3, -7]
p largest_sum(list)

def largest_sum_2(arr)
  sum = 0
  arr.each do |num|
    if (num + sum) > sum
      sum += num
    end
  end
  sum
end

p largest_sum_2(list)