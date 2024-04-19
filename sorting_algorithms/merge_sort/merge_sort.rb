def merge_sort(array)
  return array if array.length == 1
  middle_index = array.length / 2

  left_half = array[0...middle_index]
  right_half = array[middle_index..-1]

  left_sorted = merge_sort(left_half)
  right_sorted = merge_sort(right_half)

  merge(left_sorted, right_sorted)
end

def merge(first_arr, second_arr)
  merged_array = []

  while first_arr.length > 0 && second_arr.length > 0
    if first_arr.first <= second_arr.first
      merged_array << first_arr.shift
    else
      merged_array << second_arr.shift
    end
  end

  merged_array + first_arr + second_arr
end

p merge_sort [3, 4, 5, 1, 2, 3, 9, 7]

p merge_sort (0..20_000).to_a

p merge_sort (0..20_000).to_a + [4, 5, 7, 8]
