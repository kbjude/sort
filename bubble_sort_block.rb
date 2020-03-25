def bubble_sort_by(array)
    n = array.length - 1
    n.times do
      array.each_with_index do |i, x|
        next_item = array[x + 1]
        next if x == n
        block_given?
        col = yield(i, next_item)
        if col.positive?
          arr[x] = next_item
          arr[x + 1] = i
        end
      end
    end
    arr
  end