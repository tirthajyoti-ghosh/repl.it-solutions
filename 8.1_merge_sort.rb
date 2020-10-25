def merge_sort(array1, array2)
  merged_array = []
  i = 0
  j = 0

  while i < array1.length && j < array2.length
    if array1[i] <= array2[j]
      merged_array << array1[i]
      i += 1
    else
      merged_array << array2[j]
      j += 1
    end
  end

  if i < array1.length
    merged_array.concat(array1[i..-1])
  end
  
  if j < array2.length
    merged_array.concat(array2[j..-1])
  end

  merged_array
end

p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
# => [1, 2, 3, 4, 6, 8, 9, 11]
