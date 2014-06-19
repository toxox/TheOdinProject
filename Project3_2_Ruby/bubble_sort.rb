def bubble_sort(array)
  return array if array.size <= 1

  sorted = false
  until sorted
    sorted = true
    0.upto(array.size - 2) do |i|
      if array[i] > array[i + 1]
        sorted = false
        array[i], array[i + 1] = array[i + 1], array[i]
      end
    end
  end
  p array
end

def bubble_sort_by(array)
  return array if array.size <= 1

  sorted = false
  until sorted
    sorted = true
    0.upto(array.size - 2) do |i|
      if yield(array[i], array[i + 1]) < 0
        sorted = false
        array[i], array[i + 1] = array[i + 1], array[i]
      end
    end
  end
  p array


end

bubble_sort([4,3,78,2,0,2])

bubble_sort_by(["hi","hello","hey"]) do |left,right|
  right.length - left.length
end