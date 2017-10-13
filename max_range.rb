def naive_range(array, range)
  current_max_range = nil
  array.each_cons(range) do |sub_arr|
    max = sub_arr.max
    min = sub_arr.min
    current_max_range = max - min if current_max_range.nil? || max - min > current_max_range
  end

  current_max_range
end

def optomized_range()
end


class MinMaxStackQueue

  def initialize
    @max = nil
    @min = nil
    @stack = []
  end

  def enqueue(item)
    @max = item if @max.nil? || item > @max
    @min = item if @min.nil? || item < @max
    @stack.push(item)
  end

  def dequeue
    @stack.shift
  end

  def size
    @stack.length
  end

  def empty?
    @stack.empty?
  end


end
