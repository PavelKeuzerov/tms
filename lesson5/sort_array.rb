#сортировка масива

array = [5, 27, 3, 11, 43, 1, 17, 9, 12, 8, 56, 22, 13, 10]
n = array.length
loop do
  swapped = false

  (n - 1).times do |i|
    if array[i] > array[i + 1]
      array[i], array[i + 1] = array[i + 1], array[i]
      swapped = true
    end
  end

  break unless swapped
end

p array
