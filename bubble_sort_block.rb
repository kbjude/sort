def bubble_sort_by(array)
    count = array.length
    loop do
      new_count = 0
      (1...count).each do |i|
        compare = yield(array[i-1], array[i])
        if compare > 0
          array[i - 1], array[i] = array[i], array[i - 1]
          new_count = i
        end
      end
      count = new_count
      break if count <= 1
    end
    array
  end
  
  bubble_sort_by([3,8,3,4,5]) do |left,right|
    left - right
  end