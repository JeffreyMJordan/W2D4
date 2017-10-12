def my_long_min(array)
  array.each do |el|
    smallest = true
    array.each do |el_two|
      smallest = false if el_two < el
    end
    return el if smallest
  end
end
#
# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_long_min(list)  # =>  -5


def my_min(array)
  min = array.first
  array.each {|el| min = el if min > el}
  min
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5


def long_subarrays(arr)
  res =[]
  window = arr.length
  while window>=1
    idx = 0
    while idx+window<=arr.length
      sub_arr = arr.slice(idx, window)
      p sub_arr
      res << sub_arr
      idx += 1
    end
    window -= 1
  end
  res.map{|el| el.inject(0){|acc, el2| acc+el2}}.sort.last
end



def subarrays_max(arr)
  max_sum = -1.0 / 0
  current_sum = 0
  arr.each do |el|
    current_sum += el
    max_sum = current_sum if current_sum > max_sum
    current_sum = 0 if current_sum < 0
  end
  max_sum
end

list = [2, 3, -6, 7, -6, 7]
p subarrays_max(list) # => 8 (from [7, -6, 7])
list = [-5, -1, -3]
p subarrays_max(list) # => -1 (from [-1])
