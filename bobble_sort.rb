def bobble_sort(array)
  counter = array.length
  begin
    new_counter = 0
    for i in (1...counter)
      if array[i - 1] > array[i]
        array[i - 1], array[i] = array[i], array[i - 1]
        new_counter = i
      end
    end    
    counter = new_counter
  end until counter <= 1
  return array
end

print bobble_sort([4, 9, 6, 5, 3, 10, 11, 1, 2])
