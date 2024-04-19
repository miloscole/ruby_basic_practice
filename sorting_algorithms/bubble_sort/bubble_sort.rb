def bubble_sort(array)
  n = array.length

  (n - 1).downto(0) do |j|
    swapped = false
    for i in 0...j
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    break unless swapped
  end

  array
end

p bubble_sort [3, 4, 5, 1, 2, 3, 9, 7]

p bubble_sort (0..20_000).to_a

p bubble_sort (0..20_000).to_a + [4, 5, 7, 8]
