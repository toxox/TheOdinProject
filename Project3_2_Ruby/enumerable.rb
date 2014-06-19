module Enumerable
  def my_each
    for i in self
      yield(i)
    end
  end

  def my_each_with_index
    index = 0

    for i in self
      yield(i, index)
      index += 1
    end
  end

  def my_select
    arr = []
    self.my_each { |i| arr << i if yield(i) }
    arr
  end

  def my_all?
    self.my_each { |i| return false unless yield(i) }
    true
  end

  def my_any?
    self.my_each { |i| return true if yield(i) }
    false
  end

  def my_none?
    self.my_each { |i| return false if yield(i) }
    true
  end

  def my_count(obj = nil)
    count = 0

    self.my_each do |i|
      if block_given?
        count += 1 if yield(i)
      else
        if arg
          count += 1 if arg == i
        else
          return 0
        end
      end
    end

    count
  end

  def my_map(proc = nil)
    result = []

    if proc && block_given?
      self.my_each { |el| result << proc.call(yield(el)) }
    elsif proc && !block_given?
      self.my_each { |el| result << proc.call(el) }
    elsif proc.nil? && block_given?
      self.my_each { |el| result << yield(el) }
    else
      self
    end

    result
  end

  def my_inject(initial = nil)
    initial = self.first if initial.nil?
    memo = initial
    self.my_each { |element| memo = yield(memo, element) }
    memo
  end

end

def multiply_els(arr)
  arr.my_inject(1) {|prod, el| prod * el }
end