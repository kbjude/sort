def bobble_sort(array)
  count = array.length
  loop do
    new_count = 0
    (1...count).each do |i|
      if array[i - 1] > array[i]
        array[i - 1], array[i] = array[i], array[i - 1]
        new_count = i
      end
    end

    count = new_count
    break if count <= 1
  end
  array
end

print bobble_sort([4, 9, 6, 5, 3, 10, 11, 1, 2])
