def bobble_sort(array)
  counter = array.length - 1
  loop do
    new_counter = 0
    counter.times do |i|
      if array[i - 1] > array[i]
        array[i - 1], array[i] = array[i], array[i - 1]
        new_counter = i
      end
    end

    counter = new_counter
    break if counter <= 1
  end
  array
end

print bobble_sort([4, 9, 6, 5, 3, 10, 11, 1, 2])
