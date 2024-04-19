def insertion_sort(array)
  for i in 1...array.length
    while i > 0 && array[i] < array[i - 1]
      array[i], array[i - 1] = array[i - 1], array[i]
      i -= 1
    end
  end

  array
end

p insertion_sort [3, 4, 5, 1, 2, 3, 9, 7]

p insertion_sort (0..20_000).to_a

p insertion_sort (0..20_000).to_a + [4, 5, 7, 8]
