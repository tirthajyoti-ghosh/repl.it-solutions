def merge(left, right)
  merged_array = []
  i = 0
  j = 0

  while i < left.size && j < right.size
    if left[i].split[0].to_i <= right[j].split[0].to_i
      merged_array << left[i]
      i += 1
    else
      merged_array << right[j]
      j += 1
    end
  end

  if i < left.size
    merged_array.concat(left[i..-1])
  end

  if j < right.size
    merged_array.concat(right[j..-1])
  end

  merged_array
end

def merge_sort(array)
  return array if array.size < 2

  mid = array.size / 2

  left = merge_sort(array[0...mid])
  right = merge_sort(array[mid..-1])

  merge(left, right)
end

def full_merge_sort(array)
  merge_sort(array).map { |item| item.split[1] }
end

p full_merge_sort(["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
# => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]
