require 'byebug'
require 'set'

def brute_force(arr, target)
  arr.each_with_index do |el, idx|
    second_idx = idx+1
    while second_idx<arr.length
      return true if el+arr[second_idx]==target
      second_idx += 1
    end
  end
  false
end


def okay_two_sum?(arr, target)
  arr = arr.sort
  arr.each do |el|
    second_target = target-el
    return true if binary_search(arr, second_target)
  end
  false
end


def binary_search(arr, target)
  low = 0
  high = arr.length-1

  until low>high
    mid = (low+high)/2
    return true if arr[mid]==target
    if arr[mid]>target
      low = mid+1
    else
      high = mid-1
    end
  end
  false
end

def hash_sum(arr, target)
  #byebug
  set = Set.new
  arr.each do |el|
    second_target = target - el
    return true if set.include?(second_target)
    set.add(el)
  end
  false
end
