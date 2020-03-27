def bubble_sort_by(array)
  count = array.length
  loop do
    new_count = 0
    (1...count).each do |i|
      compare = yield(array[i - 1], array[i])
      if compare.positive?
        array[i - 1], array[i] = array[i], array[i - 1]
        new_count = i
      end
    end
    count = new_count
    break if count <= 1
  end
  array
end

s_array = bubble_sort_by(%w[hey! hello driving run jump]) do |left, right|
  left.length - right.length
end

print s_array
