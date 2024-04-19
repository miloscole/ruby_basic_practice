def selection_sort(array)
  (array.length - 1).times do |j|
    min_index = j
    for i in (j + 1)...array.length
      if array[i] < array[min_index]
        min_index = i
      end
    end
    array[j], array[min_index] = array[min_index], array[j] unless min_index == j
  end
  array
end

p selection_sort [3, 4, 5, 1, 2, 3, 9, 7]

p selection_sort (0..20_000).to_a

p selection_sort (0..20_000).to_a + [4, 5, 7, 8]
