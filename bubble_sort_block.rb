
def bubble_sort(array)
    n = array.length
    loop do
        swampped = false
        (n-1).times do |i|
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
                swampped = true
            end
        end
        break if not swampped
    end
    yield
end

array = [2,1,3,5,2,6]