def partition(array, first, last)
  pivot = array[last]
  partition_index = first

  (first..last-1).each do |i|
    if array[i] <= pivot
      array[i], array[partition_index] = array[partition_index], array[i]
      partition_index += 1
    end
  end

  array[partition_index], array[last] = array[last], array[partition_index]

  partition_index
end

def advanced_quicksort(array, first = 0, last = array.length-1)
  return unless first < last

  partition_index = partition(array, first, last)

  puts array.to_s

  advanced_quicksort(array, first, partition_index - 1)
  advanced_quicksort(array, partition_index + 1, last)
end

advanced_quicksort([1, 3, 9, 8, 2, 7, 5])
# => 1 3 2 5 9 7 8
#    1 2 3 5 9 7 8
#    1 2 3 5 7 8 9
